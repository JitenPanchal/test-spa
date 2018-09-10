using KPMG.Test.Core.Database.Attributes;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KPMG.Test.Core.Database.Migration
{
    [DbMigrationVersion("1.0.0.0")]
    public class DbMigration1000 : DbMigration
    {
        public override void Up()
        {
            Sql(@"
            CREATE TABLE [dbo].[Users](
	            [Id] [int] IDENTITY(1,1) NOT NULL,
	            [Name] [nvarchar](256) NOT NULL,
	            [Email] [nvarchar](256) NOT NULL,
	            [Password] [nvarchar](128) NOT NULL,
	            [PasswordSalt] [nvarchar](128) NOT NULL,
	            [IsLockedOut] [bit] NOT NULL,
	            [LastLoginDate] [datetime] NULL,
	            [LastActivityDate] [datetime] NULL,
	            [Token] [nvarchar](50) NULL,
	            [ExpiresIn] [int] NOT NULL DEFAULT ((0))
             CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
            (
	            [Id] ASC
            )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
            ) ON [PRIMARY]");


            Sql(@"
                CREATE TABLE [dbo].[Articles](
	                [Id] [int] IDENTITY(1,1) NOT NULL,
	                [Title] [nvarchar](255) NOT NULL,
	                [Body] [text] NOT NULL,
	                [Author] [nvarchar](255) NOT NULL,
	                [PublishDate] [datetime] NULL,
	                [AddedByUserId] [int] NOT NULL,
	                [IsPublished] [bit] NOT NULL DEFAULT ((0)),
                 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
                (
	                [Id] ASC
                )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
                ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]");

            Sql(@"
                CREATE TABLE [dbo].[ArticleFeedbacks](
	                [Id] [int] IDENTITY(1,1) NOT NULL,
	                [ArticleId] [int] NOT NULL,
	                [Comments] [nvarchar](max) NULL,
	                [LikeArticle] [bit] NULL,
	                [UserId] [int] NOT NULL,
	                [FeedbackDate] [datetime] NOT NULL,
                 CONSTRAINT [PK_ArticleFeedbacks] PRIMARY KEY CLUSTERED 
                (
	                [Id] ASC
                )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
                ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]");

            //Sql(@"ALTER TABLE [dbo].[ArticleFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_ArticleFeedbacks_Articles] FOREIGN KEY([ArticleId])
            //    REFERENCES [dbo].[Articles] ([Id])");

            //Sql(@"ALTER TABLE [dbo].[ArticleFeedbacks] CHECK CONSTRAINT [FK_ArticleFeedbacks_Articles]");

            //Sql(@"ALTER TABLE [dbo].[ArticleFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_ArticleFeedbacks_Users] FOREIGN KEY([UserId])
            //    REFERENCES [dbo].[Users] ([Id])");

            //Sql(@"ALTER TABLE [dbo].[ArticleFeedbacks] CHECK CONSTRAINT [FK_ArticleFeedbacks_Users]");
            //Sql(@"");
            //Sql(@"");
            //Sql(@"");

        }
    }
}