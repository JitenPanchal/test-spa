create database [KPMGTestDB]
go
use [KPMGTestDB]
go

CREATE TABLE [dbo].[ArticleFeedbacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Status] [tinyint] NOT NULL,
	[UserId] [int] NOT NULL,
	[FeedbackDate] [datetime] NULL,
	[CommentDate] [datetime] NULL,
	[FeedbackCount] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ArticleFeedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
go
CREATE TABLE [dbo].[Articles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Body] [ntext] NOT NULL,
	[Author] [nvarchar](255) NOT NULL,
	[PublishDate] [datetime] NULL,
	[AddedByUserId] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
go
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
	[ExpiresIn] [int] NOT NULL,
	[UserType] [tinyint] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go
SET IDENTITY_INSERT [dbo].[ArticleFeedbacks] ON 
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1, 1, N'2a922d40c8be425b8a7cd8fa253eaf94', 1, 4, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (2, 1, N'176d00b4baaa4f1fbc5fe706298566a6', 1, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (3, 1, N'c1ab9fe560404f7fbd43ae31eacd7a3c', 2, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (4, 1, N'25160a6f38c945898fc2cb2f50d77d6e', 2, 4, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (5, 1, N'6734b412b68b4756a55f19adaa56b999', 2, 4, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (6, 1, N'4102b758a590480abc76bb4602ac7019', 2, 4, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (7, 1, N'68aa680a427d4cbc98c080ce070699ed', 1, 4, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (8, 1, N'343dd69ae6de4ef5acfe7d249ec81dea', 0, 4, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (9, 1, N'a6a5ef2f38594cfbb95ee67f62bc272e', 2, 4, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (10, 1, N'c47e63db78b1402e82cdd57d92533454', 2, 4, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (11, 1, N'd20a1a2ed3bc41c29ec8b282e5e5d483', 2, 4, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (12, 1, N'd27ce3a4dc464e8e9538e00a0cf89b75', 2, 4, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (13, 1, N'120e9dac707e44ff8219ac4ed2172834', 2, 4, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (14, 1, N'0470ba285632406a9562ece5d0300ccc', 2, 4, CAST(N'2018-03-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (15, 1, N'568470dc27694fa0876744e3c70b36c9', 1, 4, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (16, 1, N'c164bfe210464280bc20b8fd0cf17554', 0, 4, CAST(N'2018-05-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (17, 1, N'69204a5fe76d4bb1ae561fb4978bc965', 2, 4, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (18, 1, N'31bd4d601bf74f0e8de8f9cc647e1daa', 2, 4, CAST(N'2018-05-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (19, 1, N'50e9187e112049f0bdfcd83bb11b1119', 0, 4, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (20, 1, N'a2d0ba0d2b4d4748afabf8e01b645ee9', 2, 4, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (21, 1, N'c58e74853e664cd18530f1f54ac87892', 0, 4, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (22, 1, N'c670c681b5a64323a8150033d5fb95fc', 1, 4, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (23, 1, N'3b694dc2ceb4462b8fe354a33e2ffa5e', 0, 4, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (24, 1, N'129868a36f2d4637a550a1dbf51a8089', 0, 4, CAST(N'2018-06-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (25, 1, N'b54138d52b7a4562998903784eeedca2', 1, 4, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (26, 1, N'819e79b8422647238fb8c8917b272d06', 0, 4, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (27, 1, N'd504e7f4b0d54b5fb4ce56fbd119449f', 1, 4, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (28, 1, N'4d4cd4acaea14865965b209a910dad11', 2, 4, CAST(N'2018-03-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (29, 1, N'f55e4df68e224d6e8dfe2c18eac0ae61', 2, 4, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (30, 1, N'c407353614b842d187942724bb849bc6', 2, 4, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (31, 1, N'604cfcf10fd84ab784907966be85e1a9', 2, 4, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (32, 1, N'64c98bf2bebe433fa187e308e6f0bfbd', 2, 4, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (33, 1, N'2688262bf7294ea69b9f565c41565886', 0, 4, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (34, 1, N'1424277902064f1c803939698bb27886', 0, 4, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (35, 1, N'6b5db94ba5304253bc14e967575a5886', 2, 4, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (36, 1, N'22c817bf4dc64c10b1922093ac9af678', 0, 4, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (37, 1, N'19aea55937454692a8b999d84723930f', 1, 4, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (38, 1, N'31082a218e2b400aa14524b8bc0d2a9a', 2, 4, CAST(N'2018-05-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (39, 1, N'78fbe4af1e774d59b65af4d31adc3fc9', 2, 4, CAST(N'2018-03-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (40, 1, N'8d9488b9c18a4be59a32da4c183e27ea', 0, 4, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (41, 1, N'b06792d1ff7a4cac832c3d2790263d17', 0, 4, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (42, 1, N'eb7e083390b44cf28405c382b69de2f0', 0, 4, CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (43, 1, N'948c4dfff2c7438aaebe866b86b5d45f', 0, 4, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (44, 1, N'bcd4f4f974214d14a3a871da204d702d', 1, 4, CAST(N'2018-01-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (45, 1, N'0462770262834b08b23646ec2d8f7b6e', 0, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (46, 1, N'60376c54f89e4fe3a54a71e4729b197e', 2, 4, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (47, 1, N'b42e5e0e18724776af1099538f47b057', 2, 4, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (48, 1, N'de539aed0a944530acbed9f7cb6afea3', 2, 4, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (49, 1, N'8346f3ba21c04dc69d872d594ae09379', 2, 4, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (50, 1, N'9b7be69019714791be1a175fac976537', 2, 4, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (51, 1, N'14793fdbac6543e3aff812b904d16def', 1, 4, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (52, 1, N'7b9d950fb5d244f19caa239dcfbe4c73', 2, 4, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (53, 1, N'2e4b4c93d9ff4ccc9311102ae5fce340', 2, 4, CAST(N'2018-03-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (54, 1, N'27936362501c41d884f8084984ca9307', 1, 4, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (55, 1, N'0cc2b953ffe743c48546d8fdc6f2b154', 2, 4, CAST(N'2018-07-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (56, 1, N'750ec666824240abad3c330abded2f92', 2, 4, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (57, 1, N'812c92523c474d82b4d59a628bc29e9a', 2, 4, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (58, 1, N'1a36f46cf5f648cd870fd0564d0b0ef7', 2, 4, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (59, 1, N'dbead06d3d67492ebbfce1014bdb0c65', 2, 4, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (60, 1, N'656e44affe394058ba932d68a182c871', 0, 4, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (61, 1, N'9b7316769f3a4c7bba9e31af0bf29790', 2, 4, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (62, 1, N'4b6a87a7d26c4d77b23fa3e529d81ea2', 2, 4, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (63, 1, N'3094f3bfcbc04b1497a01fcdd0210ab5', 1, 4, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (64, 1, N'b1a92d2f64134726a3429c9f3fa997e6', 0, 4, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (65, 1, N'ad8748c108284bf7b5511d4159bca724', 2, 4, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (66, 1, N'1efa7e9798c740eca917d92932701507', 2, 4, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (67, 1, N'8031c8537d2641b29f702f32e0a78a0f', 2, 4, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (68, 1, N'09cfd1682e6145eab1c5badc1292c450', 2, 4, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (69, 1, N'195f236f4ecb434c810997a56d4887c0', 2, 4, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (70, 1, N'0269079806d04816a347d10280f74008', 2, 4, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (71, 1, N'c6ad5b9441a84c87be60880992e0efb0', 2, 4, CAST(N'2018-03-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (72, 1, N'825b5d44321943bf9c6f18e73054fde2', 2, 4, CAST(N'2018-01-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (73, 1, N'0b549d93a8e740b999d3c99ecb060c4e', 2, 4, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (74, 1, N'f1427c24a7e34966934b734909eaa010', 2, 4, CAST(N'2018-07-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (75, 1, N'674dd80a09a54fd19258f19785abedd8', 2, 4, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (76, 1, N'1334b1290b6c4a53b7b6bfefd75328cb', 1, 4, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (77, 1, N'fda128b450bb407ebaf8c3e28b835fa9', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (78, 1, N'15637fe0bcc44d2dbeb7861215c6a2bf', 2, 4, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (79, 1, N'be4a5c263a0c4682acf7b3d708208e2b', 2, 4, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (80, 1, N'e7b4beeac9bd4919a009dc2cbc741cc4', 0, 4, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (81, 1, N'2c228614d4034fd89216a0829d8301cc', 0, 4, CAST(N'2018-01-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (82, 1, N'ecff1ac7cb1c4174afb5211601b0a31c', 0, 4, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (83, 1, N'e3ee1991b7dc4edba6b184cf8db12b85', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (84, 1, N'b570850922a743a7af01687c63aa910e', 0, 4, CAST(N'2018-05-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (85, 1, N'cdbc4e6ecdf349af97be7b7d2922759f', 2, 4, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (86, 1, N'13a1104b1b5f415eb00853a266ecc61f', 0, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (87, 1, N'1a0c82562c9b45c0a22bbaf38d0ccb7a', 0, 4, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (88, 1, N'63598ff616e94fda89585c012de256a0', 1, 4, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (89, 1, N'51f81271f4f2413a848dfa23313f154a', 2, 4, CAST(N'2018-04-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (90, 1, N'f1b6ee0b15ed46a985fa00ba3e28f1f7', 2, 4, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (91, 1, N'40b9a3f24f6d45b1818cbe38ccffee53', 2, 4, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (92, 1, N'c7f00ee612c04adcb225e5f442f36eee', 1, 4, CAST(N'2018-01-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (93, 1, N'e61bbb5b3c4f4508abac0f44045983cf', 2, 4, CAST(N'2018-03-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (94, 1, N'87009868ba4c4221a004470e03fbe6c7', 1, 4, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (95, 1, N'793668cd173a4227acd6eaa5916a65b7', 1, 4, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (96, 1, N'36dc6dba5a9c46508c012a2af79cc64a', 1, 4, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (97, 1, N'832836cc6adc40d7a096de384ea8420a', 1, 4, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (98, 1, N'3194f92bac244891a87c1dce84de6cab', 2, 4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (99, 1, N'0d924a4a5f9a4782bee02f9e72cbd3f5', 2, 4, CAST(N'2018-07-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (100, 1, N'00ec4b368b2146499d58a35b557e1dd5', 1, 4, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (101, 1, N'b032ae017d254539bdb5005dd3fcd4ca', 0, 4, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (102, 1, N'b44a55204c3942e3bab808347b8ca873', 0, 4, CAST(N'2018-05-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (103, 1, N'07be1c7baa0441fab7ff5b4c429fcb44', 0, 4, CAST(N'2018-05-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (104, 1, N'7d98b859dd7b4b2fa9c4398c628697fc', 0, 4, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (105, 1, N'5bca778f99dd4a66abc337f45a189bf5', 2, 4, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (106, 1, N'db45123a17c94315b957cf5259095fea', 1, 4, CAST(N'2018-07-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (107, 1, N'60475fa4bd2646e488ac254a027c647f', 2, 4, CAST(N'2018-02-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (108, 1, N'b7ade8ad779640f8a24d9dac07668f93', 1, 4, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (109, 1, N'38366fd35e35406b9ce6650f0d0a2602', 2, 4, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (110, 1, N'd2425debca5848278644d0980616d6e6', 2, 4, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (111, 1, N'27f503ccec9643d7a1b46fec49c7f30e', 2, 4, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (112, 1, N'9c80928bb32c491fb504793c7829e2d8', 2, 4, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (113, 1, N'6ebe69461afc4e059055ba02204340c9', 2, 4, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (114, 1, N'4e866a4c697d46dca254fa46919e3199', 0, 4, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (115, 1, N'0c89adb76ff2459882c2cda74ef0d076', 0, 4, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (116, 1, N'970bf43a104449088479e65fe8bfa674', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (117, 1, N'82c4abf3c8bc4465893166bad3fb6dbc', 1, 4, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (118, 1, N'e9740b3a0e254dea8f43187dbca0e8f7', 0, 4, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (119, 1, N'e71b7af8ece04bc6a4e696e20f5bc5e5', 0, 4, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (120, 1, N'78ab451f4c95493788854340e695550c', 0, 4, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (121, 1, N'45c0bdf75ba941ee98207431e0d8ada6', 1, 4, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (122, 1, N'ee65c0a7e9ed473ebf609e2f44514e2a', 0, 4, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (123, 1, N'7510636e27d24e64af285b557adc5612', 0, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (124, 1, N'20fd91a96eec4c75a35dc30c16217bf6', 0, 4, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (125, 1, N'57b546de67c3419c9b29808d43fcc419', 1, 4, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (126, 1, N'c399c1af952046fe84335b538ce4368b', 2, 4, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (127, 2, N'1f241d2153ac4be3b634baaebe5028e8', 2, 8, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (128, 2, N'a2e1bcca6c5c49dabb1e01baa8b7ea32', 2, 8, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (129, 2, N'61560c69b0e14beb8bc11165e2beb1dc', 0, 8, CAST(N'2018-05-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (130, 2, N'7f238f8e37dd48fdbe0e711f1509ebdb', 2, 8, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (131, 2, N'a73be5043a5548a89344a7e7407879d4', 1, 8, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (132, 2, N'de2258cbc94d4b9f805124f4b7bf1677', 2, 8, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (133, 2, N'ccd9042bb5e9486b9b0836645d9f38ff', 2, 8, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (134, 2, N'c3f0e8e175c74de9bac88c39882ebf10', 0, 8, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (135, 2, N'ab75b45e53204edf8278f5fadc577b0d', 2, 8, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (136, 2, N'0be673b6a3da4c6a87ba06ae7b1c6f05', 0, 8, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (137, 2, N'cfc0c1753a8b4ec181b197c44a20fcf5', 1, 8, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (138, 2, N'5cc625ae6ae148768390110809142a64', 2, 8, CAST(N'2018-05-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (139, 2, N'ad19f96edba745639e4074b001b4f30f', 0, 8, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (140, 2, N'9153026f762e4b35b9a57f4e567a554b', 0, 8, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (141, 2, N'0da1dc3abbd84a1ab557664dd246500b', 2, 8, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (142, 2, N'dc2571e1f427407798a5ba98e3fc0221', 2, 8, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (143, 2, N'cd7d16af7f164c979b42a1222014cd7c', 0, 8, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (144, 2, N'798a3cb7bdf3430aa03f39b6111f7a43', 1, 8, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (145, 2, N'8d978a12f3a74cb8807ff3022b21abc0', 1, 8, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (146, 2, N'e0fe4f0e8a5540d88594ad0551c24829', 0, 8, CAST(N'2018-02-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (147, 2, N'01cebf82e6314fe78622eb135caa9343', 2, 8, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (148, 2, N'918f70597df84b8d8571b9e664acab87', 0, 8, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (149, 2, N'ca23070378b34417b8be4b976de7e19b', 1, 8, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (150, 2, N'1eaf7661993842b495c2c18711ee3baa', 1, 8, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (151, 2, N'e3ea2276648c418fb53f9c13fceaaa03', 0, 8, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (152, 2, N'455770d2b6004e868e4b3cc643eb8957', 2, 8, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (153, 2, N'57b0223f58c14f46a2ad7b16e266a2f5', 2, 8, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (154, 2, N'86613a05ac7c4b62b94c2b93db44bd45', 0, 8, CAST(N'2018-03-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (155, 2, N'0f9af5e97fc54ff992fb55f9857eef59', 2, 8, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (156, 2, N'6cfa0a7906d54bd2b05f0f2baf6da13d', 2, 8, CAST(N'2018-03-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (157, 2, N'8d611317233c44ca94df6fa73eff58de', 0, 8, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (158, 2, N'6833dcbf9b6b4ddfa783bd2cacfc76ed', 0, 8, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (159, 2, N'cb1b34f7b35e4fa38233f5fa630b9f3d', 2, 8, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (160, 2, N'c168cddc865a461a84283ae08e2777a6', 2, 8, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (161, 2, N'835e897f582c4a128f9592d02ba01529', 2, 8, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (162, 2, N'9db9dd58e38f4a95b81caca2de18cbea', 0, 8, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (163, 2, N'67e11ab85f754155b476d2daa00dde18', 2, 8, CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (164, 2, N'95dab67805ff4209bb2cc2c153619d97', 0, 8, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (165, 2, N'c4d022267a524e71a9e25579e452cbf1', 1, 8, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (166, 2, N'33a5d74dba3f4e93be90ea9229c69897', 2, 8, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (167, 2, N'2c4f2557c19f45e2af7578cccae2617b', 2, 8, CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (168, 2, N'016245896bd4453e9983af458bd6a6d1', 2, 8, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (169, 2, N'5e85e16afa0d49799f52a9c6d1676c57', 2, 8, CAST(N'2018-07-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (170, 2, N'10d2f84901c7439aa5d291ea0e35e18c', 1, 8, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (171, 2, N'47fce59384964f88b2d37786708e45bf', 1, 8, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (172, 2, N'8c4be0c7a9d64077ace7b32118b28dcd', 1, 8, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (173, 2, N'0eb0afe0ecd64dd29c0a5aace01912e1', 2, 8, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (174, 2, N'56792c7b88de4745af0b0dca91607f11', 0, 8, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (175, 2, N'004608895d3449399f9d1d4fbf710c82', 0, 8, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (176, 2, N'e45186a7a14845d1a386c7a7a3ef939f', 2, 8, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (177, 2, N'11bb5ebb84c54462b6693567be42663e', 2, 8, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (178, 2, N'3734e904076a4cb5a04d67b9d03639bb', 2, 8, CAST(N'2018-06-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (179, 2, N'e41b7bfd29704df7a25b4d0a9b2d90f2', 2, 8, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (180, 2, N'487d3b0eb3084ec0858e9a9304e17bf1', 2, 8, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (181, 2, N'1989a66707b8499683d42d3ff7106ccc', 2, 8, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (182, 2, N'4b7ad5dffa694fd9ae58c510bd8adc24', 2, 8, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (183, 2, N'fe524295dd5143d2bf1609a124055a3a', 2, 8, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (184, 2, N'4ae7bf9cb3bc47c7883593b2ac532d1c', 0, 8, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (185, 2, N'4320e610c3b048e7b1f087738b90f8d7', 2, 8, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (186, 2, N'4433fcb3abf64944a7d22fd689a69012', 1, 8, CAST(N'2018-02-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (187, 2, N'edcec135cf584f3da40cb84bdef9304a', 0, 8, CAST(N'2018-07-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (188, 2, N'01f583f840894e689138e359023fc277', 1, 8, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (189, 2, N'da0ef624a84b4ac29a9096f004fb1c95', 1, 8, CAST(N'2018-05-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (190, 2, N'39fac049451c45d6adfec027c5ab06e4', 2, 8, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (191, 2, N'7884de52df57420fae1bf4ce70e1b06b', 1, 8, CAST(N'2018-03-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (192, 2, N'cbf1a77356104945a3b700246be6d233', 1, 8, CAST(N'2018-02-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (193, 2, N'0f14aeb93580449ba7331e0bd26dd825', 0, 8, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (194, 2, N'eb22f4bbac8c473fa87e9531b2642ff2', 2, 8, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (195, 2, N'a401fb08736c4a7cad648e7d715c0c42', 1, 8, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (196, 2, N'e715ceba074a4a8f8b5895e7b81779a6', 2, 8, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (197, 2, N'238a5cc5546e4a4488739c252536190a', 2, 8, CAST(N'2018-02-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (198, 2, N'4a8a0fc2d17f434f98c1e72ba43eceec', 2, 8, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (199, 2, N'805224295dbc4595967eec507f1ec0eb', 2, 8, CAST(N'2018-07-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (200, 2, N'3daf231f470d4df9a5d6f356c75f6bb0', 2, 8, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (201, 2, N'484009b2a4544955b20bd322b3b7fb29', 2, 8, CAST(N'2018-01-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (202, 2, N'b9cfb9384c6844099e49000fa57db835', 2, 8, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (203, 2, N'fb21cefe9cff4c5c80303a6a04161a81', 0, 8, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (204, 2, N'3ac02f2eb47446bfb69c2f50e2e38325', 1, 8, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (205, 2, N'072396eddedd4ecfaafe6326cf944f81', 1, 8, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (206, 2, N'9b5de05521084e3a8e132948e0fec5c4', 2, 8, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (207, 2, N'3c4622301efc43f9b9caaaa441fe65ab', 1, 8, CAST(N'2018-03-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (208, 2, N'288c8170198e45858e31d0050c276809', 0, 8, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (209, 2, N'0364d6d25014400fb349a5a920ac468f', 1, 8, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (210, 2, N'3e07cba915804843af2bcbedd185ce6d', 0, 8, CAST(N'2018-01-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (211, 2, N'88bd727d4e04444284352e961e3f39e6', 2, 8, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (212, 2, N'faedff7d6c474d0da2e8aa44595dfa67', 1, 8, CAST(N'2018-04-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (213, 2, N'746e5a0a617149619aff1160aa02c8bd', 2, 8, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (214, 2, N'9d381b918ee54897af97556b272dd2fe', 1, 8, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (215, 2, N'27cd4bf12f924f06a6bcbf3a7c869a55', 0, 8, CAST(N'2018-04-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (216, 2, N'607519c287c745028958d5d400ed2c1a', 1, 8, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (217, 2, N'b328efee9a82444c921ef2d4365c8762', 2, 8, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (218, 2, N'7b3fb5f8fa154aeab4f5774906ffd257', 1, 8, CAST(N'2018-07-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (219, 2, N'13d83ebdf73c4bb9ac67ee32edaf2180', 1, 8, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (220, 2, N'610470a3cbfb45d3bdca5f313c18071b', 2, 8, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (221, 2, N'1deddb71c58b42f1bf941902ec578a9c', 2, 8, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (222, 2, N'e38001a5e3ef44389610a098ef04e947', 1, 8, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (223, 2, N'b8b608ef0c6648bea2fb81bbd362ad00', 2, 8, CAST(N'2018-06-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (224, 2, N'714c5d55d1e944ba9c5871763e0b0a9c', 1, 8, CAST(N'2018-07-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (225, 2, N'1fbd84357b3c4979a08b2bd52a108708', 0, 8, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (226, 2, N'c05c700861c54ac6a7b518f37b776fdc', 2, 8, CAST(N'2018-02-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (227, 2, N'42e64e0c61294152a0cda5680f727cbb', 1, 8, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (228, 2, N'fa52d3a7ad8143a99d1728a1602cdbd3', 0, 8, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (229, 2, N'81108e3f31c4441ca17dde42b297d78b', 1, 8, CAST(N'2018-01-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (230, 2, N'5318df0d4f924ed393f5173e95286a30', 2, 8, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (231, 2, N'8a26a032f07d4fa88742154e6b3e422f', 2, 8, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (232, 2, N'47e3fb212e784aaf996b7b1ca8225afe', 0, 8, CAST(N'2018-04-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (233, 2, N'4f60fbb05b8e452eae4186407ab45e94', 2, 8, CAST(N'2018-02-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (234, 2, N'422589a25a4744d7a5e72f1728324143', 0, 8, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (235, 2, N'619d502c70ec4e4fab4f620bc84824f1', 0, 8, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (236, 2, N'dc38e0db97e448309fe1548dfa2e79d4', 2, 8, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (237, 2, N'bca1b75114064285bc13dd119dfb020f', 2, 8, CAST(N'2018-05-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (238, 2, N'15f0249bcb2445e78d7a24137b6fb7b2', 1, 8, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (239, 2, N'9b8392959a384b48a17082e19f95772c', 1, 8, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (240, 2, N'3067ed115d0a48de9663652a3a4acff8', 2, 8, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (241, 2, N'225f94ab4749430aa0a5a4681f60fad1', 2, 8, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (242, 2, N'7723010767ff41ce987c3a054181a0b0', 0, 8, CAST(N'2018-05-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (243, 2, N'abf70f33704e4899a9a4e43c3bfcef2d', 2, 8, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (244, 2, N'5f8cb1b8795e47a891123ca38afe1fab', 0, 8, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (245, 2, N'bf3eae14fa194c65896daed76087e43a', 0, 8, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (246, 2, N'0286ecf7984c4c8a95545928cab47b7f', 1, 8, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (247, 2, N'8c3ceb0f0d434d49baf41bda4914a839', 2, 8, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (248, 2, N'487f7d8ff627449f9f75daa9533281f7', 2, 8, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (249, 2, N'e161421260534bbfbcb6afc3618cb36a', 2, 8, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (250, 2, N'c097a869845046c588d4de54feb63e07', 2, 8, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (251, 2, N'f5b2d9f8c0aa4b7abcb9d72cee9265ca', 2, 8, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (252, 2, N'1ff1df35375c4a98b00e68010296ab69', 1, 8, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (253, 2, N'a20ad7f5452947f9b76843b392fecc79', 1, 8, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (254, 2, N'cad9edbe152a42ce865d82b439b2f8b2', 2, 8, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (255, 2, N'f7ab1fbea50a41aca60475690185330c', 1, 8, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (256, 2, N'65af52eecbfb44169f775567df1dff34', 2, 8, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (257, 2, N'40a9acda535d45c19ac1c531ad26c780', 1, 8, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (258, 2, N'14bd53abc2c54913ae149d6a1776d8f1', 0, 8, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (259, 2, N'9fe165934d70461e9c4c43c1d9ed95ef', 2, 8, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (260, 2, N'c4672ac20fdf43c2a4d48205489ca7da', 2, 8, CAST(N'2018-05-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (261, 3, N'fb96c9973bbb48fdad43cd270a9b1aee', 2, 5, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (262, 3, N'fe980e76f6c34acc87cddf84982a42af', 1, 5, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (263, 3, N'59e58509aef0492cab31ddf9fc73c94f', 0, 5, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (264, 3, N'34cd38309e024dc691210f16b892699c', 2, 5, CAST(N'2018-04-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (265, 3, N'b348df608321487fa4de44b14ff33bb9', 1, 5, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (266, 3, N'3c912704967f47c4b460eac51c61c8e8', 2, 5, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (267, 3, N'4c9f6941a00644a6a4a41492ee8772f8', 2, 5, CAST(N'2018-05-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (268, 3, N'9702a963be8c43e99f2dbc12b4259b87', 1, 5, CAST(N'2018-03-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (269, 3, N'3d5cab8ed42c41cbac8e9756b58e1499', 2, 5, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (270, 3, N'06b0552df992467d9c9f483630d2ac11', 2, 5, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (271, 3, N'f4bde9b854134267b8a2f1aa9fbc0bf7', 0, 5, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (272, 3, N'd8f0b6b629ba4bd180592fde1aabc653', 2, 5, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (273, 3, N'a16e7f6dd124437c969d400be3280803', 2, 5, CAST(N'2018-03-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (274, 3, N'2994ebcfb89b4049b29daca986299525', 0, 5, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (275, 3, N'16d2ed42519641e990ad65e6fdbd60f5', 2, 5, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (276, 3, N'b0826084e22d4f53b26fc7f94e8c6292', 2, 5, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (277, 3, N'0c135a85173743c8acd102d72b10d71a', 2, 5, CAST(N'2018-04-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (278, 3, N'063118d22dcb4c6e9752c41048e1cefb', 2, 5, CAST(N'2018-02-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (279, 3, N'1c69acfde95648b1a03672e805e03f2a', 2, 5, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (280, 3, N'466d3789a1eb4d3aaa4c5b785f515208', 2, 5, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (281, 3, N'e69986bfbf9c458aa4ea3a5d67ad3c1d', 1, 5, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (282, 3, N'1d11cf2a90144cc9b27ed98d4ab36f9c', 1, 5, CAST(N'2018-05-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (283, 3, N'941fa04468024d65bb274c139ce3984f', 1, 5, CAST(N'2018-02-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (284, 3, N'fac52c03988f4a51ab64e8831cad682b', 2, 5, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (285, 3, N'30667cb037ae4578bc64a31e72b74d18', 2, 5, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (286, 3, N'f03593671adb4716a9aaba1b00c62f4c', 2, 5, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (287, 3, N'47bdbe2700e2460dacf4be03c1e72198', 0, 5, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (288, 3, N'1e2e8ae4e88746c99cfa7a535308cd93', 2, 5, CAST(N'2018-03-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (289, 3, N'cfd62876e9c740ae808028390e91d852', 2, 5, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (290, 3, N'aafe821c456d444090189ab46e5497e3', 1, 5, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (291, 3, N'5fcd4d758e624d8bbff2f91e649acfac', 2, 5, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (292, 3, N'077187eccc8b408daee08952036a32be', 0, 5, CAST(N'2018-07-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (293, 3, N'5ddc37383c864e31b4b78eadce7810e8', 2, 5, CAST(N'2018-03-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (294, 3, N'7956cb8af1354108b096b1e621ac1ec3', 0, 5, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (295, 3, N'7f7f94938162411ea6d56ff055226d52', 2, 5, CAST(N'2018-01-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (296, 3, N'18904f5077084b9f918063b10fd76ea8', 2, 5, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (297, 3, N'54999a29ba3d407e8806b7456fe80d49', 2, 5, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (298, 3, N'3d494adfe14348af837ce2a4b6c84d74', 1, 5, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (299, 3, N'880ddce756d245cc89a370738cbbd798', 2, 5, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (300, 3, N'4eb79e2afa5945a0a6ab5f33f4263b58', 0, 5, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (301, 3, N'bb1f5f3ef51d4697a2ff8e0ec8013693', 1, 5, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (302, 3, N'457c96d21a6b42e7b27fbee500c961a4', 2, 5, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (303, 3, N'd6aa7c82702a4b7db672e0cffd845bb9', 2, 5, CAST(N'2018-02-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (304, 3, N'8d7cae690f4d4a20b8b79bafb5117e26', 1, 5, CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (305, 3, N'7576bc3ec314404cbe25d17d70adac66', 1, 5, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (306, 3, N'18f92183acca48f88caf12cc7edaabbd', 2, 5, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (307, 3, N'2f22327dac6b49818390aae10a8fdea7', 2, 5, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (308, 3, N'c8ba0e64767b4d72bcb584813c2b1040', 2, 5, CAST(N'2018-03-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (309, 3, N'45a50202061d448e94910a4bbb9f2599', 0, 5, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (310, 3, N'9fd917d88ed34fd2884cb2d720c165ae', 1, 5, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (311, 3, N'b90c5302eadc4db481b3c8e594f5b0d6', 0, 5, CAST(N'2018-02-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (312, 3, N'2ba4e58f7c1344da814739b99208420d', 0, 5, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (313, 3, N'3b87e932a98943a2a7419f78bbe11b27', 2, 5, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (314, 3, N'bc52e5c8ac574fe5ba337ffce24c01e7', 2, 5, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (315, 3, N'5ff889ad7d054fd8afbd213e1141f87b', 2, 5, CAST(N'2018-06-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (316, 3, N'8f308796d9dc4dc0bc594a258b0aa00c', 1, 5, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (317, 3, N'af719e2331b342849ed9ba861735346c', 1, 5, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (318, 3, N'0bde87beff3b4f5987e3f7a6d39216c7', 0, 5, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (319, 3, N'ed60767102f04e4d879d26fa8b78b668', 0, 5, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (320, 3, N'1a61a312829a42019c2dced9307e399d', 0, 5, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (321, 3, N'860ebabab6a241be8dc773dbbb89ab91', 0, 5, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (322, 3, N'6d0d6ff7c9f34dcbac1994236c44d5af', 2, 5, CAST(N'2018-05-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (323, 3, N'7b69723d388d426b85b026fe65225b79', 1, 5, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (324, 3, N'b9a1b09e5a4946d6b2bb40db7dd7e85a', 1, 5, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (325, 3, N'7c08d8eff97242a4818b352c20289ddd', 0, 5, CAST(N'2018-01-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (326, 3, N'b442da28e9cc434ea60f027ed49e360f', 1, 5, CAST(N'2018-07-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (327, 3, N'29f5bf7627864b6585b009b4264abdce', 2, 5, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (328, 3, N'9c1e3e83602a45129c2b8764bbaa7a12', 1, 5, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (329, 3, N'15b8614c574045bba3000350d5ff39bc', 2, 5, CAST(N'2018-07-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (330, 3, N'15bfb0cb81bb44d59204615f34b6110c', 2, 5, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (331, 3, N'94c9f432f92845838ccaa65f5d99b228', 0, 5, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (332, 3, N'f86b73f0706d4d4caaa288a780055266', 2, 5, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (333, 3, N'13471ed246f745f1bd5b86ae742c3692', 1, 5, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (334, 3, N'08535ea04a5249ae8463a082f3641eb7', 1, 5, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (335, 3, N'800a66e5f7224f759831a45dcbf9ec99', 1, 5, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (336, 3, N'0b6828f828ed457498a263ac381759ee', 1, 5, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (337, 3, N'c2dad55569844c14bc5504333f360bb4', 1, 5, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (338, 3, N'6051956c6b324c02807a9fa145981bf8', 2, 5, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (339, 3, N'6cfcf1709a2948ec9e8e748f8ca711c2', 1, 5, CAST(N'2018-05-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (340, 3, N'71bf698d956c49f8b6f745e1772e3463', 0, 5, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (341, 3, N'4991a988f14242c9871961093514aa6f', 1, 5, CAST(N'2018-01-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (342, 3, N'15e3991d91a9488f9242bbc31c120000', 2, 5, CAST(N'2018-07-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (343, 3, N'7803e6da8a944a85a650724bb2eae56e', 0, 5, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (344, 3, N'5f04bb00e42340bba38c3891d53f9d00', 2, 5, CAST(N'2018-01-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (345, 3, N'6a7c152636c9438eb6d2306a88e388d2', 2, 5, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (346, 3, N'3f75c99a37a243ea8b75ebef1be09e58', 2, 5, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (347, 3, N'ddbe8147d2614b6ead6293e78f863306', 2, 5, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (348, 3, N'280c7146641243728d0f9041d8c0e187', 2, 5, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (349, 3, N'9c990de3e8cc4636bdfb6c918264585a', 2, 5, CAST(N'2018-02-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (350, 3, N'45f729867c3545529616b767d4e9d222', 0, 5, CAST(N'2018-06-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (351, 3, N'ae6fdc19d68a43049eb7d8fa8a203f01', 2, 5, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (352, 3, N'928d8d24efe347b0ac58e01d5798f51f', 0, 5, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (353, 3, N'd552fc77dbe449f8b25a68454e2f5590', 1, 5, CAST(N'2018-07-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (354, 3, N'343c20b3d1dd4d78aebb58071dd93d97', 2, 5, CAST(N'2018-01-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (355, 3, N'3ad7267b3c984218a97d31de189a8d09', 1, 5, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (356, 3, N'597c9fc5cf544d59ba39c6dc4e50cd3c', 0, 5, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (357, 3, N'cd045732114a4079b2c0f1c87226b435', 0, 5, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (358, 3, N'9da1642ef9cb49629b271a7b5e84f96f', 2, 5, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (359, 3, N'9f56eff390e14de1afde781bb5c6e5e9', 0, 5, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (360, 3, N'3bf8a70c455442028ed663b6a988b270', 0, 5, CAST(N'2018-03-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (361, 3, N'73ce2be3293a4e1bb85c174abe627d7b', 2, 5, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (362, 3, N'67854c2d26674147b8720f7797b8d7e9', 0, 5, CAST(N'2018-01-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (363, 3, N'ba1cb3436b9144fd888c2a30c0eea285', 1, 5, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (364, 3, N'db1408c188ce4b8586b1248d331820e3', 2, 5, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (365, 3, N'1428f92e24cd4cd7a0e3e90d5bbf59f6', 2, 5, CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (366, 3, N'44068f04207b47ddb3433a5a0a64d1cf', 1, 5, CAST(N'2018-07-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (367, 3, N'48f29262eab84842b848ce0650792761', 1, 5, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (368, 3, N'f21bf4da90c84157b2ca55c5ddcfa2ae', 0, 5, CAST(N'2018-06-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (369, 3, N'01444999d1f94dc48f9c8c8f6554f89c', 1, 5, CAST(N'2018-07-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (370, 3, N'0b41b64576ac49d78bf50055eeefe0aa', 1, 5, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (371, 3, N'9e4c5af2d62b4dedb7bc7aa8d5684d34', 2, 5, CAST(N'2018-01-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (372, 3, N'339061b55e764418ac7b3d500805ecee', 2, 5, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (373, 3, N'e65d1d5b4d0b418990dbb03f9f5a319a', 2, 5, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (374, 3, N'ed1babff25924d3ca096efbc2a740fbb', 0, 5, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (375, 3, N'439344d4d8414fec8f81a88266e29b07', 2, 5, CAST(N'2018-02-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (376, 3, N'08920c68a4cb49d19b7a6dc849c3b316', 1, 5, CAST(N'2018-01-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (377, 3, N'bd2df63ab5104795a80ddbec97298002', 0, 5, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (378, 3, N'640086b44fea4238a8bd2e0d8480d21a', 2, 5, CAST(N'2018-01-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (379, 3, N'33c66eeb59594e1ebf3147ddc1a66e96', 0, 5, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (380, 3, N'51226338b62749f795c17aa677669106', 2, 5, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (381, 3, N'8c86f36c2f3447f6aa762ca98761db00', 1, 5, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (382, 3, N'b2f616387d6a451680ecef2ae326e18a', 2, 5, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (383, 3, N'4ac6855ca33740f6b3b30f6db562cc42', 2, 5, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (384, 3, N'98ee6ac8426844a38c341639001ebe98', 1, 5, CAST(N'2018-05-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (385, 3, N'ebb7d3caa22341908c316a08a8155357', 2, 5, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (386, 3, N'2cc42a78064044589a76355b73cfe1b5', 0, 5, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (387, 3, N'2f991b8e072b43a2913fe28cb969072a', 0, 5, CAST(N'2018-06-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (388, 3, N'2f3fc0eef8a5435289dff2f115dad8da', 2, 5, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (389, 3, N'4366f3f9bc904ee78977b9557c685d44', 2, 5, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (390, 3, N'602563ab1933433ea18ac4f8bbc84f58', 2, 5, CAST(N'2018-02-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (391, 3, N'09387f4fd6214f39adb0a9b7638fbdd8', 2, 5, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (392, 3, N'3dfa492edfbf43dfa9c5b49456a3d29b', 2, 5, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (393, 4, N'4df215a69f4c411b8b758e72767499e8', 2, 9, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (394, 4, N'92274d2d214141a1b84040530f86438a', 2, 9, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (395, 4, N'366ed0e2d51a49638bc0a64531c5934a', 2, 9, CAST(N'2018-02-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (396, 4, N'eb3864a946864afd8386db90174f55a5', 2, 9, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (397, 4, N'9a43c6d8415b4bb2bbe252bb3b6209da', 2, 9, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (398, 4, N'7b37fea1bc5847a3a0d4a4e1136d9267', 2, 9, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (399, 4, N'cd3bfe68bc214ca085913050a3c2e056', 2, 9, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (400, 4, N'93ed3db6c4f74b7793e2b17bf68f7456', 2, 9, CAST(N'2018-05-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (401, 4, N'81581da54eeb4b8983abb4a28a4ae7cf', 2, 9, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (402, 4, N'2c05207c959b4e69988b4f1358a61433', 0, 9, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (403, 4, N'fdc99f3fc3524a88be7893ff63c75959', 0, 9, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (404, 4, N'42a44764722e44e5821802aa8222d33e', 1, 9, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (405, 4, N'5d33e9e7276b41f7bfd241db93423760', 2, 9, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (406, 4, N'e6525f9d8d88428993f5a408a7399c2f', 2, 9, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (407, 4, N'f196b8b1f459404e9179fad37b0d1c6a', 1, 9, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (408, 4, N'18d16d8ccf7741cd8c68f2cba0f71c57', 1, 9, CAST(N'2018-03-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (409, 4, N'829681e139fb4055be77609ef2b09f27', 1, 9, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (410, 4, N'4769ef65af7f4570b032b608bb937342', 0, 9, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (411, 4, N'6277b4fca81f427e94e59299853dee2f', 1, 9, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (412, 4, N'a782f4b50837463e9093682069caae88', 2, 9, CAST(N'2018-02-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (413, 4, N'3970fa8ffcf84db7bdbf3fe7f14f7e9c', 2, 9, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (414, 4, N'b4f65d95fdc847f8be6bc956437b65ea', 2, 9, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (415, 4, N'35c8a9a537044f5f9f05682fcc2a2964', 2, 9, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (416, 4, N'89a4288d83084ac38e4df21daf978ee2', 2, 9, CAST(N'2018-03-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (417, 4, N'4a876480a1d341aca4cffc81298c6644', 2, 9, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (418, 4, N'abb2860c3b2a4530afed4b10c226b171', 1, 9, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (419, 4, N'aa0a637c58734e939259f39eefb2009c', 0, 9, CAST(N'2018-03-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (420, 4, N'22f407ed808a4d989c08aa3756e165c2', 0, 9, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (421, 4, N'c13c872fc8dc459ab958751fda5712ba', 2, 9, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (422, 4, N'd34197f88791449d9d442ea57044f075', 2, 9, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (423, 4, N'ba13a6be54114d36bd56bdef34a041f5', 1, 9, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (424, 4, N'004470c26bfb40efba6cb21fabde353c', 0, 9, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (425, 4, N'd70114fb63b8409daa6608f152d75051', 0, 9, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (426, 4, N'83e05b4f5ff845faaa34a276cbf60711', 1, 9, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (427, 4, N'62157c4f29814f8c85744e6ebf7903f3', 0, 9, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (428, 4, N'de997c30aa134e488ff8cc7f4eadb1a5', 2, 9, CAST(N'2018-05-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (429, 4, N'c9b8c11d43da43dc8a63f3d309813ae0', 1, 9, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (430, 4, N'a4c2e7a73f344686b400f9b1c99be031', 1, 9, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (431, 4, N'26e4af8867ad4742b7803ff42b222f9d', 0, 9, CAST(N'2018-01-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (432, 4, N'6f4949ae7c1d4d038cc03b65beb2c242', 1, 9, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (433, 4, N'da52d2170290412097a86a1efa5027bb', 2, 9, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (434, 4, N'338bdc0ecc584a37b2e4239d2be5cddb', 1, 9, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (435, 4, N'9627abac94464d478e231d0144a6df30', 2, 9, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (436, 4, N'a6cb1ed48b8d4524b6b61bb7b3beeb2e', 0, 9, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (437, 4, N'63dd45faf59f415985f5f817c7736b87', 2, 9, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (438, 4, N'1317a5a98ac748d2abf4c8ad0989cc9a', 1, 9, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (439, 4, N'5b621163171d410d8a277bd4881d1e9f', 2, 9, CAST(N'2018-06-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (440, 4, N'fd8b8c671926439eb4650ee5c6e8fb50', 2, 9, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (441, 4, N'34931f6150df48ea9ba8de6a11021325', 0, 9, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (442, 4, N'5513137f9e9e4a35b038814a5c14decc', 1, 9, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (443, 4, N'ae4a83be2471411594563a21a0e557db', 2, 9, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (444, 4, N'8dabb1a1d755497fba10fd518cbf6a06', 1, 9, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (445, 4, N'7a3167c97a8341bc8cec85179197a3fd', 2, 9, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (446, 4, N'cbceec150afa490cb12f3f0c0489f2a5', 1, 9, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (447, 4, N'48734ae8d9464c27a7eac0fa6d6da975', 1, 9, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (448, 4, N'974f8c4835c343bdb75f7ed0da7383b3', 0, 9, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (449, 4, N'1d6f801a159c40ee939023f0602b75e5', 1, 9, CAST(N'2018-07-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (450, 4, N'56b1730cd8dc4d32905e73581d58e4f3', 1, 9, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (451, 4, N'4b383270e2724bd38734a85e76384da2', 0, 9, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (452, 4, N'2d592c455bbc4b4698f48102985a4873', 2, 9, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (453, 4, N'f6305959b6b041b599ea3727630586e3', 0, 9, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (454, 4, N'0f7dda9fa9e9404fb81eb1977a6797e1', 2, 9, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (455, 4, N'b8e04939ba4c471fbb4f1d709ed408fa', 2, 9, CAST(N'2018-06-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (456, 4, N'34d98c1e21e74bec9ecd3a7830f15484', 2, 9, CAST(N'2018-06-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (457, 4, N'1bd45e165ca948c39d7ce59920ddd879', 0, 9, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (458, 4, N'a14b83ad425947cdbf21ae0ac952d939', 2, 9, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (459, 4, N'd564af61a508465ea57cff474666b6a2', 1, 9, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (460, 4, N'8003ee291a5e4c818dc0b706d945b905', 1, 9, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (461, 4, N'09cb151407294a9ba5f98cc339b63a4c', 0, 9, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (462, 4, N'47ffc929c225445bbb0adbdb1be995e2', 2, 9, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (463, 4, N'1a649add602e4cbdb758aafe74a09522', 1, 9, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (464, 4, N'8bdcd505edaa418a8485602aae5e152f', 1, 9, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (465, 4, N'455eee60e7a84b37b6485ce67653d2d6', 2, 9, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (466, 4, N'4105ad73c9bb47f8a8acacbb4fd2916d', 0, 9, CAST(N'2018-05-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (467, 4, N'dd39d806510849d6807d0c91aac9e775', 2, 9, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (468, 4, N'8620a0d5dd51465bbb3f5074f22266e0', 1, 9, CAST(N'2018-07-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (469, 4, N'c3902c86b62f4606a07cea5c625449a7', 2, 9, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (470, 4, N'9f126a0ab79840c7a8f6b4e84766bfa0', 1, 9, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (471, 4, N'a7101e08bfae4def89545280926f72aa', 2, 9, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (472, 4, N'98b79d0ae21c45419d3a7998873c9b82', 0, 9, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (473, 4, N'76734be2fc204a7caaf5da0f0eb464b9', 2, 9, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (474, 4, N'b8e6e607b51d45e5b23b3e927a246db0', 1, 9, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (475, 4, N'aa42be5ed97e4cc787d8994cde707a6d', 2, 9, CAST(N'2018-02-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (476, 4, N'b0ce4e157bdb49b993fdc0a37513c3e4', 1, 9, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (477, 4, N'34d93c24e5e94324b191741dd07e70d0', 2, 9, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (478, 4, N'1754f7f5e1c14aa19ee4939dc0ffff5a', 0, 9, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (479, 4, N'0712a47b374543c5bbf2cc3011d20c7d', 1, 9, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (480, 4, N'29329a42f6a3495dad958b930cef3762', 2, 9, CAST(N'2018-06-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (481, 4, N'f5ae5570450642a397f804c265351dca', 2, 9, CAST(N'2018-04-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (482, 4, N'4bc313743b6d46a48bf5f4d3e3fd19f5', 2, 9, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (483, 4, N'01013fad22b543d7baf4abad7b9af882', 1, 9, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (484, 4, N'afa0e39804fe400db9abaf30711cae7b', 2, 9, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (485, 4, N'a0e7db7ecf754b46ad86faee0d5bcfa0', 1, 9, CAST(N'2018-01-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (486, 4, N'ffb6eba15dc3404eb7399b4cf0284952', 0, 9, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (487, 4, N'fd82bb5e7956474eaab51e499507aada', 2, 9, CAST(N'2018-01-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (488, 4, N'a4717a7f6661436b88c1b35f4fc8eff7', 1, 9, CAST(N'2018-01-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (489, 4, N'3b85fd50e58f43f691fb4810e6c3b4a9', 2, 9, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (490, 4, N'9183cd3054024eaeb88fba4d13120c47', 0, 9, CAST(N'2018-03-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (491, 4, N'068bed04bdb34f94a9bb5246a2987793', 2, 9, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (492, 4, N'5fa0c53f29c04de986d7d9c008a738c4', 2, 9, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (493, 4, N'0f3a606eaf5a499089b05c1abbba285a', 2, 9, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (494, 4, N'd353fff955d5479a95a319e792cc3e9b', 1, 9, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (495, 4, N'ecefdb3380a44260b77d91e265c470d9', 1, 9, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (496, 4, N'cea8ccdb83314417a85b2174ebed981a', 0, 9, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (497, 4, N'4bcd900024a94bf8a03734aee540d220', 0, 9, CAST(N'2018-06-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (498, 4, N'9c80534ff64149fb8e822b0258573c0b', 2, 9, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (499, 4, N'47c511cac3de4209b4538c8bde00d600', 0, 9, CAST(N'2018-06-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (500, 4, N'8f3849acc3ef4734b2b730f918141b48', 2, 9, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (501, 4, N'cbf326592b9a46e485c53672940c62a5', 0, 9, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (502, 4, N'2dbc4dda5ca24a12bb1fa27218be6f71', 0, 9, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (503, 4, N'5221364f6e244b378d07122b97a6d6d9', 0, 9, CAST(N'2018-03-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (504, 4, N'5926ef11f30d43afa5e64bd6566a6c57', 1, 9, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (505, 4, N'8e27b8926acc43398673309a7d53dd01', 2, 9, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (506, 4, N'95c7674bd9d04de7b0e2cc72770af3e6', 0, 9, CAST(N'2018-04-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (507, 4, N'a02c91828b154b07b284a601616c8d3a', 2, 9, CAST(N'2018-01-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (508, 4, N'b08eb164f0df4a6aaae5954a829e4c03', 0, 9, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (509, 4, N'711d935cefe24e07b4d6deafea716ba7', 2, 9, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (510, 4, N'7cf26597e29949328df36a3254390e13', 2, 9, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (511, 4, N'c6250bf713db4847bd818fd73c2e1b02', 1, 9, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (512, 4, N'3dd58ddd1a8046c6925195dc481d0791', 0, 9, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (513, 4, N'56752fdc98b049c7a6294b39a13150fa', 2, 9, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (514, 4, N'7366b2fb58c14896a5b54cde3a7b70cb', 0, 9, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (515, 4, N'73e7f61689cd43e7a6a010de9ba75628', 1, 9, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (516, 5, N'bb56abeb0b0b47d793863b25944c4c6d', 2, 4, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (517, 5, N'a5204acca24547e9942d425b53b676ea', 1, 4, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (518, 5, N'0d0b8c2d573b4f33b46710558ffb9027', 2, 4, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (519, 5, N'61a911f974624d8eb5d1ff021d12bf6f', 2, 4, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (520, 5, N'c5cf90d9b0ba48c78da8e206b134e5a4', 2, 4, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (521, 5, N'a10b427bd12d4344a8cba27e5fd5e3a7', 2, 4, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (522, 5, N'55ad36bb787e48929158afdb447475ac', 2, 4, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (523, 5, N'bf5224583fd8494ba03c78d8070de2b2', 2, 4, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (524, 5, N'7483dfab6cf04aae9bb2655a859e1a39', 0, 4, CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (525, 5, N'c5f6c9a2a6354ff781ec632c198719ee', 0, 4, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (526, 5, N'd8458d1555f643ff969841004e537c13', 2, 4, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (527, 5, N'674b453407e34a74a07cb3da7b56f8cb', 2, 4, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (528, 5, N'6b73472b267d497b93a191733b031b98', 2, 4, CAST(N'2018-06-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (529, 5, N'cfe8f3cfbd7e4c699c9f2ae610e1c0e3', 1, 4, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (530, 5, N'c55b22d696a74cd095404356480c613f', 2, 4, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (531, 5, N'ad72e3140636416589df2e3f2d7c6ad5', 2, 4, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (532, 5, N'12ae0520aee145daacd71c0b893f7ac0', 0, 4, CAST(N'2018-01-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (533, 5, N'ebb6d148f10c4dd89ca0db501922d65f', 2, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (534, 5, N'105e8c1d06a8414793f9d1ffca4b5441', 1, 4, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (535, 5, N'f81768063af84fcead2807e3c1680f21', 2, 4, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (536, 5, N'aa7d2633a80342828ea274b6f30aa5d9', 2, 4, CAST(N'2018-02-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (537, 5, N'ee2331e8729a4199ba167d868eb9719f', 2, 4, CAST(N'2018-06-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (538, 5, N'62d6ef066645414aa111a8c609f1388d', 2, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (539, 5, N'31806c5b3cf14e7fbf9e660a76a01782', 0, 4, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (540, 5, N'db554fcc9727432c811f76f9c6919011', 2, 4, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (541, 5, N'8b12fc4536f043418ba47677ad362a01', 0, 4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (542, 5, N'a76f735f78904007a7127ddace03942a', 2, 4, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (543, 5, N'976474329a744b0fa7598a47fd6e6e9c', 1, 4, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (544, 5, N'111025fa02a347ed98de46d304532183', 0, 4, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (545, 5, N'a3bd44afd5b141898109a18ff0022848', 2, 4, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (546, 5, N'558e2d69ece64248ac0659ebcfbf8a94', 2, 4, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (547, 5, N'123b40e7691d4acb895f66de06d4a1e2', 1, 4, CAST(N'2018-07-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (548, 5, N'f5eb78127cd14629b50a54f66b0fedf9', 0, 4, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (549, 5, N'dc339909b8604ee0a97db961ec44e491', 0, 4, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (550, 5, N'f0a75c0c58804bcd8523611566a3616c', 2, 4, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (551, 5, N'67bc2b2e8ca54ff98dc14a45f0df675b', 2, 4, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (552, 5, N'c71cd73ecc304929914d228c1641dac9', 2, 4, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (553, 5, N'37377d761ba14b668f38f1a44e59b3f0', 0, 4, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (554, 5, N'5120d2b1ee8b4c37a285f230ab4c761c', 2, 4, CAST(N'2018-07-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (555, 5, N'6819ef794a064c1c9ce77b6765d67fb3', 1, 4, CAST(N'2018-07-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (556, 5, N'5907cdfc42ab47ad8fcb0371e8f13500', 1, 4, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (557, 5, N'd843d369e99e41d8b604ed8dedc5c846', 2, 4, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (558, 5, N'c9e1fdee2d704127897e9f45555647f7', 2, 4, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (559, 5, N'64c4eb6523e34a2189597a9f874bd581', 2, 4, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (560, 5, N'651fdc095c89402d816222f193602f7b', 0, 4, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (561, 5, N'39b68e6e634f469f8eed03f1216ee8ad', 2, 4, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (562, 5, N'b7ed24b77f1d419b951a4f8039e3788c', 0, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (563, 5, N'bf3314951b3740a7a17907463b745874', 2, 4, CAST(N'2018-05-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (564, 5, N'a8359040fccd489ea30534b6594a25d9', 1, 4, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (565, 5, N'46de72c993de4b1192d9c00affdcad1d', 0, 4, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (566, 5, N'1c17c8cdc9b148aa8e8da40daee61f0c', 0, 4, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (567, 5, N'800cac6a75d3488e83665d5982319c72', 2, 4, CAST(N'2018-05-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (568, 5, N'36000db80c5b40bf92131f5bb8e792fe', 1, 4, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (569, 5, N'd4c55a5f10c644ae9a85e612e5e242b5', 2, 4, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (570, 5, N'99ec65e60de44be89ec74ad8f56ccdc2', 2, 4, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (571, 5, N'f66f692513844a26995891b2acf030c3', 1, 4, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (572, 5, N'77bbdd96b8a54fe7b63c3c72a001f68c', 0, 4, CAST(N'2018-06-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (573, 5, N'623e53947832462dab0092983d76ca9b', 1, 4, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (574, 5, N'0d55bf73a411489e894b39e72c7b9db0', 2, 4, CAST(N'2018-03-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (575, 5, N'009f5ebe1cdd4de592f2ebd3e69e0cfc', 2, 4, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (576, 5, N'8952040ea48149258faf42f31414425c', 0, 4, CAST(N'2018-06-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (577, 5, N'ed89bac3c8c3416cb0d2e3f1f94c036f', 2, 4, CAST(N'2018-04-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (578, 5, N'4c5409010b2f46db8083609fc1eda179', 1, 4, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (579, 5, N'c38568d980064b398a60d7cb6af4cc95', 2, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (580, 5, N'a8334e59ad51469784137828faaabf82', 2, 4, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (581, 5, N'beab9551faf24226bae67f0f1c8a1296', 0, 4, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (582, 5, N'0a598dd583a44feaaa603fd5dfcffa77', 1, 4, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (583, 5, N'2cf5ade06ba0453fa07560f6cd1d3941', 2, 4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (584, 5, N'b526b0e0d6ea4364bbee75bf56e15c0d', 2, 4, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (585, 5, N'1396c10dfeb24f73bb658616c5d7da87', 1, 4, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (586, 5, N'bc95e9ea87c949d19b51ec932ef006d4', 0, 4, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (587, 5, N'502c54d6b2a9453f83bd9c0559f96ff6', 2, 4, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (588, 5, N'f1702f95ebf9450e872a173cd7cc3fad', 0, 4, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (589, 5, N'e462c7af9d4a4fb8b14bb4245f2ccb7f', 1, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (590, 5, N'548f08af7a5a462a9747e6ce1b7a0928', 2, 4, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (591, 5, N'336d45226693411d985dbe656f5fb4b9', 2, 4, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (592, 5, N'3050ea2b5ff04997865de1ed57fc44cb', 1, 4, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (593, 5, N'a42d264485a448288b48b2b5d8be5f87', 0, 4, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (594, 5, N'a4aa43444b164ad680318061a5a0a055', 2, 4, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (595, 5, N'3e3cfeaa1cc942359d20f7b5b44e8792', 2, 4, CAST(N'2018-01-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (596, 5, N'3ea9c202e0c648d280988ff34cd8b61f', 2, 4, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (597, 5, N'1d64c794bf624448a235620fc9a3570d', 2, 4, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (598, 5, N'e513490008c14c9097f51db6b35ca42b', 2, 4, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (599, 5, N'9c04eaf346e44870928b830a19d48dc0', 0, 4, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (600, 5, N'3d9ce10b448942d3afbfdb7963bf60de', 1, 4, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (601, 5, N'ff309fe11ca94b2f8c4de8cfe874bdbc', 1, 4, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (602, 5, N'17768b1c39d64298b71ce35ab575eee4', 2, 4, CAST(N'2018-01-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (603, 5, N'ed4c75d82ccb44568e785fdb417ea496', 0, 4, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (604, 5, N'0498acf838cb474abf26910f41f7bb58', 2, 4, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (605, 5, N'8b3e11b21e424a6b9b3b9ed5292ffe73', 0, 4, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (606, 5, N'2dbf305e614f48a4a32ff0131a1fb54f', 1, 4, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (607, 5, N'1dd35cc455fc4e9689797986e0f27b88', 2, 4, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (608, 5, N'a44da1f7fa3d4c669f76992b419d79da', 0, 4, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (609, 5, N'22c4e9c3b15a43ac9446d2e68419c62c', 1, 4, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (610, 5, N'9858af0168554369b947acde175dcf4a', 1, 4, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (611, 5, N'642d7fd2ba544e17b5bf599f6ab2bb80', 2, 4, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (612, 5, N'01cebecf5323408dbe9fd486bbb9400b', 2, 4, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (613, 5, N'7483e0dc15984ed6a7b4072b7afa02cf', 2, 4, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (614, 5, N'd82115a286e44f1ea924bf329253440d', 2, 4, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (615, 5, N'6e8208996ced4d2381b0ddaa30abd4bf', 0, 4, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (616, 5, N'33678e07cbdf435a8ff6d5d63dc4ec31', 0, 4, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (617, 5, N'5043f543717840b481eeee5d2d68efda', 2, 4, CAST(N'2018-03-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (618, 5, N'18a5bd05a41b46b3af741eea11e2eaf6', 0, 4, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (619, 5, N'4eef34780749437392522c0441ade409', 2, 4, CAST(N'2018-03-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (620, 5, N'b45a6d77f052410ca8cf1ab3784a265c', 2, 4, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (621, 5, N'9ff5cdddeda744a0848beac76b02f060', 2, 4, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (622, 5, N'd6f22003482e4c60b8dd28b26d16ec38', 0, 4, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (623, 5, N'952156cb8a1f4230aa77ef2b139d5511', 2, 4, CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (624, 5, N'119a8aa17fba4526afefe64f71df4d6b', 2, 4, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (625, 5, N'0acabb4e56764454a4578ba85ff3836d', 0, 4, CAST(N'2018-07-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (626, 5, N'e941194ebfd74eaab5f74ad48fb07ed3', 2, 4, CAST(N'2018-01-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (627, 5, N'b90f941a8f444f66b267dde46fcb79ae', 2, 4, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (628, 5, N'9593470b1176440485a2d2fa12ed6d55', 2, 4, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (629, 5, N'7bc4d2afb9a548c3b6f389c6cd27f116', 1, 4, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (630, 5, N'e896291b7a5d46478cb9cf63803ca163', 2, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (631, 5, N'8f269a2986ec46d8b87c732cf72b15f6', 0, 4, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (632, 5, N'03874fbeab4a478fbf2a535fffc0c44d', 1, 4, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (633, 5, N'18c807d472254d49a77758d2d398e02e', 2, 4, CAST(N'2018-07-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (634, 5, N'd349fc90c7f6435ead02130d0b0eb902', 1, 4, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (635, 5, N'11ef68efccec4fada9c98c6b233ec790', 0, 4, CAST(N'2018-03-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (636, 6, N'39a8c65b2930483aaf4ee85ac9eb9eda', 2, 4, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (637, 6, N'18bd36be5c8f4b40a5a7888d650374d5', 2, 4, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (638, 6, N'318aabd0cf644a129b41adf92b703414', 2, 4, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (639, 6, N'2362db53f4114e79817948fa75e38188', 1, 4, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (640, 6, N'b9dd707a2f54486faabeaebb1a0d6bdc', 0, 4, CAST(N'2018-07-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (641, 6, N'692ddf39357a49cfa3de4ebc19e1faa4', 2, 4, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (642, 6, N'2bbd1815204c46c5986601dc1d7fc045', 2, 4, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (643, 6, N'd30111c7b1a243569c9c5244cfbd91bd', 1, 4, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (644, 6, N'11bc7c7900414cfb8f613aa5aff4e126', 2, 4, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (645, 6, N'3744e48ced5340198b6b808950f2bf76', 1, 4, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (646, 6, N'a41b0780056947ef89aeaa683de1ed4a', 2, 4, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (647, 6, N'a89d08e647c4455f9ac1cafb55bd8d71', 2, 4, CAST(N'2018-01-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (648, 6, N'8baf6aa1b520405da490fbca9f04b9c9', 1, 4, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (649, 6, N'a94e4007cca04b9eb0b8eea91d9b5f1f', 1, 4, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (650, 6, N'e86fba0f21794fb9a049685b82e3924a', 2, 4, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (651, 6, N'17f49049c04947acb77c8b5f6a02a945', 0, 4, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (652, 6, N'e7100ed6b0154129b79a66026e1a2d22', 2, 4, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (653, 6, N'321b63cfd530452499938605f1b2a068', 2, 4, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (654, 6, N'55e48e2a5eb44d2cb6b354b837a59a53', 1, 4, CAST(N'2018-05-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (655, 6, N'2d7b588222b14920a290ec8214a28e95', 2, 4, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (656, 6, N'a77638417f0b442caf0f1b0b18f255db', 1, 4, CAST(N'2018-04-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (657, 6, N'7748f33e0e1f4587a819657f899dfecf', 0, 4, CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (658, 6, N'c699bf7105d94da9ade114ad5d30619d', 2, 4, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (659, 6, N'5eddcfbf3ba44fdfb6bfe517f87decc7', 2, 4, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (660, 6, N'6db6c116285440e7b01827c1e52ffe14', 2, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (661, 6, N'e5062706a6f545feb32dec0130e67fb2', 0, 4, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (662, 6, N'1cf97593cc0d44faad76a27baa8c1587', 1, 4, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (663, 6, N'32b9e6b703be4d6282405e109575148f', 1, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (664, 6, N'157832e903794fb9a14b6ade87bd08b2', 2, 4, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (665, 6, N'62fd4971333b4eee96408c6f6170caff', 2, 4, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (666, 6, N'149b88c22b494c4f82fba66cb088826f', 0, 4, CAST(N'2018-03-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (667, 6, N'b7e46c1fcd1348e8bb475121394ef058', 2, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (668, 6, N'18388dda8cbc4026a3cbdcb65d81dd5a', 2, 4, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (669, 6, N'c95e3a623f6749368d91bed6bfface0c', 2, 4, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (670, 6, N'7e2b049c7e294df4b042dbca7e53d17d', 2, 4, CAST(N'2018-07-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (671, 6, N'84cc8c7f866b4375b7a8c76b761d61ce', 2, 4, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (672, 6, N'c4d2c239642b4465b0ade61511905379', 1, 4, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (673, 6, N'96d5fff1474d444098c190dec7ffea1a', 1, 4, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (674, 6, N'f245947fd02d4eacbcf211ea8fff9487', 2, 4, CAST(N'2018-06-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (675, 6, N'a079c13471034c5a8ea6aae718ab139c', 0, 4, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (676, 6, N'7de97f788f14445aa5b78980376dbdf5', 0, 4, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (677, 6, N'4f2bdfcf8f644000a094e8d2f37e5f60', 2, 4, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (678, 6, N'18b4128a12144ff589c721e4d9f11a4b', 1, 4, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (679, 6, N'2940dce97ea149ffa58eacba1ae4b539', 2, 4, CAST(N'2018-01-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (680, 6, N'07ea8802682f43319e75141e6fb3a6b3', 2, 4, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (681, 6, N'0423d86857a34421818135e6472db04b', 2, 4, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (682, 6, N'1796aad2a10a4b8196f33929a015703c', 1, 4, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (683, 6, N'dc46e528fcbd4170aa4fcfb4cfe5902a', 2, 4, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (684, 6, N'a46b45cc2de140a8bb41b88d39eb79a6', 0, 4, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (685, 6, N'e268b7efa1f649849aa14a733d51c757', 0, 4, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (686, 6, N'3544273ceb2d4d018181a32948d9d1c0', 0, 4, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (687, 6, N'974f0d8d0a79441d98475278a37c8240', 2, 4, CAST(N'2018-06-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (688, 6, N'fe2898ac7f1f45419945b30c8c15ac7f', 2, 4, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (689, 6, N'955557a9f1fc40ac9f07589ad48f15d7', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (690, 6, N'8be1b7b50d6c4d90825ac352ef809ba2', 2, 4, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (691, 6, N'89bf6a407e844a35a8a8ddef68c54741', 2, 4, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (692, 6, N'30ee3fc7b66741bc9f5c9ca63eee34c0', 2, 4, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (693, 6, N'c05a355e87b14d6498b60452c9351796', 2, 4, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (694, 6, N'dd6f6efbf02346d8be62e1d56ab5b60d', 0, 4, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (695, 6, N'8bc5d3e102bd4290a89959c411c77a2b', 0, 4, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (696, 6, N'd36038b160c1495a96888b1e167a4647', 2, 4, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (697, 6, N'3bd914d6616e46b6af43b67f04ac59bb', 2, 4, CAST(N'2018-04-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (698, 6, N'bf7dc6909add477fa17ceb56a5cce19e', 2, 4, CAST(N'2018-06-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (699, 6, N'b93fd18c83dd45a3b84797059764d178', 0, 4, CAST(N'2018-01-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (700, 6, N'5c075518e70b4f449bece7a539de403f', 0, 4, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (701, 6, N'53bf9d9407654a22b14a6396178e5b2f', 1, 4, CAST(N'2018-05-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (702, 6, N'e90c1ca8ac7a40088c6749add6b50f37', 1, 4, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (703, 6, N'70e78405c7ed499bb5d56473ce0adfeb', 2, 4, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (704, 6, N'21d2826b51cc495480d55c3600170a68', 1, 4, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (705, 6, N'5251a6b20b3a4eaba9b9007f4a5b9ae7', 2, 4, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (706, 6, N'0baa9ae3d9c2489ab71cd1e383d4776a', 1, 4, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (707, 6, N'7417baa111314b638fff6b3a7443f910', 2, 4, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (708, 6, N'9b39e9c2c8f9405bb64af432f700a32c', 1, 4, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (709, 6, N'd09a6a6d9ab3419a8b868cf5411f09da', 2, 4, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (710, 6, N'1e811d43cf03496aada397c74b21d873', 2, 4, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (711, 6, N'ac54348f97534eb88f958b8b9ef20689', 2, 4, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (712, 6, N'85f76e90b2564901b6462e8f031bc87c', 2, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (713, 6, N'9f9effc401c947b89fa20dc40d15a666', 0, 4, CAST(N'2018-05-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (714, 6, N'3d0eeaab18474896a3f49df014158ca8', 1, 4, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (715, 6, N'df2ec84293ba41959cf8ad216d115359', 1, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (716, 6, N'af6b5eccef4944a5b0de48db1b0285d1', 0, 4, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (717, 6, N'8bf8d0d6939449359e1628b39588a3a9', 1, 4, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (718, 6, N'b395c0dad40b4a47be12aad86ca57051', 1, 4, CAST(N'2018-03-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (719, 6, N'c9f95b25589a4001b5ad3281c31966a6', 2, 4, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (720, 6, N'fa55d67b58ad443587502063958ce8d5', 0, 4, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (721, 6, N'b28688662f034ef3b9a089e58e2867fb', 1, 4, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (722, 6, N'2fc3e6f72cf8411183cc521d52d6756b', 2, 4, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (723, 6, N'88cb7d995fb747d88fb38b898db725d9', 2, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (724, 6, N'900b6498da2f4f96b794c8d5bc5d8729', 1, 4, CAST(N'2018-07-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (725, 6, N'42f4bbdd10cc4c039cfb95569bef01c7', 1, 4, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (726, 6, N'f26f408e29d7446f85aad08417c4dce6', 1, 4, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (727, 6, N'd853f4c9e7764f88ba3aca676840035c', 1, 4, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (728, 6, N'5ba7e61a98734de1b1a79283e930e70f', 2, 4, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (729, 6, N'0e3680d727c34441b70aea096d859e50', 2, 4, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (730, 6, N'e781ba5ec6554a66b0c04da75d51513c', 2, 4, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (731, 6, N'dedc3902f9614971abfeb0391a86e889', 0, 4, CAST(N'2018-03-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (732, 6, N'baa57c7d83144725af1982192340b276', 2, 4, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (733, 6, N'6ba8a406f8074c24b8e94d6de9127bb5', 0, 4, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (734, 6, N'9b6c7afd66d34436a208791a503a370a', 1, 4, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (735, 6, N'625b9d73aad343daa1354296ddd2652e', 0, 4, CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (736, 6, N'a381881b7c454d54ad49f8a37b373eed', 2, 4, CAST(N'2018-06-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (737, 6, N'b62fdd63107045418e3239d470ebdf3b', 2, 4, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (738, 6, N'722f0bcda23b4854bc3ce01eae64d303', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (739, 6, N'0d917925392e4619ab70b2a655b5b352', 2, 4, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (740, 6, N'21f9c3803a4c4f92aa8f5cbe68214f4a', 2, 4, CAST(N'2018-07-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (741, 6, N'9eade0c38123478ca087dbdddeb29d21', 1, 4, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (742, 6, N'9c04adc7ac13436cb31a3751f3a638b1', 2, 4, CAST(N'2018-05-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (743, 6, N'55a821a4105f43f0a06fe6e802f7a7da', 1, 4, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (744, 6, N'1e5fb133187e4b72954f66fa65380e28', 0, 4, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (745, 6, N'b31ffaa3f0e94b58a228d472a79122e1', 2, 4, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (746, 6, N'ec8797be039a44d4bac4d7a5eb48455e', 2, 4, CAST(N'2018-06-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (747, 6, N'52c8f34a5788425f9f65366fbfd68c90', 1, 4, CAST(N'2018-02-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (748, 6, N'ca6d2c267c7d42b59922a7fedd958723', 2, 4, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (749, 6, N'64b3e432600d4b24a7ad55b449196f91', 1, 4, CAST(N'2018-05-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (750, 6, N'12e9fb90d6ea484db4f9635d41290305', 0, 4, CAST(N'2018-01-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (751, 6, N'3a0afb6853fc47dba385686096ff8133', 1, 4, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (752, 6, N'a374ea5e39c548c192c165a0c5f8f3f2', 2, 4, CAST(N'2018-01-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (753, 6, N'11766b6c175f463b9c729dd7733db1a0', 0, 4, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (754, 6, N'ff023467c08f442caeb2be86547403bd', 0, 4, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (755, 6, N'620653bcfca342a984a0603fab871120', 1, 4, CAST(N'2018-01-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (756, 6, N'aeb145579d0f4298ba70df003682d3bf', 2, 4, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (757, 6, N'd8377993c4a24e7190ae80433d59b3f0', 0, 4, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (758, 6, N'acad0f46d8cb4df59e7c058f7ec09734', 1, 4, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (759, 6, N'47f39a7abc2c430caceb6c3335039dbe', 1, 4, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (760, 6, N'c30caebe5c854394931f8d5d6e4e4196', 2, 4, CAST(N'2018-05-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (761, 6, N'a64e90e4f2064f9b9af6eb57df7c3810', 2, 4, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (762, 6, N'6364ec0c65054681bfb89a72665fe3f9', 1, 4, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (763, 6, N'48c19ed08fd144c4b8919020a84754f7', 0, 4, CAST(N'2018-07-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (764, 6, N'204c11c581074c3888a26207a46b25eb', 2, 4, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (765, 6, N'ac216249e81d4f91a9fed91c8dc8b4d1', 0, 4, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (766, 6, N'fe61869f439548f48d6846530372df32', 2, 4, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (767, 6, N'4ea0bf477ac141748f15fa3021fed11f', 2, 4, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (768, 6, N'45fa49d3650c4d55aa705aab0b3fbde5', 2, 4, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (769, 6, N'79409f79863947908308cb2b59a23af0', 2, 4, CAST(N'2018-05-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (770, 6, N'0241c1f7ed574cd88b95ec7b4b51589b', 2, 4, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (771, 6, N'f373013aab1242429aa931a3ffb2a9e4', 2, 4, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (772, 6, N'c28a1637035a45388ba74fdc9aa5816b', 2, 4, CAST(N'2018-07-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (773, 6, N'ea0f6a7efefa49119f442b10541db525', 2, 4, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (774, 7, N'16996a2455b1499f841735dda77410e8', 2, 2, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (775, 7, N'e38cdf87ff454cffa0c3a3909381cc3e', 1, 2, CAST(N'2018-07-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (776, 7, N'dea60671557c4a55a359b243e6acb8aa', 2, 2, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (777, 7, N'b66478314f9c40079487844eada350a5', 2, 2, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (778, 7, N'5ca3c7610c5e4c86b376c500ac7210bd', 1, 2, CAST(N'2018-04-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (779, 7, N'9d79334f7a8540879ff0b78d057e5f51', 2, 2, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (780, 7, N'1422479c61c941068a39ddac14f00837', 2, 2, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (781, 7, N'49da985fff6b4e11b55998f07e19b5f7', 0, 2, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (782, 7, N'71838c0fd0f2412d9d2453fd885d4716', 2, 2, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (783, 7, N'aff5368961884d77916aefa7eea0aea7', 2, 2, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (784, 7, N'8184426838244acc822be6350e39c8ae', 1, 2, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (785, 7, N'136b3751489643ce9406ec00a93a2fa6', 0, 2, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (786, 7, N'98b4fb01d7cc4fe68241c4f50790bf28', 0, 2, CAST(N'2018-01-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (787, 7, N'174924228690488480afeeedcfbec047', 2, 2, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (788, 7, N'8c625ec026954956b86b9b37c152bf2e', 0, 2, CAST(N'2018-03-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (789, 7, N'0f1686dad3b74df592989b6dbbd2e384', 1, 2, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (790, 7, N'5a25c7e2069342f98c3b0235284bfcae', 0, 2, CAST(N'2018-06-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (791, 7, N'f375d5ceb6684a5a989d426081655f99', 1, 2, CAST(N'2018-01-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (792, 7, N'293909e4ac834ab78e6e4858ffb1d83d', 2, 2, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (793, 7, N'dbef4be679834fa4b72b4d7fe7d0333a', 2, 2, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (794, 7, N'4a21055588d04a848852b1d65d8be248', 2, 2, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (795, 7, N'2e7679a806d047f6b1009bf15f66439e', 2, 2, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (796, 7, N'9676e8e9b3ec48e097665ef4dcd5c88c', 2, 2, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (797, 7, N'9423ed05c3e542cc921758eea6084fe5', 2, 2, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (798, 7, N'6e4ec4475b674ab7a912a2020a5a9a59', 2, 2, CAST(N'2018-05-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (799, 7, N'06becd9be27547d996d8e2107b9073e3', 2, 2, CAST(N'2018-06-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (800, 7, N'3026866691b24ca79d678294ec14932e', 2, 2, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (801, 7, N'ed4fdf3e113c4984bd3d2e5d7e5f3f94', 2, 2, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (802, 7, N'f100c4ec4a28416382c0415feb8985c2', 0, 2, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (803, 7, N'e75b6686ab8e41d180bd37342c8a70bc', 1, 2, CAST(N'2018-01-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (804, 7, N'675a9e8327204dadb4905f41314f4450', 2, 2, CAST(N'2018-02-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (805, 7, N'b5ccb101d787446db736dfc8222d408b', 1, 2, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (806, 7, N'8b7d1b5d0a714522a9e29f40d344a4b2', 1, 2, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (807, 7, N'2e1b7e745cdd4ff8931b45550264d0e4', 2, 2, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (808, 7, N'f58a621905914af1a8b22ad95ec844a2', 2, 2, CAST(N'2018-01-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (809, 7, N'3f061124e6694edf9cbe902a0b362dd9', 1, 2, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (810, 7, N'46108206f39c457699e24606148e38f4', 1, 2, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (811, 7, N'55e2724a85fb457b9a460a95526af532', 2, 2, CAST(N'2018-06-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (812, 7, N'd1335ee57d9c489e83ba5c5110b91a41', 1, 2, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (813, 7, N'11cc807b00e8473ba9688c36003b6473', 0, 2, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (814, 7, N'0e5c1ce1969645fc9525670a0500593b', 1, 2, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (815, 7, N'26c8079e9fed4032a7a88191a966cc10', 0, 2, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (816, 7, N'9fe3ff069c7f4d5eaae4f78615f60456', 0, 2, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (817, 7, N'b896d0859e314d52b0de66f94878921c', 2, 2, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (818, 7, N'd251101a3b4c459091b06aa64e9186ee', 2, 2, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (819, 7, N'e2bc9f5271f447eab919669e343e93a6', 2, 2, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (820, 7, N'12295bfa65424313842df9825d61fbe0', 0, 2, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (821, 7, N'bed3cf8b4ea9403f857633d282b7cbf1', 0, 2, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (822, 7, N'6ddf6e3f31164566957d0a02e8006af1', 0, 2, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (823, 7, N'29be4159a5bd493f91e31b6974bdc3f9', 2, 2, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (824, 7, N'64b2470de3a447f49b99f625931cfb79', 0, 2, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (825, 7, N'e05748d6dbfe4fd7bbf451748ee51c2e', 2, 2, CAST(N'2018-03-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (826, 7, N'eec312fdf82140a5a2d489d608d76032', 2, 2, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (827, 7, N'c91e8370c56a4edd8991e295c2beef80', 2, 2, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (828, 7, N'7513abfa49014b6aba0f10b111d73f8d', 1, 2, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (829, 7, N'b99e1598e0584d4fb3afa658b2503713', 0, 2, CAST(N'2018-06-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (830, 7, N'a2167eef0d714337b8ad4c19216e8523', 0, 2, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (831, 7, N'49ffc17c2b014e5680cfec9ba1f164fe', 1, 2, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (832, 7, N'cc2989db1e2a46289d309ee75c195626', 2, 2, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (833, 7, N'e732ad12d31a40bfbcf33c77e615a066', 2, 2, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (834, 7, N'cbf2b2d7c1e740aaa04e6409eaf55763', 0, 2, CAST(N'2018-06-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (835, 7, N'bcde7205f988435f975b5f209d634cd3', 0, 2, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (836, 7, N'8e623fe59b184b3a93948d74db70d64b', 2, 2, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (837, 7, N'3481abd00c254849baebd321d1fea0ac', 2, 2, CAST(N'2018-07-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (838, 7, N'ae318bb56db543f2b165a3492a775ab4', 2, 2, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (839, 7, N'102634dc3b98489bbc884d9ff168151c', 2, 2, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (840, 7, N'baa028491d2c40eea77728cc9ade8688', 2, 2, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (841, 7, N'3a3b8cdd34794cf59735f5d54e73f692', 1, 2, CAST(N'2018-03-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (842, 7, N'dfcd4d89c33d4cfd9463b39dedfb01e9', 2, 2, CAST(N'2018-05-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (843, 7, N'f5cbcb2693a440e1a44ceebc198f79b2', 1, 2, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (844, 7, N'4e266ecd102747d6857d67082aa03d7d', 2, 2, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (845, 7, N'4b86bbf4b1584e27bb6c56e7336a6daf', 2, 2, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (846, 7, N'a301820ef0c24bdd96b43deb0a28dd0e', 2, 2, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (847, 7, N'2c22ae426c294748b6052879767c472e', 2, 2, CAST(N'2018-06-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (848, 7, N'271b9c79c0f946589c1985c3c2c3c008', 2, 2, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (849, 7, N'01d110bdea744a04a358e2a451537303', 0, 2, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (850, 7, N'250fa9ee6a6e48b59970b30fb46715be', 2, 2, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (851, 7, N'622a85541f3646f49b41c71b1f58094d', 0, 2, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (852, 7, N'18d95f327cf849db926da132a1cd766a', 0, 2, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (853, 7, N'fb02c80ab34f4224a574a2428849dccf', 2, 2, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (854, 7, N'5af4e5b3fb244d3b94d32baa934e2c3b', 0, 2, CAST(N'2018-05-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (855, 7, N'3334d185262e4ddc99b21f04a141750e', 2, 2, CAST(N'2018-07-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (856, 7, N'e90f3417235942babe10c7b6054cbe88', 0, 2, CAST(N'2018-07-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (857, 7, N'9caeb8ca52824163abff581a6eb22a8b', 2, 2, CAST(N'2018-03-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (858, 7, N'4c8fa62341e348ae8420dd06f26ac0ef', 1, 2, CAST(N'2018-03-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (859, 7, N'ce6d909c68e74839a67033ded809e408', 1, 2, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (860, 7, N'55a06f4e2dbb4e1cbb02030525926b60', 1, 2, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (861, 7, N'7d1d7184a79944738507cb0e4e43ed5a', 1, 2, CAST(N'2018-05-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (862, 7, N'78949bd5fb7e4c9a93ce2b8ae84aa143', 2, 2, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (863, 7, N'3bcf33bcfa614d509b41138bc5dbbe41', 0, 2, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (864, 7, N'074b6ee70cc94f43bd3197665211088c', 0, 2, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (865, 7, N'2bbc76ade3a747899ba0804e538f6366', 2, 2, CAST(N'2018-02-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (866, 7, N'b06d035a6a804970babf9774f86c5e2f', 0, 2, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (867, 7, N'3037f0a76b624d62ba66f16bf0a359a8', 2, 2, CAST(N'2018-03-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (868, 7, N'f3b29b72935d4ca2992f55bfad331771', 2, 2, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (869, 7, N'6ff3c2026e874ce587a35518ec6cae5f', 2, 2, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (870, 7, N'deb4799ab5ef433f902830ba9297ca19', 1, 2, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (871, 7, N'7f35f9fc23f84b03a5b1762a70a07d2a', 2, 2, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (872, 7, N'707f6e2e3498460db77458cd336961aa', 2, 2, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (873, 7, N'64effc3792d54a4ea1056e51274351fa', 1, 2, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (874, 7, N'7d88594fd80f4f3aa85d5e126d86e923', 2, 2, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (875, 7, N'9e67a0be639f45b5963a7a0215c92128', 2, 2, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (876, 7, N'a3ad65ffc4f54ff4844cddfd4d79224c', 0, 2, CAST(N'2018-02-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (877, 7, N'fc54c9f48a804a8a857ba95300f5234e', 0, 2, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (878, 7, N'f3f069aa492b49739e574f30e93ac519', 2, 2, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (879, 7, N'52afab98dfc4407db35d770adcf0c39d', 1, 2, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (880, 7, N'8acd0c0f1859468fb66327d3fc06ce6e', 1, 2, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (881, 7, N'6106a4185f0e4dc3b2be440399299cbe', 2, 2, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (882, 7, N'61c7c535bb7f4848b7c931f2cb02c687', 2, 2, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (883, 7, N'73e5f431eff443b7a970c3ad8cbd47a5', 1, 2, CAST(N'2018-05-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (884, 7, N'92be8b02f6b84aadb9058256f14f392d', 0, 2, CAST(N'2018-05-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (885, 7, N'873552adfef3472eb47527b26c35c380', 2, 2, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (886, 7, N'457bb14c139d4badb6345394099c2a3c', 2, 2, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (887, 7, N'e4accdf44ca14f95a44f5724aaf4a11e', 0, 2, CAST(N'2018-06-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (888, 7, N'4146a523a4ed4349b7d9cfaed974e060', 0, 2, CAST(N'2018-03-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (889, 7, N'68a7f7dad7524977978f03e4e49264e1', 1, 2, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (890, 7, N'dd613f52bc534e74a1446c3e81dd5145', 0, 2, CAST(N'2018-05-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (891, 7, N'dbebc37df6784d289935ecd926c074d3', 2, 2, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (892, 7, N'c34aa170f47744b39a5ec5be470cc1d5', 2, 2, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (893, 7, N'5c5a3f44932f4459bf94d2a8b6d349ba', 2, 2, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (894, 7, N'b6f039d7a1804e4e9120550014d0c3ce', 2, 2, CAST(N'2018-03-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (895, 7, N'ec19545ae1204df1a35ccecb44dd574c', 2, 2, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (896, 7, N'c2cbd59ea514447186cdb71f5b5d4992', 2, 2, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (897, 7, N'6cfc0f2d15a44f5cb10572cc4f560c0c', 0, 2, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (898, 7, N'3dba9234e31445ac8f75b10dd7591380', 2, 2, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (899, 7, N'30837f4f0bc54776b630b0a24777413b', 1, 2, CAST(N'2018-04-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (900, 7, N'2db30c241de445b6bbdfb41bce012871', 2, 2, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (901, 7, N'9558158e8a454254bdd06bf5ae4d13c4', 2, 2, CAST(N'2018-05-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (902, 7, N'be6b85b4f87e4aea9ba1dc91f4cacdc7', 2, 2, CAST(N'2018-06-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (903, 7, N'7e92fdc871914ba7b6fda938c791e6b7', 2, 2, CAST(N'2018-04-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (904, 8, N'c21dfce2cb5e4f09ba52e28c1ac4bfd3', 1, 5, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (905, 8, N'1e67fffd00504f19907f7412c5005a0f', 1, 5, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (906, 8, N'88445d134d7241e59c5b7ef56944bcd5', 2, 5, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (907, 8, N'1272757bc58b4476a67882553ad79bfc', 2, 5, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (908, 8, N'0817e9eda73c469b8cc479684878fbb9', 2, 5, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (909, 8, N'077ffc0e50fb47c88d38948838597d96', 1, 5, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (910, 8, N'f81418aaf5814118813d88e94eddf2f3', 0, 5, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (911, 8, N'4a26f398180f43d9917ce8db591516ec', 2, 5, CAST(N'2018-07-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (912, 8, N'3f9a54473b73420fbba52d2187d6e15b', 2, 5, CAST(N'2018-03-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (913, 8, N'473fc41831844898bc6531c436bc11b2', 2, 5, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (914, 8, N'8ebe9c098bbe4d49902548994dacb0ba', 0, 5, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (915, 8, N'd6710e82beda42ed848a4d24c3c0b182', 1, 5, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (916, 8, N'c739bb8b2c414405bb65513cbed17b89', 0, 5, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (917, 8, N'1d8943b11a5a47dfa8c9a091aab7d58d', 1, 5, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (918, 8, N'348db243050240889e580ea9506df6f9', 1, 5, CAST(N'2018-01-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (919, 8, N'6134137afd4d449b86b29c5cdf5e6600', 2, 5, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (920, 8, N'ddc85dd7cbae46f48e51eff616d67e2e', 1, 5, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (921, 8, N'90a80775f6f24bd18d7c3d1b418fb965', 1, 5, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (922, 8, N'41148be29a0e442a87d533ce82b4d282', 1, 5, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (923, 8, N'35d6db05d73f43119cea47473f1c5763', 0, 5, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (924, 8, N'10ffadfbf07f44fbae6bbf02ddd6c1d9', 1, 5, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (925, 8, N'35dc71137cd04902a3fd5f15a29bc434', 2, 5, CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (926, 8, N'8b1ac02ed2854fbc9fef167dcb60cbfd', 1, 5, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (927, 8, N'6b786635c4af4dd287294402c880ad50', 0, 5, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (928, 8, N'980e56b4321e42899b1c3e0ccbc6bb9e', 1, 5, CAST(N'2018-06-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (929, 8, N'685edb70e4964607a4c13696e7880000', 0, 5, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (930, 8, N'01614403739a443ba40725526d93dacd', 2, 5, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (931, 8, N'bb223ba928ad44ae8bde6e2319626eb7', 2, 5, CAST(N'2018-03-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (932, 8, N'48979e303d7d42b983b715bd69dfafe3', 2, 5, CAST(N'2018-07-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (933, 8, N'4777ce2e9af84c3c9979ccb53f656a29', 0, 5, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (934, 8, N'95312cefa21448bdbd254fd0e1a1ab53', 2, 5, CAST(N'2018-03-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (935, 8, N'174809e157054a42a2f0f00945a86aaf', 0, 5, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (936, 8, N'2561f3ab51c841c2af659ff9d6046f66', 1, 5, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (937, 8, N'7567dfeb15d34c6e9c5f9a1e96131b45', 2, 5, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (938, 8, N'1140458a3ea0481d9d0f082e6f74a074', 2, 5, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (939, 8, N'3b692a207e0547b0bcc821e7da9c1ca8', 2, 5, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (940, 8, N'61ba24dddabd49febc95ca09b7ceabc5', 2, 5, CAST(N'2018-05-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (941, 8, N'e538044a191d4f54bc1b353df8b79533', 2, 5, CAST(N'2018-04-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (942, 8, N'afb221edacb1405489cc9ce4695db713', 1, 5, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (943, 8, N'b3885ea72afd47e1b3eabdd2a58b329a', 2, 5, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (944, 8, N'405a14880c024f569ae43437941d4bd8', 2, 5, CAST(N'2018-01-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (945, 8, N'e9e34fe59bef4b9496cd6fe6f34a94e4', 0, 5, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (946, 8, N'd2b6a3d234994dd8bb4748ae6a006279', 1, 5, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (947, 8, N'1a4660043ac24e06b72a6e9aa6a04da0', 1, 5, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (948, 8, N'd6c6526549e24f17b8bc4752a5fedae2', 2, 5, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (949, 8, N'993124a569ec4b3b93ab4c3ac0fb9e47', 0, 5, CAST(N'2018-03-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (950, 8, N'd3faedcd15654d2a8803581ca9b0d117', 2, 5, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (951, 8, N'a81f8e801c5f45a1a4daa6b6aa3ffbc0', 2, 5, CAST(N'2018-01-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (952, 8, N'2285bb5c8d7845fcb46f37728fdc6e82', 1, 5, CAST(N'2018-06-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (953, 8, N'569963c8b9d44948b83bb27f305fdc57', 0, 5, CAST(N'2018-04-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (954, 8, N'97ca4d6b516448d3bcc59f79c194d4b1', 2, 5, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (955, 8, N'7f5780d587d04f5d9c374513c13d989b', 1, 5, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (956, 8, N'd9a15afe61c3491aa1415b9ff2a65f05', 2, 5, CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (957, 8, N'e107e6e5d57645c68a7e2f19d964147b', 1, 5, CAST(N'2018-01-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (958, 8, N'a729e6cfb5cd4256b0bff5a6a13b002f', 1, 5, CAST(N'2018-04-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (959, 8, N'544a3c2c5dd74b80a6bc58b318cfa1b6', 2, 5, CAST(N'2018-06-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (960, 8, N'91a5f37563224f14b676483a19481ba9', 2, 5, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (961, 8, N'589ffe1cbf9748298802486d216a6037', 0, 5, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (962, 8, N'550cf39af9634ba7a413f9b28661df5e', 0, 5, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (963, 8, N'c767d862641047578bf6f79a623eb5e1', 2, 5, CAST(N'2018-04-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (964, 8, N'297ee0906677431b9cd4112d2167077c', 0, 5, CAST(N'2018-01-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (965, 8, N'e0cd4aab68394562aeb5c10eae353fdb', 2, 5, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (966, 8, N'7462a1f97f7d4f71a19dd6878e3b4d50', 0, 5, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (967, 8, N'31ffd67fe0984f9f9a447040b341009d', 1, 5, CAST(N'2018-03-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (968, 8, N'c595e092aa5a479da563724b1df068e6', 1, 5, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (969, 8, N'704f1c32be55430f93d682d26adf574f', 1, 5, CAST(N'2018-03-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (970, 8, N'336ac2ffa0144eeeaf5ed6de2cad640c', 0, 5, CAST(N'2018-03-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (971, 8, N'fee8636a2cd74184afdfe13562c97c1f', 2, 5, CAST(N'2018-01-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (972, 8, N'8eb3f727eefd4a9892846f82cb352820', 2, 5, CAST(N'2018-02-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (973, 8, N'3e725974667e4497b30f9fe9a3afb5b8', 2, 5, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (974, 8, N'df797887a4f6484880b11c65a3c033e0', 0, 5, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (975, 8, N'805adb9b93a64a26a79b44070e3d0fad', 2, 5, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (976, 8, N'78bf7a62062b42b3bff18c934ecb8c8c', 2, 5, CAST(N'2018-05-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (977, 8, N'44340d6735ca413398e5a28613744ead', 1, 5, CAST(N'2018-01-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (978, 8, N'f28fb17eb43e49359187d722d00d2ae4', 2, 5, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (979, 8, N'08a31015601b47f7bfbdae26698b7223', 2, 5, CAST(N'2018-04-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (980, 8, N'0b75be0b9ca247e2abf34b8e208466a9', 1, 5, CAST(N'2018-07-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (981, 8, N'fb070120f6744c2aa28fc4b520f6ae0f', 0, 5, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (982, 8, N'a9f7a36a0e8d4ffc8dfff87a0152a568', 2, 5, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (983, 8, N'85847c90d7ad4ed3bd5bbff7f3c9197a', 2, 5, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (984, 8, N'a868262409544eb382b3e0aa9e878ca5', 0, 5, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (985, 8, N'd4fcb435ac414045aac3e6cb38123208', 2, 5, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (986, 8, N'63679edf82b94cc2ac10e7d772975edd', 1, 5, CAST(N'2018-01-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (987, 8, N'118189e5d8404b84886dae80393b3662', 2, 5, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (988, 8, N'807a8b219e7247379085c12e84f64674', 2, 5, CAST(N'2018-01-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (989, 8, N'96cdafd9ee1d4b06960de0e96e79cd39', 2, 5, CAST(N'2018-01-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (990, 8, N'5b24ca5ff2544382835380b7cb1e78ef', 2, 5, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (991, 8, N'ec64816008dc44b480b61b67e5c932af', 1, 5, CAST(N'2018-01-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (992, 8, N'0718b36242b04864a3e80b35ad5a84ea', 1, 5, CAST(N'2018-01-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (993, 8, N'fea2ddb8c3ca426fad7e06b0810a46dc', 2, 5, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (994, 8, N'6d3d2cd4c3914b1498267fe32e6d1a37', 1, 5, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (995, 8, N'16d1592850354210a60782abb66ded2f', 2, 5, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (996, 8, N'827d8719cfee49fc93a134e926505e26', 0, 5, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (997, 8, N'f9d408b948d044e2b90475709249262e', 2, 5, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (998, 8, N'e73b0b2e02e94e78acfdaadbbc24647c', 2, 5, CAST(N'2018-07-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (999, 8, N'37423f052ccb47ab9a2f6b85e0d7b477', 0, 5, CAST(N'2018-03-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1000, 8, N'de6a4bdb5b874fbf82e0ec5f78c9b699', 1, 5, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1001, 8, N'9acc2e8e976a4f79a916f4569d4473e0', 1, 5, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1002, 8, N'7c44e31e0a9d422d9b254383912652c2', 1, 5, CAST(N'2018-03-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1003, 8, N'479f320b0d0646df90099a61c598fdb0', 2, 5, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1004, 8, N'5d3d479cd8324a0da66d968d5aa171e3', 0, 5, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1005, 8, N'418110d6df2340cdbf9f2a9e258b9caf', 2, 5, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1006, 8, N'3b8cb9a74dbb4e3db0c104bfd0cc89b5', 1, 5, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1007, 8, N'5b0512c421d0434c974c938bc2aac602', 2, 5, CAST(N'2018-05-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1008, 8, N'd56afab8c8744015a6ef2baf02a754fe', 0, 5, CAST(N'2018-07-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1009, 8, N'34fe7ff994fa445f94279666631c82fd', 0, 5, CAST(N'2018-07-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1010, 8, N'9beb35270a904456a923f59a3a40297e', 2, 5, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1011, 8, N'0e75694b87fd4794b20be3f5136f678b', 2, 5, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1012, 8, N'35896fae20cd481aa471016c6eca3df3', 1, 5, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1013, 8, N'eb6e649419a748d1b9f2f622bf8397e3', 0, 5, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1014, 8, N'386faa02aec248f78d94fd484711c373', 2, 5, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1015, 8, N'5624b7d63dd1462b8fd3646e90903430', 2, 5, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1016, 8, N'8d0f7f11417e406ba401c48eaaeb7712', 2, 5, CAST(N'2018-02-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1017, 8, N'924bac7686a7499da956371584478df5', 2, 5, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1018, 8, N'2dba43b4761744b58788750dcb02de64', 1, 5, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1019, 8, N'2f654f63b3b1403684aa475e404ad97c', 2, 5, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1020, 8, N'98a301a30f1d427d982beea1457e1143', 2, 5, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1021, 8, N'729e6e0821bc4ed5a4ae88c4a8d153b9', 0, 5, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1022, 8, N'b98958cdf0b64938893f8ca66e73804d', 0, 5, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1023, 8, N'62425d72f54844e49ce23e6a42daf550', 2, 5, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1024, 8, N'a8d149023e124a19b2b468c2e84eec0f', 2, 5, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1025, 8, N'35414dd799a6446da42503c46d7b311e', 2, 5, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1026, 8, N'de1c836915964c0e843e2f0c1e243a75', 0, 5, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1027, 8, N'e22b41c54e7b473fb6c536d3ce893d6b', 0, 5, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1028, 8, N'dd14148f48734c95b25586c2e8fe809b', 2, 5, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1029, 8, N'1738f2728dba49fbaf286455278d5825', 2, 5, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1030, 8, N'c0d2b5be47704e20b54b5506ff668b65', 1, 5, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1031, 8, N'5ad61e1394eb4068aef83ef15cd57d13', 0, 5, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1032, 8, N'ea2dacceb7ba45bca5ec66bdf593f686', 0, 5, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1033, 8, N'f3032e27c2c44029a54b2b1861d28227', 1, 5, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1034, 8, N'1c2fbb0c5a4e456690d0551ff27e4c50', 2, 5, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1035, 8, N'3460ea658ac14d9f85b7285b8a7009ba', 2, 5, CAST(N'2018-02-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1036, 8, N'4e4ed505cc714c80aa4255df55b017a5', 2, 5, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1037, 8, N'ed3ef2ba3b544cfabf5faea41bbac0a8', 1, 5, CAST(N'2018-06-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1038, 8, N'28366455656a46ee8e8a6eae47aa0e8a', 2, 5, CAST(N'2018-07-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1039, 8, N'3403fe302f1944cfb9853ecf2689cb1d', 0, 5, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1040, 8, N'01629ab0b29144e5979215ba7dc55eda', 2, 5, CAST(N'2018-06-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1041, 8, N'c6be5e7e081143f8a284f5a7254d63f0', 2, 5, CAST(N'2018-01-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1042, 8, N'49d7a524c0d74ad79c57bc9e4fe40f76', 1, 5, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1043, 8, N'c77783c1fec048d79ef1be08ffaee521', 0, 5, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1044, 9, N'56a6491886014ffaa9464b4499c17d3e', 2, 3, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1045, 9, N'66335a164ef149d89527985cbc21657e', 0, 3, CAST(N'2018-05-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1046, 9, N'f30356fe02fc4b93bee81bac613d38c8', 0, 3, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1047, 9, N'ef37c220396a4c87aaed0cc9b822cdbd', 2, 3, CAST(N'2018-03-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1048, 9, N'9cd02c98d25d4417a6d91e94d14c5d0c', 2, 3, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1049, 9, N'852545b5c9a744ccb3152fede9da5ee3', 2, 3, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1050, 9, N'052d76867f144896acdb6340fc83fd88', 0, 3, CAST(N'2018-05-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1051, 9, N'71dc6f18f6994ce68983b4060476c252', 2, 3, CAST(N'2018-01-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1052, 9, N'74275ea647924ca6bc89d490ad94c5db', 2, 3, CAST(N'2018-07-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1053, 9, N'7c3f7739deac4fcba0426a9434d220e5', 2, 3, CAST(N'2018-07-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1054, 9, N'8535fb4ef6494aadb9a69033d04aa7ff', 2, 3, CAST(N'2018-06-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1055, 9, N'fcd9ce52610045f2a235413d7ddb2aa0', 1, 3, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1056, 9, N'f661860f897442838c1dc629f317651a', 1, 3, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1057, 9, N'358802887fba458a967238a2e84e7208', 2, 3, CAST(N'2018-04-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1058, 9, N'0a5cf2a6b63149b6abc0c697a528bff3', 2, 3, CAST(N'2018-03-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1059, 9, N'd066b8dddf8a42a1a19f8a11adc8b521', 0, 3, CAST(N'2018-07-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1060, 9, N'8f7673fa7722465594d4d14ff1f8206b', 2, 3, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1061, 9, N'd83a43e7fa88437d81918aa015680b1a', 2, 3, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1062, 9, N'd9928236dc0849f48be55df734c1e94a', 0, 3, CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1063, 9, N'3cf876a7a2cc40f4bc46084885be2f51', 2, 3, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1064, 9, N'4a50a6c098c54b788d298dac586bdfd0', 1, 3, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1065, 9, N'935c4ba7a9934f0a8ed67763acade9df', 2, 3, CAST(N'2018-05-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1066, 9, N'327feb26974048c4b87653340e699881', 2, 3, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1067, 9, N'd00054a5870d418d92715f559106b503', 1, 3, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1068, 9, N'dc8f59b348d84e7792b9557b3c06067c', 2, 3, CAST(N'2018-06-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1069, 9, N'abae12163cf946be909e057a8b31d2c2', 2, 3, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1070, 9, N'b908d23909e846949dd98cbe7d5d66d4', 2, 3, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1071, 9, N'fa2dc56df4df49ea92bbced516f7df1d', 1, 3, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1072, 9, N'6554777dd272473eb9c29584de86cb42', 2, 3, CAST(N'2018-03-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1073, 9, N'c1e388921d264f0f8f7b76e18c755e2a', 1, 3, CAST(N'2018-01-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1074, 9, N'a10bdae89cde4079b6834b9ac73cd289', 2, 3, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1075, 9, N'9b41afbc200a44319a0664964cda592b', 1, 3, CAST(N'2018-01-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1076, 9, N'feb000833b02430e91b958e213514c53', 2, 3, CAST(N'2018-06-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1077, 9, N'3c356a29ba35495da333ea4e9f891710', 0, 3, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1078, 9, N'193f813e609847c7ad28d2af83a977e8', 2, 3, CAST(N'2018-05-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1079, 9, N'44797f52152e43f5b4f34ebf8348965c', 2, 3, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1080, 9, N'42179e61a259499dbf81321a69894563', 1, 3, CAST(N'2018-06-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1081, 9, N'1b45d696cd96489b88165b30088956e7', 0, 3, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1082, 9, N'055b837d98d64a7bbd090392b3133aa9', 1, 3, CAST(N'2018-01-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1083, 9, N'947309103d1545c8be6acf02403e18ac', 0, 3, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1084, 9, N'92fd2a018eaf41ce8bc104d9a2dbd15d', 0, 3, CAST(N'2018-03-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1085, 9, N'd0ca727275ab498a83054bd96bbb4ea3', 0, 3, CAST(N'2018-06-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1086, 9, N'c600a9f8b5b34db088c0943266d70f72', 1, 3, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1087, 9, N'a2dc636365ce427a96f9bea027095eae', 2, 3, CAST(N'2018-07-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1088, 9, N'cd1d0811f28a478d806883f5c913e35b', 0, 3, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1089, 9, N'b317bf4134f343a1908525d80aec5da8', 2, 3, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1090, 9, N'ac924ad67fa34c1f978ffb0e4900758e', 0, 3, CAST(N'2018-03-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1091, 9, N'a3732655eb384c73be1f064e54048293', 0, 3, CAST(N'2018-02-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1092, 9, N'f3dc703612d1475f91a7ca9007a18161', 2, 3, CAST(N'2018-06-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1093, 9, N'334192152a75404a8908607eb776227e', 0, 3, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1094, 9, N'1e73d6dc72df474d8774b25e44583875', 2, 3, CAST(N'2018-01-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1095, 9, N'943b507221294846b03cdabecd604dbe', 0, 3, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1096, 9, N'dd2e9697398e4708b3d5de37287bfbc2', 0, 3, CAST(N'2018-06-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1097, 9, N'b54c3932e8e24d0fabcbbe1ecd72034b', 1, 3, CAST(N'2018-01-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1098, 9, N'62562b29433c4ed19ba422498c0d5adc', 0, 3, CAST(N'2018-02-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1099, 9, N'ce82f7f090334f2e892c4ae86f58b7ac', 0, 3, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1100, 9, N'c0de275188dd482f8dad5f90bc72f86d', 1, 3, CAST(N'2018-02-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1101, 9, N'e31f9117a0294c858fdf6c7fd05b1ce8', 0, 3, CAST(N'2018-02-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1102, 9, N'8e6d9f57e209433c9ef953f5b00bce4c', 2, 3, CAST(N'2018-01-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1103, 9, N'91163bfddbf643c0b440329d77e2d506', 0, 3, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1104, 9, N'0d772a5d5d1f4a09884219cba192d8b6', 2, 3, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1105, 9, N'577a2ada721f48e69e95370a3ebaeb0b', 1, 3, CAST(N'2018-06-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1106, 9, N'6d098f5ad39f4678add2880529a85396', 2, 3, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1107, 9, N'9693a10987714408b1e9fb68aa9a537d', 2, 3, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1108, 9, N'83ee06ee90414411981d19b702a6ef2a', 2, 3, CAST(N'2018-03-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1109, 9, N'9c685675b17641348df38e7da13a52e8', 1, 3, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1110, 9, N'5a90982c210e494dac575dab9d98a56b', 2, 3, CAST(N'2018-03-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1111, 9, N'b0200e7c9f0d4221ae46e010f7accbb7', 0, 3, CAST(N'2018-05-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1112, 9, N'74e1eaf90a9d4f6f89368710088333a5', 1, 3, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1113, 9, N'279b241bad5343f6b5b99ff18935dff3', 2, 3, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1114, 9, N'361f3f4f78034093a2ad484aee38eac2', 2, 3, CAST(N'2018-07-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1115, 9, N'fe24ba10f20443cdbed0cc4281990091', 1, 3, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1116, 9, N'7fa7ab80f1e04fcd8f9e23a6652df1a9', 1, 3, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1117, 9, N'b99c734d4ef0491585260d72284466c9', 0, 3, CAST(N'2018-01-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1118, 9, N'38099da07627461abae964c73467b811', 2, 3, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1119, 9, N'301a957ff4144b5eb42b5b0900d7902e', 1, 3, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1120, 9, N'0c1f1129d74c4e78b2902a2a09c22041', 2, 3, CAST(N'2018-03-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1121, 9, N'671922cb38774df2b3628add8043f067', 0, 3, CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1122, 9, N'8bff599bae7349be84154fac48e4e6f1', 0, 3, CAST(N'2018-02-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1123, 9, N'77c15744749d452fb009d383f957526f', 2, 3, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1124, 9, N'1941b4dbeef34ced9bf0d0334bfb2f96', 1, 3, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1125, 9, N'a18152a211fb4ab9833abd0f5835cf51', 2, 3, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1126, 9, N'64b4f68493c346f2bd973f1062fe5b68', 2, 3, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1127, 9, N'f36613cb87304fca911caf29d4a7086c', 0, 3, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1128, 9, N'8b79bc94769e4f1e9c3435323f5e0d61', 1, 3, CAST(N'2018-06-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1129, 9, N'435243d824574d29937aa9169e8d3e3b', 2, 3, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1130, 9, N'5c651e3e8e9c4b7eb5de9e97a56f426f', 1, 3, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1131, 9, N'fc00422d86394138b7b10cd31ea8f7b6', 1, 3, CAST(N'2018-06-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1132, 9, N'9537b436f57e4f9aa53acfdb5a391ead', 2, 3, CAST(N'2018-06-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1133, 9, N'96e50f3ef43f4d299234ff43109a9553', 1, 3, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1134, 9, N'17836339d42e4dbb9601eabe08d96c77', 0, 3, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1135, 9, N'68eafc7ed0e94b11b698f765629fd252', 2, 3, CAST(N'2018-06-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1136, 9, N'827fc7e3538b48b19e931c28de6f3c37', 0, 3, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1137, 9, N'657a6d2eb4b94e36ada584e17dad9f67', 0, 3, CAST(N'2018-04-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1138, 9, N'c4a0d87a059241f18390066f4d005ddf', 0, 3, CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1139, 9, N'71c069bdfff34c93b96275901db11cfc', 2, 3, CAST(N'2018-04-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1140, 9, N'82641b9279e145c2840d6817bf2f267a', 2, 3, CAST(N'2018-07-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1141, 9, N'414b4650aa5b4720a869f74bdc54fc94', 1, 3, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1142, 9, N'8f7f072f92194d3aa9d528297c227972', 0, 3, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1143, 9, N'c331354082ca493c90155ac1d1f62310', 0, 3, CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1144, 9, N'19d336c7812142178abc70bbe4476ba8', 0, 3, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1145, 9, N'76ebf7b99d4949769c03e46a9e6510ba', 2, 3, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1146, 9, N'a3d2c790a17e4b9f86c6fcc7fe6294b3', 2, 3, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1147, 9, N'a5c28f9ea7294a8199ed9092af8bc15c', 0, 3, CAST(N'2018-02-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1148, 9, N'724bb208d0d94df9812431f36a52262a', 2, 3, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1149, 9, N'8c4b860fdc91454ab536245a4c94194b', 2, 3, CAST(N'2018-04-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1150, 9, N'3ddf1dad821048ba880cc00bea162dfd', 1, 3, CAST(N'2018-06-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1151, 9, N'bbd20c4eaec040c9b9c5bd55b11b6c23', 2, 3, CAST(N'2018-05-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1152, 9, N'e4137b95195d4de59846b4c186a4d525', 1, 3, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1153, 9, N'b41b42d0a04d43df96cb49893a9d00a1', 2, 3, CAST(N'2018-04-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1154, 9, N'd38294f72b704afebd7b422621a25414', 0, 3, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1155, 9, N'2b26912121b4417a9b88891e672f7d81', 0, 3, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1156, 9, N'6087a4da00e549ac815863f0b5ae745b', 0, 3, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1157, 9, N'2f5277f358664137aa2d0eb2c589b269', 0, 3, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1158, 9, N'1470bb06c9914317b229fd2bb1f351e3', 2, 3, CAST(N'2018-04-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1159, 9, N'29863b456d7948889f2b9ea676cd1d88', 2, 3, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1160, 9, N'20a9e07bfce045168b95002b9ab94d5f', 0, 3, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1161, 9, N'8a17afa57c3647bbbd5a9e9115e717c8', 0, 3, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1162, 9, N'1bba202d210b4eb5a1909ea8a0190a85', 1, 3, CAST(N'2018-03-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1163, 9, N'2aa7219f43ae43dcbfc0cb2250c16c32', 0, 3, CAST(N'2018-02-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1164, 9, N'4f4f17ea640848fabdbc0bdf7cef0ad9', 2, 3, CAST(N'2018-01-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1165, 9, N'c0a6868057d449f8a0b7052dc50393ed', 0, 3, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1166, 9, N'a9bb9209ad714b2ea6ff6bd8098906ec', 2, 3, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1167, 9, N'1568561dee4344878493d963c8e76575', 0, 3, CAST(N'2018-02-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1168, 9, N'aa4183054ef14bbfa07cf90694f36072', 2, 3, CAST(N'2018-05-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1169, 9, N'cce2ad7734ca4ef99767b29bae731e1d', 2, 3, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1170, 9, N'd01110348a0e46f19710ba509ec46211', 0, 3, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1171, 9, N'950b8ad2dd2448fba109bcbb7ecba795', 2, 3, CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1172, 9, N'4bd2b00f7b8f4a66979146f6ceec9900', 2, 3, CAST(N'2018-06-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1173, 9, N'be915bde7afc441484051b95010013fa', 2, 3, CAST(N'2018-02-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1174, 9, N'5f37c53c49e9480b97b073c0ec16e503', 0, 3, CAST(N'2018-02-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1175, 9, N'c9d147ff3c534045aebf556a4a903f8a', 0, 3, CAST(N'2018-07-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1176, 9, N'5f1fd79dbf804fe2b4cf3e7547cb57cc', 2, 3, CAST(N'2018-04-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1177, 10, N'b2df8f60e4eb43afa8e10d4104540add', 2, 4, CAST(N'2018-06-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1178, 10, N'2ee36b3c7181438e89a8b98ad91f80f0', 0, 4, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1179, 10, N'553ee656e8ec45ecbab0c4af63ef100b', 2, 4, CAST(N'2018-03-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1180, 10, N'73dfa2ccfe674ea09c602af044385945', 2, 4, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1181, 10, N'015904f6a20f42c89d329323acd7e175', 2, 4, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1182, 10, N'93e85fcf11304c918377bd8b2ca1a9bc', 1, 4, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1183, 10, N'446b938bbc504953976a04c812fb4ef1', 1, 4, CAST(N'2018-02-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1184, 10, N'8c7fa7e3d8f34ff78372d5b9a36ccd21', 2, 4, CAST(N'2018-05-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1185, 10, N'cd3e9b9da7ee4720bb974f2c1e335a67', 2, 4, CAST(N'2018-03-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1186, 10, N'1cab504197864c918925b148702eb717', 2, 4, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1187, 10, N'69063bd07c33489d9b9404bb52ceeef1', 0, 4, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1188, 10, N'3c015b70a87340bab43e56022036eb03', 1, 4, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1189, 10, N'1130cf841485402fb27efce811d5cef2', 1, 4, CAST(N'2018-01-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1190, 10, N'75b1dfd5c3134f93abc3cbeb676b807d', 2, 4, CAST(N'2018-06-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1191, 10, N'99b5a283e95a41799112becf79a386da', 2, 4, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1192, 10, N'567eac5d915c47a4919498a92b612d2f', 2, 4, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1193, 10, N'63daca803ef04e37b1053ec08f7df0d8', 0, 4, CAST(N'2018-02-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1194, 10, N'306bb92f1417423da46ec6751281602b', 1, 4, CAST(N'2018-01-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1195, 10, N'ead6553612c64aceb2e9252e6573100d', 2, 4, CAST(N'2018-04-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1196, 10, N'cfe1fd9fef2d46319e7c4f2724005ace', 2, 4, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1197, 10, N'd2b4ec7e0c5046ac8e54adedf2198cd0', 2, 4, CAST(N'2018-01-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1198, 10, N'7f55c12da9c64fc9a0b256af7e98f56f', 0, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1199, 10, N'19359ecbad57416c8333402616a14129', 2, 4, CAST(N'2018-03-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1200, 10, N'2abd079036084588bb15d924ea41f7dd', 1, 4, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1201, 10, N'd3ee15dc095d437d931fa6067e170267', 2, 4, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1202, 10, N'3dc8575d814a4f76b1d67ddb29819ed4', 2, 4, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1203, 10, N'f7ddec63339741cfb30f4321802284f4', 2, 4, CAST(N'2018-04-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1204, 10, N'9efe95e0ccb844a9a7fab1637758894a', 0, 4, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1205, 10, N'707fa9b59fab408eac27108b0f0bd687', 2, 4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1206, 10, N'4956998a85794ba8832294e9ede33904', 1, 4, CAST(N'2018-05-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1207, 10, N'f143ed7aabaf4bc18f359643f6749730', 2, 4, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1208, 10, N'a1e5dd26bd504d39b07c7bb20872e94e', 0, 4, CAST(N'2018-02-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1209, 10, N'7ba9819e2eab4505805586fb7b16bb48', 2, 4, CAST(N'2018-07-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1210, 10, N'9643f7a6ab3241bca25f4d0755e84715', 0, 4, CAST(N'2018-07-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1211, 10, N'89ff577fb7d04303a4bead36d7a78863', 2, 4, CAST(N'2018-01-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1212, 10, N'ae6cae7f59da442d81e87db4d7629966', 1, 4, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1213, 10, N'2064154ded8448e0b55793c5f2aac666', 1, 4, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1214, 10, N'fd0b73b4fb154fce8cc582760120edb5', 2, 4, CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1215, 10, N'10e7dc12ec3743e0b3d338290e85df15', 1, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1216, 10, N'7a6dce58a2eb451391142530246bc008', 1, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1217, 10, N'5cd8a9489e7c4650bdeb75649e10e30e', 1, 4, CAST(N'2018-01-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1218, 10, N'223b309de1684799be0604490395167f', 1, 4, CAST(N'2018-03-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1219, 10, N'8e4008872b9647139d58838af4f67df9', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1220, 10, N'ed0abdf6b41a42069c162c93b4d91af8', 1, 4, CAST(N'2018-06-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1221, 10, N'921f8888d869431aab6f12d2ecdaf716', 0, 4, CAST(N'2018-07-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1222, 10, N'8047b5c1e63e4911a822e49beb8780ca', 0, 4, CAST(N'2018-04-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1223, 10, N'c0f88081b87a49138b39beff3ae6509b', 1, 4, CAST(N'2018-03-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1224, 10, N'c1f9822d726e404d8f872720074ba370', 2, 4, CAST(N'2018-06-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1225, 10, N'2c77d5e48b6c44019d6e2b5046cf163e', 0, 4, CAST(N'2018-06-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1226, 10, N'b703b9bcf0e4480cac38c09fc9c17325', 0, 4, CAST(N'2018-03-18T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1227, 10, N'9a092097583c418cb6b4ca374e4e79cf', 2, 4, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1228, 10, N'0638563ab4c646daa6bec0ad5ab68a12', 2, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1229, 10, N'1210a96912694409ac9ac9fc4c424c96', 2, 4, CAST(N'2018-07-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1230, 10, N'b5aee2b199f847dfac8e2d5e28b316c8', 0, 4, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1231, 10, N'016eba05bf1349f28b3bd72264026b39', 1, 4, CAST(N'2018-04-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1232, 10, N'42c0993364bb4d329d1fbe850f13620d', 2, 4, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1233, 10, N'a1e0a4624df94e90a388ba7b9d309383', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1234, 10, N'195879356db94d70b26848d412cc1640', 0, 4, CAST(N'2018-06-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1235, 10, N'af119f54c1504bfa8e33d4bbbf53a47e', 2, 4, CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1236, 10, N'292ce4c131314f0299be4f7726d8e991', 0, 4, CAST(N'2018-06-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1237, 10, N'95c76a262fdc44b795a8ce7c82f54298', 2, 4, CAST(N'2018-05-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1238, 10, N'03eb3855cd454180ba4c4efdd1fd2290', 2, 4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1239, 10, N'98dc2ac7769f4784a5eebbbf7577a948', 2, 4, CAST(N'2018-04-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1240, 10, N'c7c2c6807f454951939a7d16a29bcb66', 0, 4, CAST(N'2018-05-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1241, 10, N'2443708686384ec1beb9ca70ce63506a', 1, 4, CAST(N'2018-03-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1242, 10, N'7216ff67eec54771b70b43bd6766fad0', 0, 4, CAST(N'2018-02-11T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1243, 10, N'80868eabc284443ba56d72a9cfb4b59f', 2, 4, CAST(N'2018-02-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1244, 10, N'a4edbf6611844e288c99e3aeb4af2089', 1, 4, CAST(N'2018-03-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1245, 10, N'3e2a2f3834eb41099e278c0149a5e5c1', 0, 4, CAST(N'2018-06-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1246, 10, N'c03051754ee84a7685d80a710f3682d1', 2, 4, CAST(N'2018-06-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1247, 10, N'6a5381912a50443db38009b45d0db2f1', 1, 4, CAST(N'2018-06-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1248, 10, N'f5692f21247d4e71bc421e0c0a1da6e0', 0, 4, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1249, 10, N'dc7fa2e7ca874db581c58ee3a44ff24e', 1, 4, CAST(N'2018-07-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1250, 10, N'68a00f3ae15b4dc5ab5e5e156b06f16a', 0, 4, CAST(N'2018-03-06T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1251, 10, N'671d36c2b4694ce4812e38a881fd03d5', 2, 4, CAST(N'2018-02-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1252, 10, N'16a09f3623304288afcaf5408b174977', 2, 4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1253, 10, N'0349c4c731244a54831448badfa194f4', 1, 4, CAST(N'2018-02-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1254, 10, N'16790a0bf1a24402a969bb4b59846c8e', 0, 4, CAST(N'2018-05-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1255, 10, N'c5d8693fbc6348c7941752e87da0a6fb', 1, 4, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1256, 10, N'820b4c0e7ef94624af34567e41b113ce', 2, 4, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1257, 10, N'bc3edc2368a7425d9784c395348e81c1', 1, 4, CAST(N'2018-02-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1258, 10, N'56a872e7bc66468a94c22cb6088d4aa5', 2, 4, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1259, 10, N'4e3e0bf9105447b1948c8b8958640f27', 0, 4, CAST(N'2018-02-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1260, 10, N'4e8e2956fa734502a1fa8eb64a434b75', 2, 4, CAST(N'2018-04-14T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1261, 10, N'b1f79c1d104349b1b27c704fc7405e52', 0, 4, CAST(N'2018-05-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1262, 10, N'6a07e17531484e869f10ca2cedbbb7a7', 0, 4, CAST(N'2018-07-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1263, 10, N'e7234638038e42dd9c930b91ee15c346', 2, 4, CAST(N'2018-07-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1264, 10, N'cc705fa2d1ea4c3d84f6d6e37e3f382d', 2, 4, CAST(N'2018-04-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1265, 10, N'828e914518874f1d95c28bf57d6bc767', 2, 4, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1266, 10, N'843ee80e9a694daa8279efb7adacabf8', 0, 4, CAST(N'2018-03-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1267, 10, N'c6e98504da034c2ca3c3b1a9c6d667f8', 2, 4, CAST(N'2018-04-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1268, 10, N'a49645eb96984ba484f39e47068bd723', 1, 4, CAST(N'2018-04-19T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1269, 10, N'024df415107c41fcb5287051917b5e71', 1, 4, CAST(N'2018-03-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1270, 10, N'bcdadb9729754903a46be5a9d40c499a', 1, 4, CAST(N'2018-07-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1271, 10, N'3b874b4d65624a98826aee918c89d3c7', 0, 4, CAST(N'2018-05-16T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1272, 10, N'9dda5f215f3a4478b8a74ab32e8b912e', 1, 4, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1273, 10, N'ebb5760796f64861848bedb842de5995', 0, 4, CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1274, 10, N'cb0881f3f4b145a7bfd14677ee3bfe41', 1, 4, CAST(N'2018-04-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1275, 10, N'fda037b2f5fb4513b03b0f26f5ef9513', 0, 4, CAST(N'2018-01-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1276, 10, N'c3401cbdedb541bd95457884917c3d04', 1, 4, CAST(N'2018-05-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1277, 10, N'3cb9d1f929de4f41b2962bb0543e43ed', 1, 4, CAST(N'2018-07-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1278, 10, N'11659aeb03a3401aba5071c1e5130707', 2, 4, CAST(N'2018-07-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1279, 10, N'bd3f3fcafc664cb8abaa43705ed3da2c', 1, 4, CAST(N'2018-03-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1280, 10, N'5478f9dc02494dbe8bc0b37ac5d1ec01', 2, 4, CAST(N'2018-04-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1281, 10, N'fa43bbf371b5402793b9f8e93672924a', 2, 4, CAST(N'2018-04-09T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1282, 10, N'0629c39976eb4ac9a31b342534cc97e7', 2, 4, CAST(N'2018-03-03T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1283, 10, N'005b32a3e9c848439f796ab8b55a59b2', 0, 4, CAST(N'2018-02-22T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1284, 10, N'93a37543156042f09c590825e006dfed', 1, 4, CAST(N'2018-04-05T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1285, 10, N'e8f3e89273ff469082a8eccfa1080a46', 2, 4, CAST(N'2018-05-04T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1286, 10, N'5efd3854594b4d06b78232d4879b7c7f', 2, 4, CAST(N'2018-05-17T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1287, 10, N'0162c2ab188f4a8d9cd5d7eb78bfab21', 1, 4, CAST(N'2018-05-10T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1288, 10, N'034e729e4cd5425aa02cc73b5fbfeaf8', 2, 4, CAST(N'2018-02-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1289, 10, N'c44505d0a2d9438699a0dd14bf28b422', 0, 4, CAST(N'2018-04-02T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1290, 10, N'bc621fb125e44d2c9c7f66e511892397', 0, 4, CAST(N'2018-04-01T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1291, 10, N'40cf533f0d9041ef87dcff6b78ba9aaf', 2, 4, CAST(N'2018-02-13T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1292, 10, N'f653f4f87bae476dbeadc1933b3bf0ce', 1, 4, CAST(N'2018-05-07T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1293, 10, N'539a20dfe2cd4f379bf0f5d96e5aeb8a', 0, 4, CAST(N'2018-01-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1294, 10, N'c3c59bd2b77e4e199535dc5960c28fe1', 2, 4, CAST(N'2018-01-24T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1295, 10, N'28a17e1836304dea83c3db527ac123be', 2, 4, CAST(N'2018-06-15T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1296, 10, N'd8e5e6ae4b3f4bafb5d1d375b8bf71d4', 0, 4, CAST(N'2018-06-21T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1297, 10, N'e03814f9fe504305beb4b3e9977e2a83', 2, 4, CAST(N'2018-03-12T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1298, 10, N'8403fa7ae0f34de09a5554ce0f2ec470', 2, 4, CAST(N'2018-03-08T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1299, 10, N'adb83d4d65ea46c9acc7127e290d2479', 2, 4, CAST(N'2018-03-23T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1300, 10, N'88269e856dae426290cbb048e73f9bca', 1, 4, CAST(N'2018-03-20T00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ArticleFeedbacks] ([Id], [ArticleId], [Comments], [Status], [UserId], [FeedbackDate], [CommentDate], [FeedbackCount]) VALUES (1301, 10, N'2702c573b52244e09afb9fb091b616d3', 2, 4, CAST(N'2018-02-09T00:00:00.000' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ArticleFeedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Articles] ON 
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (1, N'APIs.json Is An Index For API Operations', N'<p>As part of the latest wave of work around the APIs.json format We wanted to take some time to help folks better understand exactly what APIs.json is, and what it can do for API providers, consumers, as well as the fast moving API sector. We are working on version 0.16 of the API discovery format, and we wanted to help get the word out about some of the cool stuff that is being done with APIs.json, as well as what is possible in the future.</p> <p>What is APIs.json? APIs.json provides a machine readable approach that API providers can put work in describing their API operations, similar to how web site providers describe their websites using sitemap.xml. Here are the APIs, who are describing their APIs using APIs.json:</p>', N'publisher_4', CAST(N'2003-03-15T00:00:00.000' AS DateTime), 4, 1)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (2, N'Setting rel=api Into Motion With Latest APIs.json Release', N'<p>Bruno Pedro (@bpedro) who has been building APIs.json into his API Changelog service, made a pull request to the specification recently, pushing forward the link relation conversation for APIs.json. As listed in the specification, we have long intended to make APIs.json an official media type:</p><p>It is intended that if there is sufficient traction, the media type ''application/apis+json'' will be   submitted to IANA as per RFC: http://tools.ietf.org/html/rfc4288</p><p>However when it came to expressing your APIs.json as a link relation, we didn''t even really have a plan in our road-map, resulting in a very generic allocation of a link relation for APIs.json.</p>', N'publisher_8', NULL, 8, 0)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (3, N'Quantifying A Minimum Viable API Footprint Definition As Real APIs.json Driven Portal', N'<p>I wrote a post the other day laying out what I''d consider a minimum viable footprint for API operations. My vision of just exactly what an API is, has gone beyond just the technical, ever since I started API Evangelist back in July of 2010. Early on I saw this was more than just about the API endpoints, and documentation, code samples, and many other building blocks were essential to the success (or failure) of any API platform, area, or ecosystem.</p><p>This recent post was an attempt, here in 2015, to quantify what I would consider to be a minimum definition for API operation. After writing it I wanted to take another stab at actually creating a portal, that would stand up to the API rhetoric that I regularly produce. What better place to start, than my own personal master API stack, where I am working to get control over my own infrastructure. Once I got a version 1.0 definition, I forked it, and setup a default API portal that I am calling my demo APIs.json driven portal.</p><p>I''m going to create a minimum viable Internet of Things (IoT) version of this portal as well, and use APIs.json to deploy different interpretations of what constitutes a minimum viable API presence. If you have anything you''d like to see in my base template, let me know. If you want to fork and add to, then submit a pull request, even better. I''m just playing around, but also looking to establish a suite of APIs.json driven tools, that help me(and you), better understand the API space.</p>', N'publisher_5', NULL, 5, 0)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (4, N'A Breakdown Of My Dream APIs.json File', N'<p>I''m continuing my work, to help people understand what APIs.json is, and the varying ways that it can be put to use. My post the other week, breaking down Fitbits APIs.json file is a good example of where to get started, and as a follow-up I wanted to help further set the bar for what a minimum viable APIs.json looks like, and today, I am going in the other direction--toward my dream APis.json file.</p><p>I have been staying in tune with the API space using RSS feeds, and the Twitter and Github APIs for a couple years. I’m just now developing a deeper understanding of the overall API space through the generation of machine readable API definitions for popular APIs. I can’t do much on the API licensing front beyond launching API Commons, but I am working to define pricing with my api-pricing definition work, and also trying to capture the vital meta-data I need about API operations using api-questions.</p><p>This post ended up being longer than I anticipated, but it is helping me beter understand what some of the next steps are for not just APIs.json, but also my own monitoring of the space. My goal is to not just push forward the APIs.json definition, but push forward my understanding along the way. Who knows maybe I''ll drag you along too! ;-)</p>', N'publisher_9', NULL, 9, 0)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (5, N'A Minimum Viable APIs.json File For Your APIs', N'<p>''m continuing my work to help people understand what APIs.json is, and the varying ways that it can be put to use. My post the other day, breaking down Fitbits APIs.json file is a good example of where to get started, but I wanted to help further set the bar for a minimum viable APIs.json.</p><p>APIs.json starts with a basic set of descriptions of who you are, the API provider. Each header of an APIs.json file gives you a handful of parameters for describing who you are:</p><p>The next essential element of an APIs.json file, is the APIs collection, providing you the ability to describe one or many APIs as part of this collection. Similar to the parameters provided for the header, each API entry is allowed a handful of parameters that describe the API:</p>', N'publisher_4', CAST(N'2012-05-08T00:00:00.000' AS DateTime), 4, 1)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (6, N'Breaking Down The Fitbit APIs.json File', N'<p>The quantified-self API Fitbit recently added an APIs.json for their domain. Their usage of APIs.json is a perfect, dead-simple, introductory example of how APIs can start putting APIs.json for their API platform. To help other providers understand, I wanted to take a look at the moving parts of Fitbits APIs.json, and to assist the conversation I labeled each part.</p><p>So what now? What does this do for Fitbit?</p><p>It makes the definition of their API portable. It acts like a sitemap.xml for their API program, allowing search engines like APIs.io to index Fitbit along with other APIs. You can also develop embeddable widgets, allowing the API information to be displayed on any site, and using Github and Twitter APis, and the Blog RSS, you could also pull other relevant information for display, and search within the widget, on any website or mobile application.</p>', N'publisher_4', NULL, 4, 0)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (7, N'Using APIs.json For My Microservice Navigation And Discovery', N'<p>I’m rebuilding my underlying architecture using microservices and docker containers, and the glue I’m using to bind it all together is APIs.json. I’m not just using APIs.son to deliver on discoverability for all of my services, I am also using it to navigate around my stack. Right now I only have about 10 microservices running, but I have a plan to add almost 50 in total by the time I’m done with this latest sprint.</p><p>Each microservice lives as its own Github repository, within a specific organization. I give each one its own APIs.json, indexing all the elements APIs of that specific microservice. APIs.json has two main collections, ''apis'' and ''include''. For each microservice APIs.json, I list all the properties for that API, but I use the include element to document the urls of other microservice APIs.json in the collection.</p><p>All the Github repositories for this microservice stack lives within a single Github organization, which I give a ''master'' repo, which acts as a single landing page for the entire stack. It has its own APIs.json file, but rather than having any API collections, it just uses includes, referencing the APIs.json for each microservice in the stack.</p>', N'publisher_2', NULL, 2, 0)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (8, N'My Experiences Generating API Server or Client Code Using Swagger', N'<p>When you start talking about generating server or client side code for APIs, using machine readable API definition formats like Swagger or API Blueprint, many technologists feel compelled to let you know, that at some point you will hit a wall. There is only so far you can go, when using your API definition as guide for generating server-side or clienit-side code, but in my experience you can definitely save some significant time an energy, by auto-generating code using Swagger definitions.</p><p>Using Swagger, I can get myself 90-100% of the way for most of the common portions of the APIs I design. When writing a simple CRUD API like notes, or for links, I can auto-generate the PHP server, and a JS client, and underlying MySQL table structure, which in the end, runs perfectly with no changes.</p><p>Once I needed more custom functionality, and have more unique API calls to make, I then have to get my hands dirty, and begin manually working in the code. However auto-generation of code sure gets me a long way down the road, saving me time doing the really mundane, heavy lifting in creating the skeleton code structures I need to get up an running with any new API.</p>', N'publisher_5', CAST(N'2014-02-07T00:00:00.000' AS DateTime), 5, 1)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (9, N'REST API Design: Bridging What We Have, To The Future, By Organizing The JSON Junk Drawer', N'<p>API storyteller J(a)son Harmon (@jharmn) has a new YouTube channel up called API Workshop. He''s going to be publishing regular API design workshop episodes, with the latest one titled REST API Design: Avoid future proofing with the JSON junk drawer. J(a)son provides a nice overview of how you should be structuring the JSON for your API, focusing on the usage of key / value stores. Ironically he uses APIs.json as an example of why you SHOULD NOT use custom key / values within your JSON. What is ironic about this, is that he makes the case for APIs.json properties, giving me a great starting point for helping folks better understand APIs.json, and why properties are key to its evolution, and flexibility.</p><p>The process J(a)son outlines in the portion of this segment that referred to APIs.json, describes the lifecycle of an APIs.json property, towards becoming more of a ''first class property'' There are three phases of an APIs.json property:</p><p>The lesson J(a)son provides, describes the journey of each APIs.json property, the difference is in that his lesson provides best practices for API providers who are designing new APIs, helping them avoid the creation of a junk drawer, and the APIs.json property format is being applied to define the junk drawer that we have (aka the public API space). This represents the fundamental separation between my approach to defining the space vs. many other technologists—I am trying to map out what we have, and get us the next step in our evolution, while others are working hard to define where we should be going.</p>', N'publisher_3', NULL, 3, 0)
GO
INSERT [dbo].[Articles] ([Id], [Title], [Body], [Author], [PublishDate], [AddedByUserId], [IsPublished]) VALUES (10, N'What Exactly Is APIs.json?', N'<p>As I travel around talking to folks about APIs, I spend as much time as I can, educating folks about APIs.json. In the course of my evangelism, I’m constantly reminded how little people, who have even heard, and read about APIs.json, really understand about what it actually is. With this in mind, I will be regularly publishing examples of what APis.json is, to help on-board everyone to Steve (@ngynx), and mine vision for APIs.json.</p><p>APIs.json is an open format, in partnership between 3Scale and API Evangelist, to help API providers make their APIs more discoverable, assist API brokers in aggregating multiple APIs deemed valuable within specific industries, and ultimately empowering API consumers in finding exactly the APIs they need to be successful--with a mission to make the process of API discovery as portable as we can, enabling it to live on any website, and be found in open search engines like APIs.io.</p><p>APIs.json is a machine-readable description of your company, and its associated API resources. For each API listed, you give it a name, description, and supporting properties, which may be as simple as providing a link to your documentation, or be as complex as providing a link to a machine readable API definition in the Swagger or API Blueprint format. One APIs.json detail, that I feel many technologists overlook, is that this isn’t just discovery in a hypermedia context, this could only be about the discovery of your pricing orj just the terms of service page (I know, a hypermedia format can descibe this, but I think you are missing an intermediary step to get the space there!)</p>', N'publisher_4', CAST(N'2005-06-01T00:00:00.000' AS DateTime), 4, 1)
GO
SET IDENTITY_INSERT [dbo].[Articles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (1, N'publisher_1', N'publisher_1@gmail.com', N'123ed27116a8464aa17a00d8012f09fe', N'429a1bee5fc84557a87d2d644899e34e', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (2, N'publisher_2', N'publisher_2@gmail.com', N'fa13ccfab28b48cab4771a70f5debb98', N'b46628da4b434a27a434218990197361', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (3, N'publisher_3', N'publisher_3@gmail.com', N'62d6f489fd9249999b5dd18c337f7371', N'6f809f19ff65424ba220aa5b71764b28', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (4, N'publisher_4', N'publisher_4@gmail.com', N'c1527bae05704b058338c6926aa8ae12', N'd50649ad3c8140da8677192738ae08dc', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (5, N'publisher_5', N'publisher_5@gmail.com', N'ebb7c9f241da4e4baf51fb93ed3a9e87', N'0bea01811d4746cd88aeeac7d3706470', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (6, N'publisher_6', N'publisher_6@gmail.com', N'4cda8825f59a4c9a944c6d45557db064', N'82b7ac7fa3d542ae939ac4b4d767cf78', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (7, N'publisher_7', N'publisher_7@gmail.com', N'5058f4969b534af3945f2cf5eb45918b', N'53a187cbdd7c4984945393229976a8fa', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (8, N'publisher_8', N'publisher_8@gmail.com', N'657f593f9d4443dd9c053dd99390b810', N'88cd0951f3604ccc910b5177adf6d008', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (9, N'publisher_9', N'publisher_9@gmail.com', N'9d4f5d8bb14641b890cf9936cafe2a2e', N'9ac34a40c0b74fa2b149ef0e68c8757d', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (10, N'publisher_10', N'publisher_10@gmail.com', N'2f48e9db0c2f45bbba847a8fcdcc656b', N'00d2421a288c41b4ae98400e5fab0734', 0, NULL, NULL, NULL, 0, 1)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (11, N'employee_1', N'employee_1@gmail.com', N'705a53911d854df2a1e3e0b9e34404cb', N'675a4c499668479ebfcd43cf24848b6f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (12, N'employee_2', N'employee_2@gmail.com', N'fd4a73de3f2c49018477018db8929edb', N'82ac89b64c5f43878092aba7011ebc73', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (13, N'employee_3', N'employee_3@gmail.com', N'f03a09d6c58c48afae3b8ad77a3fd4ca', N'e30df01f75f54ab798bca63c2a2b514b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (14, N'employee_4', N'employee_4@gmail.com', N'4004338dd0934c5ea41f0953b8e901f7', N'd78c056a84cc444ca41bf6e2ead4871a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (15, N'employee_5', N'employee_5@gmail.com', N'e9c503703fd540f99a2c5f934cd4aca4', N'f4c78f372b284b7d97d867f7caf6b595', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (16, N'employee_6', N'employee_6@gmail.com', N'd54a86ead2454adfbee7bc55bf3a2fd7', N'1801daf6462e42729a94129d84ea5b9a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (17, N'employee_7', N'employee_7@gmail.com', N'7db386c6161c441d9d5abac8329ecae5', N'7a2c423789424e2c9511732585298351', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (18, N'employee_8', N'employee_8@gmail.com', N'ccb86fc52c2a4768a61cab277b377fd8', N'2c126a1f85a643a2bc30c8a26a5cd68d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (19, N'employee_9', N'employee_9@gmail.com', N'625dd609c41f4e948013535ea9c0fa3d', N'8a0c9b2e68ae4a10b36bc6aacf0409ab', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (20, N'employee_10', N'employee_10@gmail.com', N'22d9ba114f9043b0950891117b5e3e60', N'b44198df1e074461ba5d805a690ba425', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (21, N'employee_11', N'employee_11@gmail.com', N'9f33f56880124e849a2f11650b452599', N'642f87647f54498b93fde1c6692ea9f1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (22, N'employee_12', N'employee_12@gmail.com', N'00eea5c5aa1e40739889c6db2310a566', N'46cb687ee6e5439ca55fae2553294b42', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (23, N'employee_13', N'employee_13@gmail.com', N'1e3b4ef1a13d4747ab543f02d24be754', N'41088ba3993f4ab6aad11bda85d237d1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (24, N'employee_14', N'employee_14@gmail.com', N'44821c8e1b9b41c3a073c6fd8771b246', N'e2450c3642d94632b9eb576e9c8d0964', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (25, N'employee_15', N'employee_15@gmail.com', N'f2b123b4355d4a01a8ceaa38301e05ed', N'5a97d3ca266a48d2ab407cfe94209f59', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (26, N'employee_16', N'employee_16@gmail.com', N'4fa6d94657fa430ca86b7941097c6266', N'fe7c537ae6de46fbb881775ec797e07e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (27, N'employee_17', N'employee_17@gmail.com', N'95009322078d433b844d74fa969ebc7a', N'd2cda3d5453a42a9bc60123da704ab11', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (28, N'employee_18', N'employee_18@gmail.com', N'd28c1abcd1f74259b339a75c0a414f4c', N'1820ffa8ebf74f828a39b8a5617017b6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (29, N'employee_19', N'employee_19@gmail.com', N'4f7e2ae11ce04281b222d0459be23545', N'309a2e8b25ce4bc7b0d43a145ff501e5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (30, N'employee_20', N'employee_20@gmail.com', N'b6f6797ceee549298592a7d1e2df42a5', N'ee3caea385894428ba54d84a45a45eda', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (31, N'employee_21', N'employee_21@gmail.com', N'8f4a905e75f84a97bed34e66a3b2480d', N'c65ba4c3b3bd419d91a65b4310a6fdc8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (32, N'employee_22', N'employee_22@gmail.com', N'9326dba92cdd4b669c707c907919dddc', N'6ffa4dd67288420d90c5beed283904d1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (33, N'employee_23', N'employee_23@gmail.com', N'bdca858a11fd437b97fb6d065fc59476', N'7c7db8c2cfa146a78218951fba5cb3ca', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (34, N'employee_24', N'employee_24@gmail.com', N'3f9377202f8649609b01004e335abf60', N'0b95ca2df71747f191c916e79dd80b6c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (35, N'employee_25', N'employee_25@gmail.com', N'd182a56d0ed4414db2fcab9ae094cb6d', N'df9b3cb24e184f6985821236f52b6384', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (36, N'employee_26', N'employee_26@gmail.com', N'ff67d223918b48c799931252b650c070', N'9925da06246845d29afa95ac085db19b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (37, N'employee_27', N'employee_27@gmail.com', N'b0c16fa6ede147798e96fc921026dd42', N'd1401da1b912404dba611e8566e8ea48', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (38, N'employee_28', N'employee_28@gmail.com', N'5d1289cc796c453ea33ef24f33b0522e', N'43fa6d0e4b094705af915f76b4cd68e5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (39, N'employee_29', N'employee_29@gmail.com', N'15b2337d6f8e420fa79c78de57228ded', N'e007a339c47f46dcbe014b1bbf473e9e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (40, N'employee_30', N'employee_30@gmail.com', N'059d51a384ca4367833b38b25bbe3397', N'028b01dff63f4dd7a608064549bc9d4f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (41, N'employee_31', N'employee_31@gmail.com', N'1868bc84fed2479c85cc347cdaa658c7', N'499f85bb17b54fac800fde9eca5e03fc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (42, N'employee_32', N'employee_32@gmail.com', N'f5047f36265940f49bac7d19ec915e08', N'80fcef7f799e4b988b03a1ad326d8510', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (43, N'employee_33', N'employee_33@gmail.com', N'b07508f862914993a5f9124cf1da58c3', N'020603a64b5a4c43bcc8e1f6c3df5808', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (44, N'employee_34', N'employee_34@gmail.com', N'4b2ff6cddc2c4afcae87bcf36af3a884', N'8862a89682ed45c58f5cdd8eccea59a1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (45, N'employee_35', N'employee_35@gmail.com', N'c02961307f8249afbafa42e30f1cff00', N'fc22f62d18014c4db4b889cf325f574e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (46, N'employee_36', N'employee_36@gmail.com', N'2f06699ee36c4d0da4420c092e60d7ac', N'2e448bf2b49845bf999fa1831bb833f1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (47, N'employee_37', N'employee_37@gmail.com', N'2ff2e2dd3379464da8848ff211c8d258', N'a7c25f144cd94c5d8c40f8442a3901bd', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (48, N'employee_38', N'employee_38@gmail.com', N'207e3723636b409baea3e80a54b61e7a', N'9d77465a45b545df93c9d39ddb5dfa33', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (49, N'employee_39', N'employee_39@gmail.com', N'ea37d0445a9f49ba9b74249dfbbcdaac', N'37889d0f20014484bc03028f4e4c7c8a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (50, N'employee_40', N'employee_40@gmail.com', N'c7a01afbf59f489bba44e555ae6bc7f1', N'3383695452464d7297863ad43f33f87a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (51, N'employee_41', N'employee_41@gmail.com', N'afb14e500205480e9c7570af7d7b392e', N'e24eb235c8cc4e008c8f944c8c5b5bd6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (52, N'employee_42', N'employee_42@gmail.com', N'fd5f37ff26ad452aae18c060c2dc9996', N'f9e47b4c6f2941629ea87607c68d9df9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (53, N'employee_43', N'employee_43@gmail.com', N'7ebd17d4b3354404886f0fb4572b4837', N'2f111d394c114f4a9b112e42f0ee419f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (54, N'employee_44', N'employee_44@gmail.com', N'8c1258968c944e7d90f991c83b53b99a', N'd866cf89c4ea4ebc89fca0b67b77047f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (55, N'employee_45', N'employee_45@gmail.com', N'af66b40aba6047e5b27f17d7800031a2', N'ed252e0e62ef49788bc89583865c5666', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (56, N'employee_46', N'employee_46@gmail.com', N'e98654942ff442c2bb57db593eddbc17', N'34a35655fe23430687ed7f9e585c732e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (57, N'employee_47', N'employee_47@gmail.com', N'37e1d090177149caba668b90b96c22d4', N'91365e93961345b9b6c9a51816a69933', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (58, N'employee_48', N'employee_48@gmail.com', N'55128acdce474ec29612db26db09b081', N'4e5e0fbc5a4244b5850a7f35cee77bfb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (59, N'employee_49', N'employee_49@gmail.com', N'7fc3e9ab0208421ab6087b3b2be3454b', N'2845c9c66e2440839e0011014abd8678', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (60, N'employee_50', N'employee_50@gmail.com', N'de7f1381c084492a8c7218fed576cccd', N'de395dde9bfd4c8f9b32ca97962c6bc2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (61, N'employee_51', N'employee_51@gmail.com', N'93e8d221b36747f9bc3c6f668f2987c3', N'0c71499cba1146cc9652b3c2cbeff064', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (62, N'employee_52', N'employee_52@gmail.com', N'24c3536374eb4e9a88541949566f888f', N'3164ccd63ed042c89a29d4d1501d3f00', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (63, N'employee_53', N'employee_53@gmail.com', N'e8e3fc7b0acf494d90a9b522e5dd6839', N'5d4b401a08bc4c42ac6e706946b7d4f9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (64, N'employee_54', N'employee_54@gmail.com', N'3d03e636893a447e8243a32277e83b7c', N'703dc14e6c4d4bc682b8c3f984a2f32e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (65, N'employee_55', N'employee_55@gmail.com', N'300121b1b5e440ce807f124cf731eabd', N'2e99f66bda714d82b84f74fb16bbbee0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (66, N'employee_56', N'employee_56@gmail.com', N'3be6cc0ae0614b12ae877d891cf8240f', N'7eb5f27e8015432a9719803f4b3bf19b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (67, N'employee_57', N'employee_57@gmail.com', N'51858e2641794fa4ac331f9d71d67162', N'9119ae59a2c040598ea43bd102bf4aa8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (68, N'employee_58', N'employee_58@gmail.com', N'fb99f165cfe4423bb7f569cff55b0414', N'ccd5f2d283d04c0891a5df4ccb5d9514', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (69, N'employee_59', N'employee_59@gmail.com', N'60979b9db82f4a248e4d46603f930c87', N'308765f0862c45ce9a75b6bbe11bba55', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (70, N'employee_60', N'employee_60@gmail.com', N'046cd55549a543558583a39e5c524169', N'f6c2e375c63741ce9cb23179862a87c5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (71, N'employee_61', N'employee_61@gmail.com', N'cd9cbe54eb964887bf86c67f1621a3ac', N'833155c8ac294c15a71f39d3369f29d3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (72, N'employee_62', N'employee_62@gmail.com', N'f7934888758b46a9b701de21b222c678', N'c0778906663448639f1917e8f52ff258', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (73, N'employee_63', N'employee_63@gmail.com', N'8e3ed545da544c7aa4718f6fc894e548', N'925729634ae84c749ee979d7a6fb753a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (74, N'employee_64', N'employee_64@gmail.com', N'c8092ecbbf9b4057bcd59aa6ca4d54f4', N'dccea2a48fe94153b697d188b5b576f0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (75, N'employee_65', N'employee_65@gmail.com', N'62a1ad6668874a948ea23c14fbb84346', N'c42bfeeba2664e12ba1946a9ac89fd82', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (76, N'employee_66', N'employee_66@gmail.com', N'ada825fcd9434f21a9446e8128517def', N'e241e940e6114ea3b4d006d9770bbbc3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (77, N'employee_67', N'employee_67@gmail.com', N'24f9cce402a545f2a45602670a2c8991', N'935f623aa57046a0a54acffd720eb034', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (78, N'employee_68', N'employee_68@gmail.com', N'9fad42b362374ccda39fdb34dd462ff9', N'066d5e2325e34ec3b430e200b5708765', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (79, N'employee_69', N'employee_69@gmail.com', N'ce96bb2236014c36a30493b21db5df10', N'3560777ac2c44eae8ceaa716230de4f3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (80, N'employee_70', N'employee_70@gmail.com', N'aa352851cd7f40548df7b12fcc205c0d', N'9b4030fee54b4c6a8a645637ee388d3f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (81, N'employee_71', N'employee_71@gmail.com', N'2dc70ab400a541f09b49580220f20114', N'695eda171c434f29a078613f5401d177', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (82, N'employee_72', N'employee_72@gmail.com', N'ff38f5aa6d214ec0abf7d4495f65cab7', N'8aa91ee4fcab4a599a6eed131e0348b5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (83, N'employee_73', N'employee_73@gmail.com', N'0ce603e5bdda4b34afe167291ba5296e', N'68f2cdc0eef046a5b77089fb2bab1e1a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (84, N'employee_74', N'employee_74@gmail.com', N'5e2b39c35ab641a8bc14b94552a4ce42', N'de110621c59d44ee952cf57ff9d74d42', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (85, N'employee_75', N'employee_75@gmail.com', N'11ddf782e1da41cdaf8ffae5077f6395', N'd9744b64702140dfa865e6e1af82ad50', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (86, N'employee_76', N'employee_76@gmail.com', N'319c5f9ba9f2482d874f93a86a725bc3', N'94033c682ee24ea19002e88de376cd18', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (87, N'employee_77', N'employee_77@gmail.com', N'60d9474b45cf4b8ba38b19dcfd207bc4', N'38a2d8c3e9474bafaf13c19f195bfa7f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (88, N'employee_78', N'employee_78@gmail.com', N'40c92ddf49c64334b1d407313dbf5345', N'7e81b92a14ad4dcd9ccd020d5111600a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (89, N'employee_79', N'employee_79@gmail.com', N'54f24a0860fc4b98ab63ba9fe92f5c35', N'388ac160406f4462a76519f4ef92d120', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (90, N'employee_80', N'employee_80@gmail.com', N'3ae5818c58e042d2bfef0c34e5e91347', N'd23ebd3e71fd47d594b271013caf2d1e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (91, N'employee_81', N'employee_81@gmail.com', N'62ffb4187ebb4699a481c5a8cf8c5e0c', N'3171e23f6b554f0191cae11bab0606bc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (92, N'employee_82', N'employee_82@gmail.com', N'efe6b389235748d99262020eb97dee00', N'4587815116c0476db9d7a15e84c91eee', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (93, N'employee_83', N'employee_83@gmail.com', N'acd0d940befc4bcba7603e25737fb441', N'dc938ad7b3154540ab8eb7f76497d8fb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (94, N'employee_84', N'employee_84@gmail.com', N'098a6005867347dd824fe6cbbfa266ca', N'362d3cef047b49d38b8e1d78b6d053b3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (95, N'employee_85', N'employee_85@gmail.com', N'cb69b2e0633d41e1a8f9e75bcaf136d1', N'c93abd6405f6479eb6cd60bbd11ea84b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (96, N'employee_86', N'employee_86@gmail.com', N'1a4f5c2f3a9444a1aa4f16b67f74132e', N'8a9e0369e8274398ae3051feef193ebe', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (97, N'employee_87', N'employee_87@gmail.com', N'322d70ff4d82464baab015bd5451f16c', N'8880a5c4d5fc4ba8a292f6ee7ad2aa63', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (98, N'employee_88', N'employee_88@gmail.com', N'0bd029c69df0465880c4f46fed15eab6', N'31ba23e8e3dd4324b05832c2dc8d8f86', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (99, N'employee_89', N'employee_89@gmail.com', N'd0e6b2437a2c41f99ecd3b99abf8b8ee', N'ea45911f45224cbbb3e1906b994febbe', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (100, N'employee_90', N'employee_90@gmail.com', N'db0c8ce0e42a4c60ac5e5aa65ded1c78', N'a33c76191efa42f7a8c04ef04ce05f0d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (101, N'employee_91', N'employee_91@gmail.com', N'6dbe8e64762042b09813d9de3a45b7f2', N'5f5733f882cf4c288733062b96286596', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (102, N'employee_92', N'employee_92@gmail.com', N'8d387ccc3e094b2699b976b5e1a2e077', N'0e67fa7c448b49fabfc1ef8ddcae3edf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (103, N'employee_93', N'employee_93@gmail.com', N'5e58e943c73e492aa3d3960b33da957c', N'0ac605c18b1e4f4eb56cf60347f69370', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (104, N'employee_94', N'employee_94@gmail.com', N'b136b09e52454662a15281281842a7b9', N'6dcb0d415275415497e301ee1e64af81', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (105, N'employee_95', N'employee_95@gmail.com', N'25c7f025409446b3abb3ad4617dd359a', N'd9be717bc92146ea9425f7e2e3d3644c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (106, N'employee_96', N'employee_96@gmail.com', N'3f0ab1d5c9d845bbbcfc25aed860e00b', N'ba6ad75158a745e68e9da1fc97af8b7e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (107, N'employee_97', N'employee_97@gmail.com', N'93bc02e181fe4e99aa91e9c4dbb5433d', N'a99026a0b44746fb858d96b83074008f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (108, N'employee_98', N'employee_98@gmail.com', N'737f9b7e99f043dc903a8383a4c736e2', N'aafe6366d3aa41af87160f3992a46e85', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (109, N'employee_99', N'employee_99@gmail.com', N'3b7f263562954c0dab968a0af7013f37', N'853350e6b3b54b3c9e45d246ebd2c8df', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (110, N'employee_100', N'employee_100@gmail.com', N'778649f7fc6340028efdf7ae342bdb52', N'5c0ac006bb6d42d7b5f99f022312c29e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (111, N'employee_101', N'employee_101@gmail.com', N'37b5b245ef0146be89c5f8cfefca4dc8', N'e6d160b44b854efda7dc3567b4b87043', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (112, N'employee_102', N'employee_102@gmail.com', N'70a2f4210e864c719fb3b4339f816873', N'aacd9bde4e7546329f4559c93e59fa91', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (113, N'employee_103', N'employee_103@gmail.com', N'20c6b17703a8413e91b877a8bfb7b7f2', N'1950c78988c64817ba3fe5c3111b74a7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (114, N'employee_104', N'employee_104@gmail.com', N'b80d196d663c48e3b85aa2d6e07ff4ea', N'ef422508279e43d38f48e4b28b66b24d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (115, N'employee_105', N'employee_105@gmail.com', N'0ee6d4c5d1ed468782f54a06bebb0e8d', N'5937472288914d85a930ba4db1b31710', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (116, N'employee_106', N'employee_106@gmail.com', N'b2ce2e48b7714560ac308d6f63c96ca5', N'070169b924cf4deaa9f330b87991bb63', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (117, N'employee_107', N'employee_107@gmail.com', N'3e49b37aa3854d6fa16da3924dac5aba', N'8949c03acb764e19ada876d639387aee', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (118, N'employee_108', N'employee_108@gmail.com', N'e15fcfc93aa44a6f9d73b266e17a6cfd', N'bfd1f6834c6d4a518fda9012e4f57841', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (119, N'employee_109', N'employee_109@gmail.com', N'19093e17332d41bdbfa3581cfe3562c9', N'b696fc87f2ae4615bbad259e903605f7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (120, N'employee_110', N'employee_110@gmail.com', N'6612df7340654933b77c7a9b6ae1975b', N'0542486e70fa49e8a553dc6e3f9322b2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (121, N'employee_111', N'employee_111@gmail.com', N'd44dfeed66364f698ff0ac3642899c56', N'494959cd861b4e79b45ed4a0ad29b8ce', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (122, N'employee_112', N'employee_112@gmail.com', N'8af0936744c34a558698343adefbb978', N'977c758e3ee6481f91981f14c241a346', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (123, N'employee_113', N'employee_113@gmail.com', N'a93b4ac009404b3f8235d477eb8eb987', N'a8aa3bf850074a8abd453c62c89a7e85', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (124, N'employee_114', N'employee_114@gmail.com', N'd5c31d8eefec4ad29c5de6e4076c91b0', N'cc32d06d1b1c436a890393242bd002c2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (125, N'employee_115', N'employee_115@gmail.com', N'4477230369bc471089faf87914447516', N'ecd1c0e950594caa9967ea19c93fed0b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (126, N'employee_116', N'employee_116@gmail.com', N'eaf83f9282cf4ea496105365784f8c5f', N'da5ddc03331349fab183c6b930337f61', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (127, N'employee_117', N'employee_117@gmail.com', N'a15addbba40c44a7a8bbd1a8474d9deb', N'9eb8058789a9427cb327a4ce999aa9f1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (128, N'employee_118', N'employee_118@gmail.com', N'7822793b4be3493bb0d65144004d7944', N'dc623bab962b4455ac7675e2d975e98a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (129, N'employee_119', N'employee_119@gmail.com', N'a8970d400865466bb4678bb0c62645f8', N'f577b66610e946c586d861468d8eef6a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (130, N'employee_120', N'employee_120@gmail.com', N'9ae76b21bc854d70867d669a63260844', N'9aa46787b9da4cd2ad691a6e4e00e57d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (131, N'employee_121', N'employee_121@gmail.com', N'6735b852665845d9a3a5733cbf82f356', N'121a72fb494647acb36cd70e43038a3f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (132, N'employee_122', N'employee_122@gmail.com', N'4cdacffa44894d13aef88f7a1635fe25', N'2abf8b9cbea549ed9806f6f05f83dbb1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (133, N'employee_123', N'employee_123@gmail.com', N'36d6ce743d5c4b1daa0cfc47836fadc0', N'c82c518b26be48ae8f1b7567d02a5d6a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (134, N'employee_124', N'employee_124@gmail.com', N'3f083e3bcd5b414aa0ec487b3a326eae', N'dda7aa89fb454443a3bc56f7523e1f23', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (135, N'employee_125', N'employee_125@gmail.com', N'6feda7bb50dc47f287ea991215bae0a8', N'c03e16afd003491c979e656491e067b4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (136, N'employee_126', N'employee_126@gmail.com', N'59c9fe72efb3468ab3c47c938c0f5e4a', N'a9651564db0b4ce1b05836e2e379a8f2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (137, N'employee_127', N'employee_127@gmail.com', N'1ceb73549e2c45c19f7d6f94fb6b8b10', N'fcca1b2dbaf0411fb9817fd2b870147d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (138, N'employee_128', N'employee_128@gmail.com', N'54f683e272ae410983dc2fc78510766e', N'd1fbc960be334d468122a645a3d2613a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (139, N'employee_129', N'employee_129@gmail.com', N'd9a22444275a49da831998e9a9ee67d5', N'0cd4943537c54fc09e2ce569a727eebb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (140, N'employee_130', N'employee_130@gmail.com', N'2abf8dd2b2e445ac830362da5db33e63', N'8fbb7bd17d3f4ea59dd9968b6dff984f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (141, N'employee_131', N'employee_131@gmail.com', N'3f9a99a53cfd4f0f93bae4a26d4b39eb', N'af5180eb1bfa40b58b0eb41635d12af6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (142, N'employee_132', N'employee_132@gmail.com', N'56c06886d4374d77a281af9253eb86fe', N'3203c83b90624708b026ab4f24c3e8b4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (143, N'employee_133', N'employee_133@gmail.com', N'adec618a2af2442eb848055b669dd886', N'6527cff8536f4ae1a24c74a444ae1e9e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (144, N'employee_134', N'employee_134@gmail.com', N'fcb94df24247488981f1691e3317979f', N'14e7de58e2a846069cb6df5205991cb1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (145, N'employee_135', N'employee_135@gmail.com', N'71765e6d12aa4f63a51d5eac0f0d284c', N'd01af71a69ad4fbcb4f774486244ed88', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (146, N'employee_136', N'employee_136@gmail.com', N'0f45df1fe03942c7a704555c29993d38', N'd558f13037f043da886adf3de13d420a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (147, N'employee_137', N'employee_137@gmail.com', N'ff0f4bf6fd14447faee5037fe2eaa856', N'515fe4f5770b4c428ab5329940dd2543', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (148, N'employee_138', N'employee_138@gmail.com', N'6a9cc7d60ff34794b8300c16fc036cc1', N'667702c343cf4b95b23d13347ebd274a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (149, N'employee_139', N'employee_139@gmail.com', N'17156d1fb4264a808c862ac8d832890e', N'1a7548a4b58c41be9260d6445588f999', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (150, N'employee_140', N'employee_140@gmail.com', N'fa2f332c3f144eff962e559d08c53390', N'124cef05ef0e4f1e8377248f1e261e28', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (151, N'employee_141', N'employee_141@gmail.com', N'6b4f58a5bd064c63b109b19c0ef81097', N'fa44f2de905b4c0cade5f840abd904ad', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (152, N'employee_142', N'employee_142@gmail.com', N'5c1da95f592447c58b3783fe4c700dd0', N'e9976e376e78446e8a254267d6090ed0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (153, N'employee_143', N'employee_143@gmail.com', N'ca90ee7f69f1491da8a64a07ceb2486c', N'f9e23f44228f4847bf70a438b0156d36', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (154, N'employee_144', N'employee_144@gmail.com', N'b9156c9206844f4f8f3fc357a6d31c61', N'a21901a4e1d34df1adbf4f7b30d136cf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (155, N'employee_145', N'employee_145@gmail.com', N'f28fe6e81ed44528beed540f1b51371d', N'865c8ac48c80473d818c16377d88cb86', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (156, N'employee_146', N'employee_146@gmail.com', N'530642d636a64bcf9d2d31eeb76c07b6', N'22d63da5db23424db05b4babb3be194b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (157, N'employee_147', N'employee_147@gmail.com', N'dbd2debc4dbe4ae7bc3720ff119e32fc', N'64579429c2dd4d57ad029382f287f4a0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (158, N'employee_148', N'employee_148@gmail.com', N'607dff708e754c729a10ab6da2976e40', N'e51e7502cc8e4eeb8cec07b672e67b78', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (159, N'employee_149', N'employee_149@gmail.com', N'a6905b0ed9ca450ab52e9139695277ea', N'2fa6980d5e6143768808451313e8e91d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (160, N'employee_150', N'employee_150@gmail.com', N'a8e2bacfdb24474eab2a0f41004802ec', N'a1283b2ef7d740429276af886e1ae242', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (161, N'employee_151', N'employee_151@gmail.com', N'6fbb366689a1498eba0de47424c55ef0', N'8c5ee5f8b616405b9039deaa573e8c03', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (162, N'employee_152', N'employee_152@gmail.com', N'a53e8999880f4f71ad4710fa7659b38e', N'ea5b82cd8b9f4156bc8b9c1bbf045e09', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (163, N'employee_153', N'employee_153@gmail.com', N'485da9ac744243b39ad692eca073e307', N'317c1fa1535a455bb579ee400d92e5b0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (164, N'employee_154', N'employee_154@gmail.com', N'f9eb7fb65e2044b79ce2060cb895bde6', N'61478c993ba149768c5d18eb19b586da', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (165, N'employee_155', N'employee_155@gmail.com', N'37c6b14865b64364ae791c7eaba49e16', N'422dcc57549f4ff8b37d31724cb1b6d9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (166, N'employee_156', N'employee_156@gmail.com', N'17cc68e956b742e2a63dce3296d3f414', N'4f20b9ab281b4b8e91a776b90780cfb3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (167, N'employee_157', N'employee_157@gmail.com', N'a9c056baa50648afb844031643856a68', N'b85e64337fbf4b8c8cee83fcf33ff6f2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (168, N'employee_158', N'employee_158@gmail.com', N'e1df356b27a14fae9f3fb2a6314da9ea', N'f0a086c882ee47a7a9cc6a64fc1de53c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (169, N'employee_159', N'employee_159@gmail.com', N'55b9fe8052284f9bbc8cdf1db0d55181', N'4ba0e09dfadc42408e8cca798dd4e008', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (170, N'employee_160', N'employee_160@gmail.com', N'23179a2d9b4f43e1a90d166766a92408', N'24ca1f4d887642118b25113218298fb7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (171, N'employee_161', N'employee_161@gmail.com', N'96bb95dfadde48b596488afca4af0a83', N'74a6756dccbe48c69b35599670f899a2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (172, N'employee_162', N'employee_162@gmail.com', N'aab5ecd33cba44048537ad9cb8da2cb4', N'b881e25aa3184651a865a5618fddb239', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (173, N'employee_163', N'employee_163@gmail.com', N'78b8b9dd9b7e41e4bf7b3314dba9dd20', N'f6f95ff09a9b498caa3849c1c502d836', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (174, N'employee_164', N'employee_164@gmail.com', N'17c41a92f84648e584989f178f8958e5', N'ad24306c7f464d8796957e3f3ed73a60', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (175, N'employee_165', N'employee_165@gmail.com', N'9cd32af94c264e31b84c2714b7428880', N'd6456b7122724f54a367ff637e6074c4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (176, N'employee_166', N'employee_166@gmail.com', N'20d0a60623294689ad992f4d98736ca4', N'e3ee9755f06e4f2683478af70bb86f5b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (177, N'employee_167', N'employee_167@gmail.com', N'51c2f77aeb53479da989813e0463531a', N'6149d9a456534afeaeaec683f67bdaa8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (178, N'employee_168', N'employee_168@gmail.com', N'8c1611664efa423c90b46943a327e543', N'c878a3614a4e4202875e97b0bc722d6f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (179, N'employee_169', N'employee_169@gmail.com', N'640bc77052ca4d60a42d1e4e202db425', N'47575fc6b7fb46749fdc10527ec52483', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (180, N'employee_170', N'employee_170@gmail.com', N'f53b88d686794856a360c1aa353af6d0', N'b5786832c9194dd9b1dafd70a09d2a5f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (181, N'employee_171', N'employee_171@gmail.com', N'ee7d4458333c43e0bf77b43340af442d', N'e9edb62bd4114c21b88d1b61e7fa4ab3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (182, N'employee_172', N'employee_172@gmail.com', N'40b030203c864b9b86853fbc703bea46', N'17dab3731d654fdaa0ff26a7a8e3b9f8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (183, N'employee_173', N'employee_173@gmail.com', N'b795d786c75a4ff881dace796032bacb', N'2e42be4ce7ea42ce90677d8c5cd8ee2b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (184, N'employee_174', N'employee_174@gmail.com', N'dbd88722571f443bbd686d03729c7586', N'8b8ad5048f4b4ca9899827841d0c4cc9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (185, N'employee_175', N'employee_175@gmail.com', N'de5e8f285a2d4a7a91b7b9778b121d83', N'23727f36ca624950b298ff571d870c74', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (186, N'employee_176', N'employee_176@gmail.com', N'a43d6fc02ad741239c614c21b7a6cde8', N'25ba24e27a444919877f6025184f8607', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (187, N'employee_177', N'employee_177@gmail.com', N'fcd6cc5f1efd4c60aebccae9f26af4bd', N'ec180291d0de44c3856e81a5fb893a69', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (188, N'employee_178', N'employee_178@gmail.com', N'dedfc43f2f1144d4b463a5502dcb7c12', N'6d98a66480744ec091819b49ad577fab', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (189, N'employee_179', N'employee_179@gmail.com', N'98209f5e5a55429e8d3d3f92a417eb43', N'c97ad363190d4d8aa48975682b601c4b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (190, N'employee_180', N'employee_180@gmail.com', N'b4749ececb334616a2a2f81ba0d0a94a', N'8caeac6440ac4086a4ede88dc19c60cc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (191, N'employee_181', N'employee_181@gmail.com', N'ba1d2810f191412caf05198a68ba4780', N'c2ae03bc24734467bdc5f87bc2016130', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (192, N'employee_182', N'employee_182@gmail.com', N'82adf7f4ab4146288135ff97e96742b1', N'210750b5ad5147d38bbc56a90faff5b8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (193, N'employee_183', N'employee_183@gmail.com', N'ec9560c4059a4312885e62537820bb04', N'c7ca26b90edf4560bf2ff902a28e95a2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (194, N'employee_184', N'employee_184@gmail.com', N'349da01ff8ea420abda194b800bd997f', N'2fc58375adb842238654a5e2977803f5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (195, N'employee_185', N'employee_185@gmail.com', N'd4cc359d2e4b4f6da3f60db1d4ade361', N'5ce61df434834077b4d0b634e633f15a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (196, N'employee_186', N'employee_186@gmail.com', N'9c62bcc7f7e7432e81e044410d1cc241', N'f282213247ee44358edbceb9c2cb06fe', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (197, N'employee_187', N'employee_187@gmail.com', N'8314195cbced46be9ee13167eee40bd5', N'33c97d0c37914993bcc9b9b3c2c3c30b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (198, N'employee_188', N'employee_188@gmail.com', N'60c376fd44034208a5b420b0dcb71d7a', N'51130a3a4e0f40f7b3bb4b3f4eb1565c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (199, N'employee_189', N'employee_189@gmail.com', N'2855c70a5b4e44208d5e84bdf2be5bb4', N'237d8d3303564282ae9fafe52f3ebd84', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (200, N'employee_190', N'employee_190@gmail.com', N'0cc6102908194dfe949ec40ce4192aca', N'9034c8b8008c46c2a2618e89ae825902', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (201, N'employee_191', N'employee_191@gmail.com', N'6b996f9f32574d59895ab5beb9dfa2da', N'578906c4e9e247d4bfea2a685afd796f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (202, N'employee_192', N'employee_192@gmail.com', N'b62eb2b3a1074de393b16686d9ecbfd5', N'121b5e77838b41cbb56bb281fcbe776f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (203, N'employee_193', N'employee_193@gmail.com', N'160dc3b5b3ef468687bcbe1a5aa72270', N'3dfd2146365e408ea9a29e6d78cd56fe', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (204, N'employee_194', N'employee_194@gmail.com', N'd1324b2abcda4c9386593ac093f032cc', N'552daec84b1e4879a4d102548e6b5ef2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (205, N'employee_195', N'employee_195@gmail.com', N'e26c03cb94d341f9af83ed392a5fc3ae', N'3149ab47c1dd4b52b3cf26a5f9df8885', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (206, N'employee_196', N'employee_196@gmail.com', N'2bcbd417953e49879bc31dcd6e99b794', N'ddc628a05533436781945b7eb85b33bb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (207, N'employee_197', N'employee_197@gmail.com', N'888877eb223a42e4b8ffd72c166b816b', N'0f87efb6eaae489db6d4e6ddde14653e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (208, N'employee_198', N'employee_198@gmail.com', N'17b9f25c8a514b9c9577892011250034', N'3edd2233010843d4ad850c62de9ed11c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (209, N'employee_199', N'employee_199@gmail.com', N'4486662ced964ff3a6238f96ec330e6f', N'f659f98ed10d4974a475d501e325f2f4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (210, N'employee_200', N'employee_200@gmail.com', N'686c68a6bbc1481ea7d40998acf42615', N'3b84ec4ac6f8479aa96c58169cfde502', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (211, N'employee_201', N'employee_201@gmail.com', N'61c9c6ad2bae446e8ccad20b40d03b2e', N'f3e5d7f4024a4c25abf266084efc4623', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (212, N'employee_202', N'employee_202@gmail.com', N'240f5a109d2e42f682eec6ec395a0e89', N'597be15d25fa45df9b99f469d31be3a7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (213, N'employee_203', N'employee_203@gmail.com', N'6b4c756aeb3849d48ec892b99f915e73', N'e37ba71f3540470da48cfca5986e2b10', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (214, N'employee_204', N'employee_204@gmail.com', N'c8c0182c28ae4ed294e30eb05bd2bd8e', N'ad5dc647e172408a9fe79fa1ec111ce5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (215, N'employee_205', N'employee_205@gmail.com', N'28119a7a4bd0479d9d4bf41c777b9f01', N'64f088b8dbfc453889b7da532fc97051', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (216, N'employee_206', N'employee_206@gmail.com', N'902321d7540b4539b497b6aebc9baad4', N'7764f56672dc4a3cbc6ad9369eb62f6d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (217, N'employee_207', N'employee_207@gmail.com', N'dfd9f9e1b476411bae44358109817da2', N'24ef0183cec042b19c76c50d9d71ae95', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (218, N'employee_208', N'employee_208@gmail.com', N'c73bf2e5f7094513bfe9f6e1bc6582ab', N'bba69bad9d1c40968978f295b1e92f5d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (219, N'employee_209', N'employee_209@gmail.com', N'de09b79a873845c987e337442d3bf7f6', N'3db84838687c4d2a96286d5a54894820', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (220, N'employee_210', N'employee_210@gmail.com', N'33ee58a192ab49a0892de1f290e0ccfa', N'9fd887d878004c8a8b564e33568a7d45', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (221, N'employee_211', N'employee_211@gmail.com', N'34b68e3d1b764162b2dbc7e45e39b9c2', N'fe245ce7edbb492889ad4e3a196622e8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (222, N'employee_212', N'employee_212@gmail.com', N'859395735ffa4509a1242a65c12ec50b', N'5b09bab196674c36abd104457f207550', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (223, N'employee_213', N'employee_213@gmail.com', N'3f5ed016de284757bc5973be1b5d4bf7', N'8a5e53e7e3f343c8aa78a7e8d6a37b08', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (224, N'employee_214', N'employee_214@gmail.com', N'9ac10bf613da4cfeb5a521d49e1fb655', N'a22ef4e1584843d5882bbffc9ef948c4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (225, N'employee_215', N'employee_215@gmail.com', N'1ce5130d9dc94fe0a9b15a9a239cee37', N'222b6e3ff2e04b63b138e517e23c72f3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (226, N'employee_216', N'employee_216@gmail.com', N'43a4de570aae4d509a578dcfb1567cfa', N'ade2e7fff6744f418ce9e79496379b78', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (227, N'employee_217', N'employee_217@gmail.com', N'a871b46153ec43ad9423b69d57c37dc2', N'e9ee004bbe3e4d15899343a66dfc69e9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (228, N'employee_218', N'employee_218@gmail.com', N'620b3bff59de42acb6fc6fafdf4ae397', N'6e052dbcf5fd46afa3cf1f01090b5925', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (229, N'employee_219', N'employee_219@gmail.com', N'd6ba41bf1b104510b59d2430d101779d', N'8df5c22b1e0348a69117fd03c8b25d61', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (230, N'employee_220', N'employee_220@gmail.com', N'2607e01eb00f4563866ed7b9dca905a1', N'74a842abf2284d258656a578767fa310', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (231, N'employee_221', N'employee_221@gmail.com', N'8b60fe272fcc43a0aca409cba79a9c6e', N'cfdcbeacf7b040b6a8ea5408d078e8d6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (232, N'employee_222', N'employee_222@gmail.com', N'71336515f8084a9d9b3b97b11e19e200', N'335a596a3f8245a7aac3325aea433604', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (233, N'employee_223', N'employee_223@gmail.com', N'21b4cf39994342029e94c64ec3a50a37', N'17efa8fcccd74670ac1c8040b9514953', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (234, N'employee_224', N'employee_224@gmail.com', N'378f87e35e024eb1a39de13ca8403bae', N'cf74736c8a094f0abf83583536fa7411', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (235, N'employee_225', N'employee_225@gmail.com', N'ca2833d3c6e04723bac15712d288c2ba', N'c47e6b65a93745ebae1ce12b951af2b8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (236, N'employee_226', N'employee_226@gmail.com', N'992f409ba18746a6b4a99551b34f5489', N'485426370aed49edb894c7b7f620d5de', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (237, N'employee_227', N'employee_227@gmail.com', N'2a13b4254a194a1898ec6f8fcb90138e', N'0ddf5cc41ef74c1cb279bc23505a70b1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (238, N'employee_228', N'employee_228@gmail.com', N'a2af421390c54eff8cc9d76e0beb3d6f', N'058188ccfe6841f4a2c80a59184a84f6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (239, N'employee_229', N'employee_229@gmail.com', N'ad886f5e6a84477eb896414440c3fd32', N'68b18ab5ed4f4afa9566eea09d642a80', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (240, N'employee_230', N'employee_230@gmail.com', N'4ac22243d4bc49679a21a79840eeb3bc', N'cb650a99a4b845af906de00bc4a6b8b6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (241, N'employee_231', N'employee_231@gmail.com', N'3f44c21a5cb1452ba9d39d62ee179437', N'f343918cd81647a3a145918c7ffbc731', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (242, N'employee_232', N'employee_232@gmail.com', N'a3fc02cc767e407b9df7646af18bb972', N'714b596685ad4b40b2df96cfd3b6c31a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (243, N'employee_233', N'employee_233@gmail.com', N'30948a292f454f75aa78b7538810bc7f', N'7972346d553a426796e903532a4f19ba', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (244, N'employee_234', N'employee_234@gmail.com', N'a04cfe4bd1af436eb16c919d705f34a0', N'4777300051154282a2c25ef62b7b1b56', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (245, N'employee_235', N'employee_235@gmail.com', N'd16e39988fac4af2bce25e4b29dbac90', N'9ef9f3a06b7643678a30086607a2cf24', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (246, N'employee_236', N'employee_236@gmail.com', N'bfaa64807f8a4b3485e466ad31c95259', N'cdd81c485f534027b190c49c7e2cae61', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (247, N'employee_237', N'employee_237@gmail.com', N'c3c7e1816e304b26a91a7ecc91575645', N'0045cf81c68942368da436afd258b5ee', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (248, N'employee_238', N'employee_238@gmail.com', N'aa2711fcc9ea4a3c90f3c64fe14bbad5', N'b9eeb365c7524a5ca030ce0ba7768410', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (249, N'employee_239', N'employee_239@gmail.com', N'95d9ee93588242c39d8a335b950f96d1', N'd3349674408244909e4c2678ff568e82', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (250, N'employee_240', N'employee_240@gmail.com', N'e936448115df47c4b00209f4c9cd9de3', N'c52c7502928748acb68e963aaf0c3dad', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (251, N'employee_241', N'employee_241@gmail.com', N'e2a626f4713e423f80fa0eee112f8bd4', N'87aa5587c4cd4818a969ac0506db2ff0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (252, N'employee_242', N'employee_242@gmail.com', N'29f32166f69c4e5499aa32c68ae9b77f', N'ebf00928e096409bb91a832093dd8b2b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (253, N'employee_243', N'employee_243@gmail.com', N'b14d862b5a104932be8cbf24df56cd19', N'd9bac406a4bc431781a838c4609de657', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (254, N'employee_244', N'employee_244@gmail.com', N'8c3c359112ba459dbafbcf91849b40fa', N'3c36a57900294f11829ba29065df6753', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (255, N'employee_245', N'employee_245@gmail.com', N'2eb4a13d85484fc1a68d670cb32d8290', N'64ba608d9c384c6bb1da745673f7171f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (256, N'employee_246', N'employee_246@gmail.com', N'b6d70f2502804b86b5747de2b9b283ff', N'a5317d1dddae4958a8926f1f38912d10', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (257, N'employee_247', N'employee_247@gmail.com', N'9473ea13f6c843998143c6a9c3955834', N'13a3803dc2a241d18535702bc84fc4be', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (258, N'employee_248', N'employee_248@gmail.com', N'98e4a573412a4cd0b0599513c2aae962', N'798478c5138048b2844fd9907f91405e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (259, N'employee_249', N'employee_249@gmail.com', N'9ceade3f93ee4a4fad33601deb8eb563', N'e3058e19ae0f4de2b63078e138abeb8c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (260, N'employee_250', N'employee_250@gmail.com', N'166fb34a0f1b4c72aeeb755a38133b7a', N'0c79425b3af840debc8224cad0501b47', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (261, N'employee_251', N'employee_251@gmail.com', N'8d425f6fbc044a5a849152172c5d352a', N'fcfcd0bbef634d45b08e6c3b2468ec1e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (262, N'employee_252', N'employee_252@gmail.com', N'1695a29133ce4018861b6565ed984178', N'9c933f4eba0340d9b1bdf05cbdfcb107', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (263, N'employee_253', N'employee_253@gmail.com', N'3fcecfb634d5437a950284fc4bfa0e10', N'280749751a854857bbb2be96b4c557da', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (264, N'employee_254', N'employee_254@gmail.com', N'95268dea0a5d47adab66e01f510ec0d8', N'644bfa37b6cd446380a6d7c8844ed5d4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (265, N'employee_255', N'employee_255@gmail.com', N'e587764ba34142269377c5ae5d17fe09', N'dd43c70531cd4068a35f760039212843', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (266, N'employee_256', N'employee_256@gmail.com', N'5a444bb88835426181fef42e88d25218', N'893280937a0244bda2d3cdaa59915bf2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (267, N'employee_257', N'employee_257@gmail.com', N'e3a8be79fa0143faa80af0e106ca4a43', N'361c5c7477df49758bbcb2630e2e11ba', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (268, N'employee_258', N'employee_258@gmail.com', N'161d1aafce5f4573a42522c73b9065a6', N'1fd0069aba8e44b1bd615353a56a602b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (269, N'employee_259', N'employee_259@gmail.com', N'b340f217193f414b944c4f7bc65585ad', N'eb7532cd0ae84de5b4b59aea5771bd6e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (270, N'employee_260', N'employee_260@gmail.com', N'e265a4b6d3874d38a689d6e8ad28b9b7', N'b84158998f9b45449a28675ed184179c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (271, N'employee_261', N'employee_261@gmail.com', N'2a49f0e10cff4f6b89508cd0d5e45028', N'361c61723d1b436bbb26dde0c0af43c6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (272, N'employee_262', N'employee_262@gmail.com', N'c619c501df4e4fcdb07728eefecf57c9', N'78fa8e70b9a24530924bd58f0c884f10', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (273, N'employee_263', N'employee_263@gmail.com', N'6f55cc543e2c4a63bdaad6a449affa5c', N'51acc2af432d4bc4844cfc8fca0d880f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (274, N'employee_264', N'employee_264@gmail.com', N'b208adb59edd4c5e92bd50ee736cc179', N'63eddd221ce14b38ad1c21fec6eceefc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (275, N'employee_265', N'employee_265@gmail.com', N'd8e951eca50944a099d4fc98fd933d3d', N'63b6164462ec4307aa223e98b4296af9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (276, N'employee_266', N'employee_266@gmail.com', N'53b1b9b70030492d951da1e9d544bcfc', N'3392e3725fc0499484e5e3f53f72ce6a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (277, N'employee_267', N'employee_267@gmail.com', N'0d85b8b6cee443b2868e4850f5318440', N'7be9684ba0b448e3ae4abc6e5c0c3852', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (278, N'employee_268', N'employee_268@gmail.com', N'f95140493ce84842942bbe3d52c21eda', N'36a29cca7e664874bdaf5a38dff5919a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (279, N'employee_269', N'employee_269@gmail.com', N'682b554db437498f89a803f2bc66269d', N'4554a01514e14dd8a85185774064635e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (280, N'employee_270', N'employee_270@gmail.com', N'656d75c903ab4aa988f1ef51fc6a2af7', N'b7a16736473d45b5ab320e49f2686a21', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (281, N'employee_271', N'employee_271@gmail.com', N'f591584342e8435e9070ff5ab7b62d75', N'5bf4cb00644c43c694a49408ffff1f66', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (282, N'employee_272', N'employee_272@gmail.com', N'06a1db29fd124dd281b63dfd3ad89c7f', N'afa72644f10043e9b51180058a8ee469', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (283, N'employee_273', N'employee_273@gmail.com', N'e24e0db19b6b40d998ee46d9b2b7d967', N'e56910bd2a654da29d7b5086cc8d6101', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (284, N'employee_274', N'employee_274@gmail.com', N'b5c2640692ef4fb6903493d9d7023783', N'f920a7b4cce24e999f380225c9487d4e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (285, N'employee_275', N'employee_275@gmail.com', N'aa35ccca6a704ba7835e877599e94b7c', N'8229bf8339204e958a77f17e49496d0f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (286, N'employee_276', N'employee_276@gmail.com', N'7997229ee86a4c10af8eeef6dd398744', N'2eb87da9c3424b9b93b2e52d1c99ed01', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (287, N'employee_277', N'employee_277@gmail.com', N'2ebe6249868d4962a13992c2b4822038', N'e8c25fd992444200801511e6655071df', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (288, N'employee_278', N'employee_278@gmail.com', N'599a142a9a354040974d069f47a256a6', N'bbb07e66214441a09612c46e21c1049c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (289, N'employee_279', N'employee_279@gmail.com', N'895eb0a1e5454ed69ec0aa174110d3a7', N'0dbb2bad41f64f4e92afb4de009651c8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (290, N'employee_280', N'employee_280@gmail.com', N'2311729258294e678b2577e34b81edb9', N'63f6fa721e46481a9e3f85c55cdaaf3f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (291, N'employee_281', N'employee_281@gmail.com', N'4b7907171a3a440d8573b2eb88402130', N'25851d5280c849d9b90ed5576f79b04a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (292, N'employee_282', N'employee_282@gmail.com', N'e886b5944a8e42b38efa304fa788e1f6', N'28553c6efcb44deb9e2be6b252a6bba7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (293, N'employee_283', N'employee_283@gmail.com', N'ab4f14faa122401cad239d7bf189d219', N'5df89c5b9ba14417bb2d593b1db41a24', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (294, N'employee_284', N'employee_284@gmail.com', N'3bc7d582533f45d9a273c1ccff3a307f', N'ceccc401028948f9a8c733260ba3bcb0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (295, N'employee_285', N'employee_285@gmail.com', N'dd42f7ed7e7f4d919aabb7522c6a9775', N'a716019dd5e64030bb98a26f1cd081e2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (296, N'employee_286', N'employee_286@gmail.com', N'9909f7542f4b4e77844a265bc6a2f2a6', N'e9f7e9f402884229a01a429fb3c9813c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (297, N'employee_287', N'employee_287@gmail.com', N'7eb86e0566fa415fbadbd1fc2ad279c1', N'3a81fbdf04754d068f54422b27db758f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (298, N'employee_288', N'employee_288@gmail.com', N'8f8347f7778c49458c141bfd5974ca10', N'e707865ffc024506bec7814b987a105c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (299, N'employee_289', N'employee_289@gmail.com', N'0c1f83e4e53f42ccab0606b4252e719f', N'aaa80d47abd243cd8464d702382c9d18', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (300, N'employee_290', N'employee_290@gmail.com', N'032b95288a854533a0bbc43644654247', N'3cfccd6c3a7a47ba9867cfcfd9cf2ea4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (301, N'employee_291', N'employee_291@gmail.com', N'7f864409d8a24c9cb9f0fb59e37ad756', N'1232c6d7238a4ecab2a8c86beb258c17', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (302, N'employee_292', N'employee_292@gmail.com', N'ad96eb9f9eb441e082407e2cd20c4c24', N'b481ed4c02e04848b64aeaf29288bd64', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (303, N'employee_293', N'employee_293@gmail.com', N'11edb32ee2e54abd9a53099652d8ff24', N'ff8b0af20b66442aa7846d24de53bc68', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (304, N'employee_294', N'employee_294@gmail.com', N'1ce4d90fcb72488d8beeb454cf48f5c8', N'373e76feb2164464b83790956a830215', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (305, N'employee_295', N'employee_295@gmail.com', N'a90b9fc1cddd40b292467e9b18e2b812', N'db1ae8579ec74e148fdae83b7ecee90c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (306, N'employee_296', N'employee_296@gmail.com', N'4994c0512bc84e19b4b0c8044251dc39', N'002eae56fc654518aed15fb2df1090e0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (307, N'employee_297', N'employee_297@gmail.com', N'd69211f1c1bc45ef9b36f2711c1e7bdf', N'22f5e673d7644c99869fb5ae3a0f548f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (308, N'employee_298', N'employee_298@gmail.com', N'1a5f9ef4a1794846a3a4531cd9d3b356', N'a262f3079241466d97af75f84ab2457e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (309, N'employee_299', N'employee_299@gmail.com', N'e8035873bb5a44aba02644d5e66cfe3b', N'4dd605eac97846e9b10d28d4b02613af', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (310, N'employee_300', N'employee_300@gmail.com', N'e406ca920e8d407c8d5eaf23ee369419', N'1ecbce76820549daa923902974d8d6e9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (311, N'employee_301', N'employee_301@gmail.com', N'8900e3d54936436f8b30209fd986e3e2', N'6a33c29c792644afab92617e85b237f6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (312, N'employee_302', N'employee_302@gmail.com', N'2172a8ced91c456aa974d25a5b33d27f', N'53ed26d9e84345bea5a85a447a891f50', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (313, N'employee_303', N'employee_303@gmail.com', N'14d580c045004db883f6d7fb466671b8', N'35358546ae1e418f99b57a01aedbdaa1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (314, N'employee_304', N'employee_304@gmail.com', N'459a88bb73ff4aefa52efbbdee952d60', N'a093d73cdcd64c45b62a64e3bcc85af7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (315, N'employee_305', N'employee_305@gmail.com', N'd622a93e01574529b0c4bf6c1efde94d', N'2e8abefc404d4508ab6a31027bf6c9dc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (316, N'employee_306', N'employee_306@gmail.com', N'2d9035be61e54a10afda6eb147b56276', N'9b7a661fb1e542ad9f9830812f2fd512', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (317, N'employee_307', N'employee_307@gmail.com', N'4f76e8e1ead7400e80b6b74f2a18b24b', N'c99760be9a6d4c8cb26c393832325085', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (318, N'employee_308', N'employee_308@gmail.com', N'1c9bf5c7987c4efa9814dbacf1d43a51', N'e85301e310f74734938af26c2bc4056c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (319, N'employee_309', N'employee_309@gmail.com', N'b5763a13353f456ba30535418a6e6159', N'01099d68df5b40cdb38fcd4dde8b24bf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (320, N'employee_310', N'employee_310@gmail.com', N'019d6f7c27a1474294ff83bfa2ad4485', N'dd836337f5c7478eb8ad236eb180c63f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (321, N'employee_311', N'employee_311@gmail.com', N'f9a0c88144ae4a57b8eed2025b52856a', N'65006781b6c94c7cae09f1eb4926b6b5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (322, N'employee_312', N'employee_312@gmail.com', N'ae157244007940f08a3c41620564839d', N'e1ed1c4d12b444adb381439c19fb00e4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (323, N'employee_313', N'employee_313@gmail.com', N'fc3c44e18b654983879798554427e617', N'224c19bfebb44b11b0157a422ae7e4b1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (324, N'employee_314', N'employee_314@gmail.com', N'71c4a43f81864265b97fd66a99f3a36b', N'b2e76c8d2ca04c7eabeaf78fadadde12', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (325, N'employee_315', N'employee_315@gmail.com', N'799dba75e6754d71b3b3289354b4d509', N'b63a43f0140a47cc83c83ccd49ca1295', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (326, N'employee_316', N'employee_316@gmail.com', N'645119036b504b4fac6559e6f42aba68', N'9253a8746ca449558b96c65365181acb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (327, N'employee_317', N'employee_317@gmail.com', N'49b3279e7778449caf60337c27a1217a', N'c849e075a4724c2cacffcfd865c84989', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (328, N'employee_318', N'employee_318@gmail.com', N'61487001db2048529a607c358e6f60c0', N'11b9331a89ac45f2828df92954fa98cb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (329, N'employee_319', N'employee_319@gmail.com', N'4ba11441e85643b29d226ef8ba2f07b6', N'571427756532413683bbcf0901cbbae6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (330, N'employee_320', N'employee_320@gmail.com', N'50baf6fbc4ba4eb483c46c5542b0ddd8', N'af7a11d30e5f4869810a017d26429d01', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (331, N'employee_321', N'employee_321@gmail.com', N'19eb41e6e7794c078b948f425ec260be', N'9c48dbc495a543c68f7ec5fcd1c8e725', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (332, N'employee_322', N'employee_322@gmail.com', N'9094ad474d894a76ad806f38322f8a04', N'f1e9796aaf7547f2846cd9f42cde65ca', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (333, N'employee_323', N'employee_323@gmail.com', N'e7950f651fd34ce7b48859bb5bd76cb6', N'74fc6f099a57401d8aa24a6e7ae27097', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (334, N'employee_324', N'employee_324@gmail.com', N'00bc83d8aef94480b42d841189a536da', N'22c1ebcdd3f34bc195c1f239e8156c52', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (335, N'employee_325', N'employee_325@gmail.com', N'9fcabbe5e54c499db7b2e23cd23f9a2d', N'2a026001169a443199debe2b9d789b78', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (336, N'employee_326', N'employee_326@gmail.com', N'7dc3e89b7f9d486da888d9fb28d5141d', N'02653dcc595947198a7e0e837acf3a28', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (337, N'employee_327', N'employee_327@gmail.com', N'1fd8b74ba419407c95e861508a17aca7', N'72c5321079b44642bc35a18fd1abfc05', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (338, N'employee_328', N'employee_328@gmail.com', N'985507bfb0394adda5563a5361db3715', N'9bebda03b1904172a8144a5866204694', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (339, N'employee_329', N'employee_329@gmail.com', N'0943b81a6fc749858960fd4f5c00ac26', N'aaf1812a038248c1b4728e629fc9e62d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (340, N'employee_330', N'employee_330@gmail.com', N'ac7e2cf5fcaa48bc88f0824a900b215e', N'd2e606558f7b46c2b3e6bef2e5885a32', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (341, N'employee_331', N'employee_331@gmail.com', N'4298cd4014124ff4aebcdcc51277e72b', N'9cbb7a5d908c43b79e46f2aa3c5ec2ff', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (342, N'employee_332', N'employee_332@gmail.com', N'ba29cd85b5274cf98a692ecce34ae958', N'bb809a9866244fc18e57e18ffd2b7b7e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (343, N'employee_333', N'employee_333@gmail.com', N'22ab4780ee07474bb9ed13f92d4443d8', N'4d26ffd258484788a805d4f975aa51c4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (344, N'employee_334', N'employee_334@gmail.com', N'bcde863f4e5f45af83c5b44f85d2ba6a', N'a74ef146b3be452e948286a64a2c33cc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (345, N'employee_335', N'employee_335@gmail.com', N'fb5ae786fb61449ea849d1f031a19844', N'15368475cc534f8683301f01863d3f30', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (346, N'employee_336', N'employee_336@gmail.com', N'f5a29838c4574edd833392132678e04e', N'910a77c3a3c14f2b9385a0ff3a4afbeb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (347, N'employee_337', N'employee_337@gmail.com', N'6a154dd80b5f4758b78b7347e52c5762', N'6a27862cfb2c4695a6203109df76c74a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (348, N'employee_338', N'employee_338@gmail.com', N'd83a094dfe44420e8f52310f371777b8', N'd25701fd4414429ab42f0ada5fe05eec', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (349, N'employee_339', N'employee_339@gmail.com', N'4d71710e64e14b8abfec9749938bfcec', N'aabc869476c4429090685211a0970aea', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (350, N'employee_340', N'employee_340@gmail.com', N'849731d42f254bdda2e1997b32a51756', N'76285298b46f42129922e8a7d31b1f25', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (351, N'employee_341', N'employee_341@gmail.com', N'd1b45142197549599b5ea41a5100bf2b', N'a32025b0550844348f8cc662a2e5bc25', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (352, N'employee_342', N'employee_342@gmail.com', N'fe52d581feb74e77ad2a9ce691dcb8bb', N'ce04b848d08c44738e13fbd5cc52a6f2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (353, N'employee_343', N'employee_343@gmail.com', N'158c7835cc704557b5bfd0f141e84e17', N'c84418b5ae614c85898eedaf7a825e12', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (354, N'employee_344', N'employee_344@gmail.com', N'c763229ce78c483b8f8ebc671fbf59e1', N'4fadded823cd4dabbf4187c97a3d855b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (355, N'employee_345', N'employee_345@gmail.com', N'94b1c6b93a1649fc89d46e26d0f20727', N'a64d0358522e4b989b0589e77eaefc56', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (356, N'employee_346', N'employee_346@gmail.com', N'5b721176a3ee475c9a007942f27d3680', N'b571391bb7994dabbc2c84deb257bd3e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (357, N'employee_347', N'employee_347@gmail.com', N'b9fead74a9d44daea64aab8d8ea1ac0b', N'd3053ef6a2fc4c3781a0ff3171355c53', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (358, N'employee_348', N'employee_348@gmail.com', N'461da8b8c9934e668c9fe364b0c18d2b', N'2dd0e91a4d4b453292a2bb758e23b470', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (359, N'employee_349', N'employee_349@gmail.com', N'5f410349e51b4482beecacadc652e32a', N'793dc73a0e2b4f2fb1101f12882eceea', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (360, N'employee_350', N'employee_350@gmail.com', N'63c59a1b53d8434e9f381d1faaaf2b35', N'36b56849483547d7877ced7b7f159d46', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (361, N'employee_351', N'employee_351@gmail.com', N'66bc05ab2cf3469aa26f977c685a8012', N'da33b07d674d475eb3b0c17453b639bf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (362, N'employee_352', N'employee_352@gmail.com', N'05795788ec724a7a9afecb08341d7c1a', N'08938e74158c4cf19eaac1338de34294', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (363, N'employee_353', N'employee_353@gmail.com', N'102dc0a18cb449d2b6268766c1f2fb12', N'd40391c89ba64c6dab7c3f0df1024739', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (364, N'employee_354', N'employee_354@gmail.com', N'5b01ee986c8e46d48ef612d858cef241', N'f46a2fe1b8834230976eac146fb364e7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (365, N'employee_355', N'employee_355@gmail.com', N'381b049658b144bd878f4c9d45c3e537', N'741f945a16204e22b507c8841d60ac92', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (366, N'employee_356', N'employee_356@gmail.com', N'5cd19988ba1d4230b60c5a478a6e2aeb', N'869442c034b24262975b91e27f1db002', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (367, N'employee_357', N'employee_357@gmail.com', N'254c5041d05f4171b28042611d8e9286', N'5c205e23047947f4885e41ed3921cb3a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (368, N'employee_358', N'employee_358@gmail.com', N'3fcf1c5855bd4032b88bf4b608c4bfe5', N'f9dc4e51922f435785ce11d97191762c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (369, N'employee_359', N'employee_359@gmail.com', N'062d87cc830742c1af47f48001a0ed3e', N'95706358d82c4368bf897b2661b062a7', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (370, N'employee_360', N'employee_360@gmail.com', N'aa1404c283484bb8a1bac3ec96ad4230', N'4fa3d9cb179a4e1bab7db647be04df7c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (371, N'employee_361', N'employee_361@gmail.com', N'5760875d124a4f6fb29f9dd18e7fd665', N'9d32fd7360f04d9fa2eff4ed302f70fb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (372, N'employee_362', N'employee_362@gmail.com', N'b056adb931b24f99859bb06ff39e1bb8', N'24cdd897b95d4c6188bad3a939a1a000', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (373, N'employee_363', N'employee_363@gmail.com', N'88e8b2ec470946e19a6d75721b0289f8', N'2f7a16ebeb124d24a5a57e5374f806df', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (374, N'employee_364', N'employee_364@gmail.com', N'86496a0a763b4085bb9d0fdf477d4b3c', N'f6662a795d6a4d3f9725b4a2a648d398', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (375, N'employee_365', N'employee_365@gmail.com', N'90264b25919142a9a67d7d237334cb5c', N'5508795834f54b639073840ab46cc94e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (376, N'employee_366', N'employee_366@gmail.com', N'b5ec5035920a4121b5bac8ed75d7c5b4', N'154f17b608484925a8723b8202f4f9ed', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (377, N'employee_367', N'employee_367@gmail.com', N'fdc818a3d0ab46b5840172f495c2d2a3', N'850d1da2216648c488a401d28f5ea770', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (378, N'employee_368', N'employee_368@gmail.com', N'a31b336132f34cfe8f1b0541dc85ec8c', N'4044b2a224fd40dc9cc1af7b65cf2637', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (379, N'employee_369', N'employee_369@gmail.com', N'5c87e68b33eb412d86ad5437de7d46e2', N'4c4f31a7adda472089d8584c0251ddc8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (380, N'employee_370', N'employee_370@gmail.com', N'0da10c05f2b5463f8a0da69c91043984', N'c05c8adefc9e462dac37084b4720e796', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (381, N'employee_371', N'employee_371@gmail.com', N'973b2603884d4db8b1b16e31e375c2a8', N'5fa078a6df3148bda0af4977febd5ace', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (382, N'employee_372', N'employee_372@gmail.com', N'd49d4a04664f48a1879ac37b517057d5', N'08ddacd7887f4888a8acf1c5619c7208', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (383, N'employee_373', N'employee_373@gmail.com', N'efc78d33ca734cd89e7874402d26af47', N'9e4274a842c64a0d97878859f734bdef', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (384, N'employee_374', N'employee_374@gmail.com', N'297b6b27f23e40b98b4c391aa68e2cc1', N'bb69f56952ec4314b9641e9fa85b7b39', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (385, N'employee_375', N'employee_375@gmail.com', N'10fecbedffdd4b8e83de45686924014a', N'e78af444ef434ca2af6e673901927694', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (386, N'employee_376', N'employee_376@gmail.com', N'c43cb8e67efd45108045d6b4892f6391', N'6aa74cf82b0e4675bb3e91d8a809c439', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (387, N'employee_377', N'employee_377@gmail.com', N'ddf15e9fc1ab44eba088ebb545a94faf', N'6b1af7435a4446a99663de7839793ca6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (388, N'employee_378', N'employee_378@gmail.com', N'9b869bbe28c14ffa958aa53ae449ca19', N'3097795e670346bfba44879a129b6488', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (389, N'employee_379', N'employee_379@gmail.com', N'4a0c9c72920741fb9af4178f7f0d9df6', N'b51baa18a3dc4c8288fb174f86fb2424', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (390, N'employee_380', N'employee_380@gmail.com', N'd08ab68e07944532854e1fa136b381ae', N'964cd40701f740349326d1deb100fcab', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (391, N'employee_381', N'employee_381@gmail.com', N'9ff41a3a055540fb87099c9408da410d', N'c93935070b39429195950da5b19644bf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (392, N'employee_382', N'employee_382@gmail.com', N'e04f973f38cc4237bd0e7b795518972b', N'84a9db02f1f6402dae92e133b5649fa0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (393, N'employee_383', N'employee_383@gmail.com', N'49b056e0ee6f495badcbf3ff8b19c5e3', N'517d49000040427b973383ffc9ec468d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (394, N'employee_384', N'employee_384@gmail.com', N'bac346332ae34c66ab23cb841ecb329f', N'd1c46478fc734808b6806c262f60b5be', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (395, N'employee_385', N'employee_385@gmail.com', N'3599bc1311384d95afd563c71717ea38', N'03cbc9585cad46f5a21d04e094db0c2e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (396, N'employee_386', N'employee_386@gmail.com', N'b1a3969dc09e4f18bc41222b3e8665cd', N'47ef31d815444797b3a28f197277a39c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (397, N'employee_387', N'employee_387@gmail.com', N'68b2cdae50944fc091392b94f9295eb2', N'3991e6228a374a03b1682217bfa0f588', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (398, N'employee_388', N'employee_388@gmail.com', N'9ee309417e964c8c8003f072115b5174', N'f4ae7e4449624c35a16afbb581243b50', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (399, N'employee_389', N'employee_389@gmail.com', N'f04166a8cfbd4f9abdf1cd05eaa488f6', N'e9152a37870e4e4f981d75f144482343', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (400, N'employee_390', N'employee_390@gmail.com', N'd307821319d643a989a922487c5713ca', N'c092f8a6127a4e43a62eea3bd27abb59', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (401, N'employee_391', N'employee_391@gmail.com', N'8668ab2bfc7649c9b00d8d8beebf7354', N'e308a7c3b46a4302bc7529ad3da0d1f6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (402, N'employee_392', N'employee_392@gmail.com', N'c1ec577097184db88e309ecfeda80a90', N'2c9af8a03c2146c5a0e774ef7ca6b8d2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (403, N'employee_393', N'employee_393@gmail.com', N'6aba3c560d744bd88a70992d61f73787', N'588155f612764a1695e8f0e6498dbe01', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (404, N'employee_394', N'employee_394@gmail.com', N'992827db7b144cdea751accd32c40cae', N'9a4879a554b94194b8b68a78b9196ea4', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (405, N'employee_395', N'employee_395@gmail.com', N'9a0930d732de4c7781f1573206af49c0', N'47e1d6f688814118b5d902f47abbefe8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (406, N'employee_396', N'employee_396@gmail.com', N'055765064f0149aa8345aa65ac06575c', N'0f63677d4473497ea2a11739a39757bc', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (407, N'employee_397', N'employee_397@gmail.com', N'6d7d5757ab1c4b3a953431135a29bfc4', N'49d698aaf4de437d948b8a15c4f20b5f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (408, N'employee_398', N'employee_398@gmail.com', N'53070b34cbcc4c9d9f9fdaf97615e821', N'a74ce99e2157477b9d2e9ff7c4d92e5e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (409, N'employee_399', N'employee_399@gmail.com', N'bcd9f0dce87746f6befb13657b3e4f03', N'6c85062ec2bb48f29bc2f9c804e5b942', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (410, N'employee_400', N'employee_400@gmail.com', N'99ee7cc4834942e5bdbaaaaee0a57251', N'f752be1a9a0e4989ba757b06cceca5c6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (411, N'employee_401', N'employee_401@gmail.com', N'215a80a3097140ce8e76fd2c932fb96c', N'c4db7a19b4f14ddf8352f56718c15b51', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (412, N'employee_402', N'employee_402@gmail.com', N'4f20ab7059284a68a87faefcda83ad3e', N'45beaf0f81994052860ec5d1c5a26330', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (413, N'employee_403', N'employee_403@gmail.com', N'386baf2132d44c2699b949552c1ac05b', N'a45fc00ef82a4a02ae00b960ea579675', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (414, N'employee_404', N'employee_404@gmail.com', N'0a9fc1c13a8540738c879173e15fe98a', N'06b76a8b7a8c4e76a4bb238961970a05', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (415, N'employee_405', N'employee_405@gmail.com', N'0ad7468464e647c2b51626fd1be18e35', N'867d45fe72be4e6a850a572dffa815a6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (416, N'employee_406', N'employee_406@gmail.com', N'9f1ebf65521a4259a9579c6e63b21943', N'02d16c44634b469c9695ead0fedfe24c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (417, N'employee_407', N'employee_407@gmail.com', N'7aa29d8bce02430e958e3b5857ff1d01', N'b1746bda8b20417b81067731e12b56d5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (418, N'employee_408', N'employee_408@gmail.com', N'f40a8fd3a9f24ff38e51b67c00f36a4b', N'241a3b3946ef419684fda0d7f5d331bb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (419, N'employee_409', N'employee_409@gmail.com', N'6534e7086ce8464eb86a6b0c58ca6f97', N'a1ae62f8e53147069a208bdf1bcc8931', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (420, N'employee_410', N'employee_410@gmail.com', N'27f3c10beab34f5cab674d2e18bce78c', N'39e133eb695d4305a1b71585ea34aecd', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (421, N'employee_411', N'employee_411@gmail.com', N'c0a24506ac934c3a9e2f8a4e85325e8f', N'be22613e5d2146cab293f692bb692f5d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (422, N'employee_412', N'employee_412@gmail.com', N'735ede43f8be4516a725451565b14486', N'9201e037c27e4b5cb345aa460943a6b0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (423, N'employee_413', N'employee_413@gmail.com', N'f59baecadcab4f9d9a9e69bd3703c69c', N'29ba3d5e6db84d13b4f9e63785b15f32', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (424, N'employee_414', N'employee_414@gmail.com', N'014a85c83a044d41acafa94fd99b2b7a', N'19048c164cc6485d8a9f51f7d1416b11', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (425, N'employee_415', N'employee_415@gmail.com', N'29d4b37c2eea490ea6d415fd904498db', N'7297f62339ff4a3296d90a414f1071db', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (426, N'employee_416', N'employee_416@gmail.com', N'47ecdba5286a4cf28645bc641a37907a', N'9d83e86cff67462887e49789598506ef', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (427, N'employee_417', N'employee_417@gmail.com', N'3b7ece3bc66348378c0f505e0cd1e46f', N'a03bfb78558c4c9c996e557c3fae0be9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (428, N'employee_418', N'employee_418@gmail.com', N'2106b39a2d884969a11e77f66a0edd41', N'ad4df3addb4f46dcb41704288823dc98', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (429, N'employee_419', N'employee_419@gmail.com', N'3bd626a21c6a455583b8c7ffdf5185f4', N'ae413c3f75b94c4286a2e436ecc0133d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (430, N'employee_420', N'employee_420@gmail.com', N'6334baf473014f94a1c6cf85deb5a141', N'b82c0b189d544d5596470054299a4cc6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (431, N'employee_421', N'employee_421@gmail.com', N'21539bf3a3174aba8b207cdc37578f38', N'5c88821aac714a67a0b20fd6f509d3ff', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (432, N'employee_422', N'employee_422@gmail.com', N'7b6c92a34565410ba5cd7c0a85c42d90', N'a6c76e167a2f4ef99b45c273b2e7c227', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (433, N'employee_423', N'employee_423@gmail.com', N'72b9eeb15bb94cb9a3a9e6b6198944d2', N'ad7a6236a5ca46fba1fbdb97ca031e38', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (434, N'employee_424', N'employee_424@gmail.com', N'2349e1c03ed3459694cd7bd434991d96', N'1a09d6dcedc14e4aabaa1f4131e5d6ca', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (435, N'employee_425', N'employee_425@gmail.com', N'ffc135fd3e724265bbb5ed0b06e23d7b', N'fdf49dbf104b44c18e96b4ff68844bf2', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (436, N'employee_426', N'employee_426@gmail.com', N'3bb9329e19cb461896a19fd4b60f8974', N'97c706509c8d429d9d15ed225ec7c7ad', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (437, N'employee_427', N'employee_427@gmail.com', N'2ca96a68dd714120a2d998de0ba0dc11', N'407565e9a227430089562f13cae121ab', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (438, N'employee_428', N'employee_428@gmail.com', N'b60141b6f2cb4500b7069f09d1541271', N'37d0d5bdd50b48a385c5a976f3d2ec31', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (439, N'employee_429', N'employee_429@gmail.com', N'72e6c54877ef4c1cba76c3934fa563d3', N'bfdb8d36ea9e411d960e61b62e5162cf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (440, N'employee_430', N'employee_430@gmail.com', N'7930114eecdf4f9d94c74c0bebe6a393', N'd35b0aa6eda84b728db7510b00fa7232', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (441, N'employee_431', N'employee_431@gmail.com', N'e6b98df1ce754e25a2a050cf98b51acf', N'9b448640cd864b35b07ef16dbea86ac9', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (442, N'employee_432', N'employee_432@gmail.com', N'ace4531384c545ff94af9788f36570cd', N'03c6cbe4db704626983af42bcbca54d5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (443, N'employee_433', N'employee_433@gmail.com', N'2e7c797bf6c94711b21a4b2b7e786341', N'1c6960d4e5cc44ee8906ad80dc8a369e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (444, N'employee_434', N'employee_434@gmail.com', N'5ec4cf123a424fe5b4952599e00ad9cd', N'16df36bc1af64078a957e96e82f6d3de', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (445, N'employee_435', N'employee_435@gmail.com', N'7b1b100e9ce749659f6689bcbccc9669', N'fc39657d17574dc88fd0bc8cce992e0a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (446, N'employee_436', N'employee_436@gmail.com', N'8a2283e7dc7d4c7d89bd64278d78f936', N'47bfd825a864465a8f227360c61ac2db', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (447, N'employee_437', N'employee_437@gmail.com', N'9344e0b5348647aeb059b4e28045e4ba', N'b03dd451b5ce42cfa1af70d19b50ab85', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (448, N'employee_438', N'employee_438@gmail.com', N'8214a206210b42c5bc3f1a83bfa8cbf8', N'd20dd1d0022a4984b21368a1a6775b37', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (449, N'employee_439', N'employee_439@gmail.com', N'63d40c01510f4a1b8361b017996738c7', N'17358ec86d7640a3a1b757d517d95e6f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (450, N'employee_440', N'employee_440@gmail.com', N'c43b1aee7a214ec3809d9a47a6852a3c', N'0d6eaaf5552441df9bd94c6bc99d4e2b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (451, N'employee_441', N'employee_441@gmail.com', N'fd00ec1677dc483790fa8cedac77c4fe', N'1527fc7f6930464bb63a7a10bb81266f', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (452, N'employee_442', N'employee_442@gmail.com', N'0085b689183445218182e00422d701f1', N'1ae3f3c187204bafae629570d42ba248', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (453, N'employee_443', N'employee_443@gmail.com', N'db5d541462cc4af39cb125901642f515', N'1f8245a7758b4096b86723a651d3b63b', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (454, N'employee_444', N'employee_444@gmail.com', N'c05f03634cd24172a1a4688af5c87668', N'f5fd06be9d2447d792a4a426ceb79f57', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (455, N'employee_445', N'employee_445@gmail.com', N'290be0201f70479796c7aa33496bdeea', N'071370f812a849b59042eacdd3a2b963', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (456, N'employee_446', N'employee_446@gmail.com', N'd06fbcc070484a51843f297742d6b851', N'9eca9524dc4a4004965493e49c5dcc01', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (457, N'employee_447', N'employee_447@gmail.com', N'e9b2448849f54153be410f14940bf9bb', N'454450a3291a4e1b8440ad81391b4f8d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (458, N'employee_448', N'employee_448@gmail.com', N'801896f08e594b17acf518720aa6b4bc', N'19227105c5384cee85fb8ce989e2a8e8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (459, N'employee_449', N'employee_449@gmail.com', N'775c60bd4fd64047beede2102b2b3e47', N'7a90c28dae93459d9caf39bb737adb67', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (460, N'employee_450', N'employee_450@gmail.com', N'86a43ba7513b4c0db63b41bb2371da45', N'5d9af4b26da54a69bb5e1b90c8e0204d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (461, N'employee_451', N'employee_451@gmail.com', N'62461846c42f48739de9b3f6168af626', N'81be2c9eb0564bf4baad7f55eff9bc21', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (462, N'employee_452', N'employee_452@gmail.com', N'ed49be29850d40aa857f69c049ecd7f5', N'e69d9defd8f247388e7bd79391793c2c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (463, N'employee_453', N'employee_453@gmail.com', N'823a34f9098a40d19b8c5faad3992fd7', N'af1baae4739c48d58f03459582039063', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (464, N'employee_454', N'employee_454@gmail.com', N'0c9e0358656749f780710fd4b2e37421', N'b41d2ed72c7c4ef5860dcf1b54962243', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (465, N'employee_455', N'employee_455@gmail.com', N'868186ed13c848218553d04ca2670dce', N'f2d9d47f0c684b9e8d5afdabe5509eea', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (466, N'employee_456', N'employee_456@gmail.com', N'770085dd11484006b0ac0c8e4e6f0df1', N'0124400bd3a64f158138817fb99a63cf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (467, N'employee_457', N'employee_457@gmail.com', N'70e190fd26ef48399f68c36b288c6018', N'6b9cbd1b599c452aa52fa87946527b63', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (468, N'employee_458', N'employee_458@gmail.com', N'43cde784e9574f7ead82c0bd585e7973', N'21bb2e42ddd6462ea9022642321e657a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (469, N'employee_459', N'employee_459@gmail.com', N'c4eb1346c0a84974b0fe723c2bed23c3', N'7bcc7f2ff70f4cec8a2dfe6ea289a850', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (470, N'employee_460', N'employee_460@gmail.com', N'be5353cc72404abb8b59698468f2e2a3', N'6534fd92d3d04c41a2c3fe33b5080467', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (471, N'employee_461', N'employee_461@gmail.com', N'72464cca19f54f75b439011ba2fee4fc', N'1a25a38ffb2049818689dcb0a4c85c2c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (472, N'employee_462', N'employee_462@gmail.com', N'93c7a9210cde40e6b376314cde085daa', N'a79d347f11a44c2194fd6f526e611e36', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (473, N'employee_463', N'employee_463@gmail.com', N'74d441a1968046efb45e9c14c293ab45', N'0274b6b85ae149eaa82df8e766ae7735', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (474, N'employee_464', N'employee_464@gmail.com', N'd9c96839482f44338ece89ce960072e0', N'da05d0730233474892b311712880c8f1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (475, N'employee_465', N'employee_465@gmail.com', N'ccd3a84d9ac0420e9cc0e4083d0602e7', N'a79c9efd46ca4356a7800a7d94ce3519', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (476, N'employee_466', N'employee_466@gmail.com', N'b078bce9d5d64c16a10613bfa9dbfc5d', N'3a3a862b9d504303aad844181cc19b6d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (477, N'employee_467', N'employee_467@gmail.com', N'e5da22c3db32422da5e58c61010c3560', N'42608751156142df8e9e58c66b6c2f44', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (478, N'employee_468', N'employee_468@gmail.com', N'c5a5f348d3544ec2ab43e076db18298c', N'8d060d5441c04ebfab540fcfb2b61dfb', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (479, N'employee_469', N'employee_469@gmail.com', N'3de70faa7f364169a66ad6036bdeeb17', N'c8622db2b3c6413491ce4da389174169', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (480, N'employee_470', N'employee_470@gmail.com', N'480a6d32696e43559edd452474163984', N'f85ce0b3852d4250ba3c3406afe1a0e0', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (481, N'employee_471', N'employee_471@gmail.com', N'ff42fdc8f854463b9f588c8a6e2da88b', N'79d867b7548c4b778957546a1e96bb27', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (482, N'employee_472', N'employee_472@gmail.com', N'5373567cbf4e441aa967df82b9598d26', N'48825d2a57eb4880b52cbe578b29d907', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (483, N'employee_473', N'employee_473@gmail.com', N'74f4a5967a624294906e72ae6fe83858', N'2ba6e379c9784312a907f8e9d686bd2e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (484, N'employee_474', N'employee_474@gmail.com', N'881d59398fd3457ba931616055c2d146', N'165afbd7cf7b42be919974c36c45abc8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (485, N'employee_475', N'employee_475@gmail.com', N'5bce13e8f04846b19d52c25e9cc64f36', N'657c9c666fde412f8005964a0c7a669c', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (486, N'employee_476', N'employee_476@gmail.com', N'df699c8a46ce4dc58ac025e2a8539d29', N'a1660defe15146f4884136909475ac00', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (487, N'employee_477', N'employee_477@gmail.com', N'f3e542a73da547eb918ddf94c8e87eff', N'99bc7c46c420416fb8a6d384fd865a3a', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (488, N'employee_478', N'employee_478@gmail.com', N'06e8eed0f7d143cb80227356aa741941', N'c670cc1511f04444a4d8dfcaf70896f6', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (489, N'employee_479', N'employee_479@gmail.com', N'74a92fe47fef42e29906417341c7e38f', N'6f012ea84e094074a6467764bed6abef', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (490, N'employee_480', N'employee_480@gmail.com', N'2d5300fab3244236839b0a00f7e909f9', N'c12f7ac09654406aac61bf7eed924071', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (491, N'employee_481', N'employee_481@gmail.com', N'c746f06ad79b4e8b9a3ffdf0c292cce2', N'14f1762e08b34c349e32f1b894fa0402', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (492, N'employee_482', N'employee_482@gmail.com', N'a2624a38a1b94ebb8dc94b7d9981c891', N'fabf5c48209b4ba59dece6ea31d6af05', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (493, N'employee_483', N'employee_483@gmail.com', N'02a9bd263d7b4d1db1ee3a8b94217c7d', N'5509caa96cb24ee6a6994080362335b8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (494, N'employee_484', N'employee_484@gmail.com', N'c4fd2d972b564083bb31ff590f4d6732', N'a7685f08fa5042f48db80a5d65322ff3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (495, N'employee_485', N'employee_485@gmail.com', N'40300bf3f33b4a0faa6e4fd20826da33', N'a576cecfc8f245bc80d7c7bdebc5fb12', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (496, N'employee_486', N'employee_486@gmail.com', N'5dbf2229fe9e4e7a8adb37abce94a9d0', N'd103db8f5a00442fa629d647b95281cf', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (497, N'employee_487', N'employee_487@gmail.com', N'df05a8009b1745998b95cfd1eabc5287', N'16ff356e6f5c44bab7870abc582dfe81', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (498, N'employee_488', N'employee_488@gmail.com', N'85d2598e97e940948f28a67efe022e0c', N'd07ce751ee544995a824f2e641f700a8', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (499, N'employee_489', N'employee_489@gmail.com', N'80ae7f5eecdc4e8f87bf561d6e80f381', N'e53c6fe1062f49dd817fbc8a3adf17da', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (500, N'employee_490', N'employee_490@gmail.com', N'c68521e7e2e64f628bf776ad5942a01a', N'ead88eb9836848e185f7a9443addcfc1', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (501, N'employee_491', N'employee_491@gmail.com', N'13ac0f541b5147f78617e0c7a5c513d9', N'5294be321e494df1a5b745685500731d', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (502, N'employee_492', N'employee_492@gmail.com', N'e43447b3e34344bdba522fd8b906e631', N'a02f917c79ef45f2b197b7d84173e33e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (503, N'employee_493', N'employee_493@gmail.com', N'828f6c84c3884f9cb0fb1b625b86eca6', N'89ab3c666e3c491e83cb381681e335b3', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (504, N'employee_494', N'employee_494@gmail.com', N'92cd057fb979466ca12b0ebf89f731cd', N'b2b5d203d04642308cef92d11728c1f5', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (505, N'employee_495', N'employee_495@gmail.com', N'0577c879bbed499386f7277860af7b3e', N'360f8bb3f3f9451baed5f601a6a06021', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (506, N'employee_496', N'employee_496@gmail.com', N'3deaa86036a04122895fb049e362af8f', N'692e2dacbbe345d69d0af8ed54d2c6af', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (507, N'employee_497', N'employee_497@gmail.com', N'81730f22cc85462c9a86e9e593403f3b', N'f3569ed9ea27470e909b0aee0397eead', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (508, N'employee_498', N'employee_498@gmail.com', N'8e39fdbb97394a68a0d357affda9c63d', N'635b8d513f5c4b61b263f555e7f8e677', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (509, N'employee_499', N'employee_499@gmail.com', N'f4fa1cbbbcdb4967ad2d2ca85e88c49a', N'e0de1ba78e89441a9e6842ed7583925e', 0, NULL, NULL, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [PasswordSalt], [IsLockedOut], [LastLoginDate], [LastActivityDate], [Token], [ExpiresIn], [UserType]) VALUES (510, N'employee_500', N'employee_500@gmail.com', N'e150286691064a8896b23a3355cef5c9', N'0640d20688f842799bc621b3e648f52e', 0, NULL, NULL, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ArticleFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticleFeedbacks_dbo.Articles_ArticleId] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([Id])
GO
ALTER TABLE [dbo].[ArticleFeedbacks] CHECK CONSTRAINT [FK_dbo.ArticleFeedbacks_dbo.Articles_ArticleId]
GO
ALTER TABLE [dbo].[ArticleFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticleFeedbacks_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ArticleFeedbacks] CHECK CONSTRAINT [FK_dbo.ArticleFeedbacks_dbo.Users_UserId]
GO

