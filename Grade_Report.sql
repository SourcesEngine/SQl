CREATE TABLE [dbo].[Grade_Report](
	[Student] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Grades] [numeric](18, 2) NULL,
	[Semester] [int] NULL
);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'Mathematics', CAST(82.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'Science', CAST(83.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'Programming', CAST(91.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'History', CAST(89.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'English', CAST(95.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'Mathematics', CAST(79.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'Science', CAST(80.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'Programming', CAST(92.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'History', CAST(95.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jamie', N'English', CAST(93.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'Mathematics', CAST(95.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'Science', CAST(95.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'Programming', CAST(90.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'History', CAST(92.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'English', CAST(96.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'Mathematics', CAST(78.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'Science', CAST(79.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'Programming', CAST(82.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'History', CAST(80.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jenny', N'English', CAST(79.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'Mathematics', CAST(96.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'Science', CAST(92.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'Programming', CAST(93.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'History', CAST(88.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'English', CAST(94.00 AS Numeric(18, 2)), 1);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'Mathematics', CAST(90.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'Science', CAST(92.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'Programming', CAST(98.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'History', CAST(93.00 AS Numeric(18, 2)), 2);
INSERT [dbo].[Grade_Report] ([Student], [Subject], [Grades], [Semester]) VALUES (N'Jerome', N'English', CAST(90.00 AS Numeric(18, 2)), 2);



SELECT Student,
       ROUND(AVG(CASE WHEN Subject = 'English' THEN Grades END), 2) AS English,
       ROUND(AVG(CASE WHEN Subject = 'Mathematics' THEN Grades END), 2) AS Mathematics,
       ROUND(AVG(CASE WHEN Subject = 'Science' THEN Grades END), 2) AS Science,
       ROUND(AVG(CASE WHEN Subject = 'Programming' THEN Grades END), 2) AS Programming,
       ROUND(AVG(CASE WHEN Subject = 'History' THEN Grades END), 2) AS History
FROM [dbo].[Grade_Report]
GROUP BY Student;


