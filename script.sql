USE [MYDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[AnsID] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](20) NULL,
	[userAns] [varchar](20) NULL,
	[QuestionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](200) NULL,
	[IsAttempt] [bit] NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (1, N'Delhi', NULL, 1)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (2, N'Mumbai', NULL, 1)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (3, N'Chennai', NULL, 1)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (4, N'Pune', NULL, 1)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (5, N'Narender Modi', NULL, 2)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (6, N'Rahul Gandhi', NULL, 2)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (7, N'JP Nadda', NULL, 2)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (8, N'Sonia gandhi', NULL, 2)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (9, N'sunder Pichai', NULL, 3)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (10, N'satya Nadela', NULL, 3)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (11, N'Bill Gate', NULL, 3)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (12, N'John cena ', NULL, 3)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (13, N'Mark ZukerBurge', NULL, 4)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (14, N'Bill Gate', NULL, 4)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (15, N'Satya Nadela ', NULL, 4)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (16, N'Anand mahendra', NULL, 4)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (17, N'Canada', NULL, 5)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (18, N'USA', NULL, 5)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (19, N'India', NULL, 5)
INSERT [dbo].[Answers] ([AnsID], [Answer], [userAns], [QuestionId]) VALUES (20, N'Russia', NULL, 5)
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([QuestionID], [Question], [IsAttempt], [CreateDate]) VALUES (1, N'what is capitla of India', 0, CAST(N'2021-06-10T19:24:58.243' AS DateTime))
INSERT [dbo].[Questions] ([QuestionID], [Question], [IsAttempt], [CreateDate]) VALUES (2, N'PrimeMinister of India', 0, CAST(N'2021-06-10T19:24:58.243' AS DateTime))
INSERT [dbo].[Questions] ([QuestionID], [Question], [IsAttempt], [CreateDate]) VALUES (3, N'CEO of Google', 0, CAST(N'2021-06-10T19:24:58.243' AS DateTime))
INSERT [dbo].[Questions] ([QuestionID], [Question], [IsAttempt], [CreateDate]) VALUES (4, N'Founder of Facebook', 0, CAST(N'2021-06-10T19:24:58.243' AS DateTime))
INSERT [dbo].[Questions] ([QuestionID], [Question], [IsAttempt], [CreateDate]) VALUES (5, N'World Biggest Country', 0, CAST(N'2021-06-10T19:24:58.243' AS DateTime))
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
