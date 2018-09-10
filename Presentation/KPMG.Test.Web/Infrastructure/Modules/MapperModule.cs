using Autofac;
using AutoMapper;
using KPMG.Test.Core.Database;
using KPMG.Test.WebApi.Models.Request;
using KPMG.Test.WebApi.Models.Response.Articles;
using System;
using System.Collections.Generic;
using System.Linq;

namespace KPMG.Test.Web.Infrastructure.Modules
{
    public class MapperModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            var assemblies = AppDomain.CurrentDomain.GetAssemblies();

            builder.RegisterAssemblyTypes(assemblies)
                .Where(t => typeof(Profile).IsAssignableFrom(t) && !t.IsAbstract && t.IsPublic)
                .As<Profile>();

            builder.Register(c => new MapperConfiguration(cfg =>
            {
                foreach (var profile in c.Resolve<IEnumerable<Profile>>())
                {
                    cfg.AddProfile(profile);
                }

                cfg.CreateMap<Article, ArticleResponse>();
                cfg.CreateMap<ArticleRequest, Article>();

            })).AsSelf().SingleInstance();

            builder.Register(c => c.Resolve<MapperConfiguration>()
                .CreateMapper(c.Resolve))
                .As<IMapper>()
                .InstancePerLifetimeScope();
        }
    }
}