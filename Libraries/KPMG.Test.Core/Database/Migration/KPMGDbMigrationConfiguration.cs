using KPMG.Test.Core.Constants;
using KPMG.Test.Core.Enums;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace KPMG.Test.Core.Database.Migration
{
    public class KPMGDbMigrationConfiguration : DbMigrationsConfiguration<DbContext>
    {
        const int maxPublishers = 10;
        const int maxEmployers = 500;

        public KPMGDbMigrationConfiguration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(DbContext dbContext)
        {
            Random random = new Random();
            CreatePublishers(dbContext);
            CreateEmployers(dbContext);

            for (int i = 0; i < articles.Count; i++)
            {
                var randomId = random.Next(1, maxPublishers);
                var user = dbContext.Set<User>().Where(it => it.Id == randomId).Single();

                var article = articles[i];

                article.AddedByUserId = user.Id;
                article.Author = user.Name;
                article.IsPublished = random.Next(1, maxPublishers * randomId) % 2 == 0;

                if (article.IsPublished)
                    article.PublishDate = new DateTime(random.Next(2000, 2017), random.Next(1, 12), random.Next(1, 25));

                dbContext.Set<Article>().Add(article);

                dbContext.SaveChanges();

                for (int j = 0; j < maxEmployers; j++)
                {
                    if (random.Next(1, 10000) % 2 == 0 && random.Next(1, 10000) % 2 == 0)
                    {
                        var articleFeedback = new ArticleFeedback();
                        articleFeedback.Article = article;
                        articleFeedback.Comments = Guid.NewGuid().ToString("N");
                        articleFeedback.FeedbackDate = new DateTime(2018, random.Next(1, 8), random.Next(1, 25));
                        articleFeedback.UserId = user.Id;
                        articleFeedback.Status = random.Next(1, 10000) % 2 == 0 ?
                                   random.Next(1, 10000) % 2 == 0 ? ArticleStatus.Like : ArticleStatus.None : ArticleStatus.UnLike;
                        dbContext.Set<ArticleFeedback>().Add(articleFeedback);
                    }
                }
            }
        }

        private static void CreateEmployers(DbContext dbContext)
        {
            for (int i = 1; i <= maxEmployers; i++)
            {
                var user = new User()
                {
                    Name = $"employee_{i}",
                    Email = $"employee_{i}@gmail.com",
                    Password = Guid.NewGuid().ToString("N"),
                    PasswordSalt = Guid.NewGuid().ToString("N"),
                    UserType = UserType.Employer
                };

                dbContext.Set<User>().Add(user);
                dbContext.SaveChanges();
            }
        }

        private static void CreatePublishers(DbContext dbContext)
        {
            for (int i = 1; i <= maxPublishers; i++)
            {
                var user = new User()
                {
                    Name = $"publisher_{i}",
                    Email = $"publisher_{i}@gmail.com",
                    Password = Guid.NewGuid().ToString("N"),
                    PasswordSalt = Guid.NewGuid().ToString("N"),
                    UserType = UserType.Publisher
                };

                dbContext.Set<User>().Add(user);
                dbContext.SaveChanges();
            }
        }

        private IList<Article> articles = new List<Article>() {
            new Article()
            {
                Title = "APIs.json Is An Index For API Operations",
                Body = "<p>As part of the latest wave of work around the APIs.json format We wanted to take some time to help folks better understand exactly what APIs.json is, and what it can do for API providers, consumers, as well as the fast moving API sector. We are working on version 0.16 of the API discovery format, and we wanted to help get the word out about some of the cool stuff that is being done with APIs.json, as well as what is possible in the future.</p> <p>What is APIs.json? APIs.json provides a machine readable approach that API providers can put work in describing their API operations, similar to how web site providers describe their websites using sitemap.xml. Here are the APIs, who are describing their APIs using APIs.json:</p>"
            },
            new Article()
            {
                Title = "Setting rel=api Into Motion With Latest APIs.json Release",
                Body = "<p>Bruno Pedro (@bpedro) who has been building APIs.json into his API Changelog service, made a pull request to the specification recently, pushing forward the link relation conversation for APIs.json. As listed in the specification, we have long intended to make APIs.json an official media type:</p>" +
                "<p>It is intended that if there is sufficient traction, the media type 'application/apis+json' will be   submitted to IANA as per RFC: http://tools.ietf.org/html/rfc4288</p>" +
                "<p>However when it came to expressing your APIs.json as a link relation, we didn't even really have a plan in our road-map, resulting in a very generic allocation of a link relation for APIs.json.</p>"
            },
            new Article()
            {
                Title = "Quantifying A Minimum Viable API Footprint Definition As Real APIs.json Driven Portal",
                Body = "<p>I wrote a post the other day laying out what I'd consider a minimum viable footprint for API operations. My vision of just exactly what an API is, has gone beyond just the technical, ever since I started API Evangelist back in July of 2010. Early on I saw this was more than just about the API endpoints, and documentation, code samples, and many other building blocks were essential to the success (or failure) of any API platform, area, or ecosystem.</p>" +
                "<p>This recent post was an attempt, here in 2015, to quantify what I would consider to be a minimum definition for API operation. After writing it I wanted to take another stab at actually creating a portal, that would stand up to the API rhetoric that I regularly produce. What better place to start, than my own personal master API stack, where I am working to get control over my own infrastructure. Once I got a version 1.0 definition, I forked it, and setup a default API portal that I am calling my demo APIs.json driven portal.</p>" +
                "<p>I'm going to create a minimum viable Internet of Things (IoT) version of this portal as well, and use APIs.json to deploy different interpretations of what constitutes a minimum viable API presence. If you have anything you'd like to see in my base template, let me know. If you want to fork and add to, then submit a pull request, even better. I'm just playing around, but also looking to establish a suite of APIs.json driven tools, that help me(and you), better understand the API space.</p>"
            },
            new Article()
            {
                Title = "A Breakdown Of My Dream APIs.json File",
                Body = "<p>I'm continuing my work, to help people understand what APIs.json is, and the varying ways that it can be put to use. My post the other week, breaking down Fitbits APIs.json file is a good example of where to get started, and as a follow-up I wanted to help further set the bar for what a minimum viable APIs.json looks like, and today, I am going in the other direction--toward my dream APis.json file.</p>" +
                "<p>I have been staying in tune with the API space using RSS feeds, and the Twitter and Github APIs for a couple years. I’m just now developing a deeper understanding of the overall API space through the generation of machine readable API definitions for popular APIs. I can’t do much on the API licensing front beyond launching API Commons, but I am working to define pricing with my api-pricing definition work, and also trying to capture the vital meta-data I need about API operations using api-questions.</p>" +
                "<p>This post ended up being longer than I anticipated, but it is helping me beter understand what some of the next steps are for not just APIs.json, but also my own monitoring of the space. My goal is to not just push forward the APIs.json definition, but push forward my understanding along the way. Who knows maybe I'll drag you along too! ;-)</p>"
            },
            new Article()
            {
                Title = "A Minimum Viable APIs.json File For Your APIs",
                Body = "<p>'m continuing my work to help people understand what APIs.json is, and the varying ways that it can be put to use. My post the other day, breaking down Fitbits APIs.json file is a good example of where to get started, but I wanted to help further set the bar for a minimum viable APIs.json.</p>" +
                "<p>APIs.json starts with a basic set of descriptions of who you are, the API provider. Each header of an APIs.json file gives you a handful of parameters for describing who you are:</p>" +
                "<p>The next essential element of an APIs.json file, is the APIs collection, providing you the ability to describe one or many APIs as part of this collection. Similar to the parameters provided for the header, each API entry is allowed a handful of parameters that describe the API:</p>"
            },
            new Article()
            {
                Title = "Breaking Down The Fitbit APIs.json File",
                Body = "<p>The quantified-self API Fitbit recently added an APIs.json for their domain. Their usage of APIs.json is a perfect, dead-simple, introductory example of how APIs can start putting APIs.json for their API platform. To help other providers understand, I wanted to take a look at the moving parts of Fitbits APIs.json, and to assist the conversation I labeled each part.</p>" +
                "<p>So what now? What does this do for Fitbit?</p>" +
                "<p>It makes the definition of their API portable. It acts like a sitemap.xml for their API program, allowing search engines like APIs.io to index Fitbit along with other APIs. You can also develop embeddable widgets, allowing the API information to be displayed on any site, and using Github and Twitter APis, and the Blog RSS, you could also pull other relevant information for display, and search within the widget, on any website or mobile application.</p>"
            },
            new Article()
            {
                Title = "Using APIs.json For My Microservice Navigation And Discovery",
                Body = "<p>I’m rebuilding my underlying architecture using microservices and docker containers, and the glue I’m using to bind it all together is APIs.json. I’m not just using APIs.son to deliver on discoverability for all of my services, I am also using it to navigate around my stack. Right now I only have about 10 microservices running, but I have a plan to add almost 50 in total by the time I’m done with this latest sprint.</p>" +
                "<p>Each microservice lives as its own Github repository, within a specific organization. I give each one its own APIs.json, indexing all the elements APIs of that specific microservice. APIs.json has two main collections, 'apis' and 'include'. For each microservice APIs.json, I list all the properties for that API, but I use the include element to document the urls of other microservice APIs.json in the collection.</p>" +
                "<p>All the Github repositories for this microservice stack lives within a single Github organization, which I give a 'master' repo, which acts as a single landing page for the entire stack. It has its own APIs.json file, but rather than having any API collections, it just uses includes, referencing the APIs.json for each microservice in the stack.</p>"
            },
            new Article()
            {
                Title = "My Experiences Generating API Server or Client Code Using Swagger",
                Body = "<p>When you start talking about generating server or client side code for APIs, using machine readable API definition formats like Swagger or API Blueprint, many technologists feel compelled to let you know, that at some point you will hit a wall. There is only so far you can go, when using your API definition as guide for generating server-side or clienit-side code, but in my experience you can definitely save some significant time an energy, by auto-generating code using Swagger definitions.</p>" +
                "<p>Using Swagger, I can get myself 90-100% of the way for most of the common portions of the APIs I design. When writing a simple CRUD API like notes, or for links, I can auto-generate the PHP server, and a JS client, and underlying MySQL table structure, which in the end, runs perfectly with no changes.</p>" +
                "<p>Once I needed more custom functionality, and have more unique API calls to make, I then have to get my hands dirty, and begin manually working in the code. However auto-generation of code sure gets me a long way down the road, saving me time doing the really mundane, heavy lifting in creating the skeleton code structures I need to get up an running with any new API.</p>"
            },
            new Article()
            {
                Title = "REST API Design: Bridging What We Have, To The Future, By Organizing The JSON Junk Drawer",
                Body = "<p>API storyteller J(a)son Harmon (@jharmn) has a new YouTube channel up called API Workshop. He's going to be publishing regular API design workshop episodes, with the latest one titled REST API Design: Avoid future proofing with the JSON junk drawer. J(a)son provides a nice overview of how you should be structuring the JSON for your API, focusing on the usage of key / value stores. Ironically he uses APIs.json as an example of why you SHOULD NOT use custom key / values within your JSON. What is ironic about this, is that he makes the case for APIs.json properties, giving me a great starting point for helping folks better understand APIs.json, and why properties are key to its evolution, and flexibility.</p>" +
                "<p>The process J(a)son outlines in the portion of this segment that referred to APIs.json, describes the lifecycle of an APIs.json property, towards becoming more of a 'first class property' There are three phases of an APIs.json property:</p>" +
                "<p>The lesson J(a)son provides, describes the journey of each APIs.json property, the difference is in that his lesson provides best practices for API providers who are designing new APIs, helping them avoid the creation of a junk drawer, and the APIs.json property format is being applied to define the junk drawer that we have (aka the public API space). This represents the fundamental separation between my approach to defining the space vs. many other technologists—I am trying to map out what we have, and get us the next step in our evolution, while others are working hard to define where we should be going.</p>"
            },
            new Article()
            {
                Title = "What Exactly Is APIs.json?",
                Body = "<p>As I travel around talking to folks about APIs, I spend as much time as I can, educating folks about APIs.json. In the course of my evangelism, I’m constantly reminded how little people, who have even heard, and read about APIs.json, really understand about what it actually is. With this in mind, I will be regularly publishing examples of what APis.json is, to help on-board everyone to Steve (@ngynx), and mine vision for APIs.json.</p>" +
                "<p>APIs.json is an open format, in partnership between 3Scale and API Evangelist, to help API providers make their APIs more discoverable, assist API brokers in aggregating multiple APIs deemed valuable within specific industries, and ultimately empowering API consumers in finding exactly the APIs they need to be successful--with a mission to make the process of API discovery as portable as we can, enabling it to live on any website, and be found in open search engines like APIs.io.</p>" +
                "<p>APIs.json is a machine-readable description of your company, and its associated API resources. For each API listed, you give it a name, description, and supporting properties, which may be as simple as providing a link to your documentation, or be as complex as providing a link to a machine readable API definition in the Swagger or API Blueprint format. One APIs.json detail, that I feel many technologists overlook, is that this isn’t just discovery in a hypermedia context, this could only be about the discovery of your pricing orj just the terms of service page (I know, a hypermedia format can descibe this, but I think you are missing an intermediary step to get the space there!)</p>"
            },
        };
    }
}