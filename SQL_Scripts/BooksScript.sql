USE [Books]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 11/11/2020 11:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[author_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](100) NOT NULL,
	[last_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_authors]    Script Date: 11/11/2020 11:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_authors](
	[book_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC,
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_genres]    Script Date: 11/11/2020 11:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_genres](
	[book_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC,
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 11/11/2020 11:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[total_pages] [int] NULL,
	[price] [int] NULL,
	[publish_turn] [int] NULL,
	[print_year] [int] NULL,
	[rating] [decimal](4, 2) NULL,
	[isbn] [nvarchar](13) NULL,
	[published_date] [date] NULL,
	[publisher_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genres]    Script Date: 11/11/2020 11:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[genre] [nvarchar](255) NOT NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publishers]    Script Date: 11/11/2020 11:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publishers](
	[publisher_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[authors] ON 

INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (1, N'دبورا', N'هارکنس')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (2, N'ریک', N'ریدان')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (3, N'پگاه', N'خدادی')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (4, N'رابن', N'هاب')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (5, N'بهاره', N'نوربخش')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (6, N'نیل', N'گیمن')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (7, N'براندون', N'سندرسون')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (8, N'ویکتوریا', N'شوآب')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (9, N'برایان', N'استیولی')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (10, N'ماری', N'لو')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (11, N'مورگان', N'رایس')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (12, N'توی تی', N'ساترلند')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (13, N'الویت', N'شرفر')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (14, N'خالد', N'حسینی')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (15, N'دن', N'براون')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (16, N'پاتریک', N'راتفوس')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (17, N'صابر', N'قیطاسی')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (18, N'شانون', N'هیل')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (19, N'براندون', N'مول')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (20, N'مگی', N'استیف واتر')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (21, N'کاترین', N'فیشر')
INSERT [dbo].[authors] ([author_id], [first_name], [last_name]) VALUES (22, N'گارت', N'نیکس')
SET IDENTITY_INSERT [dbo].[authors] OFF
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (1, 1)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (2, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (3, 3)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (4, 4)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (5, 4)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (6, 1)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (7, 1)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (8, 5)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (9, 6)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (10, 7)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (11, 7)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (12, 7)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (13, 7)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (14, 8)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (15, 7)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (16, 7)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (17, 9)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (18, 8)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (19, 8)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (20, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (21, 9)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (22, 9)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (23, 10)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (24, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (25, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (26, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (27, 12)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (28, 13)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (29, 14)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (30, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (31, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (32, 9)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (33, 9)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (34, 15)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (35, 8)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (36, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (37, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (38, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (39, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (40, 8)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (41, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (42, 11)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (43, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (44, 5)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (45, 8)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (46, 16)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (47, 16)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (48, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (49, 16)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (50, 16)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (51, 17)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (52, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (53, 16)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (54, 16)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (55, 18)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (56, 21)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (57, 21)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (58, 19)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (59, 20)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (60, 22)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (61, 21)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (62, 19)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (63, 19)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (64, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (65, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (66, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (67, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (68, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (69, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (70, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (71, 2)
INSERT [dbo].[book_authors] ([book_id], [author_id]) VALUES (72, 2)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (1, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (2, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (3, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (4, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (5, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (6, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (7, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (8, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (9, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (10, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (11, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (12, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (13, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (14, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (15, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (16, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (17, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (18, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (19, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (20, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (21, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (22, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (23, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (24, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (25, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (26, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (27, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (28, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (29, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (30, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (31, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (32, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (33, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (34, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (35, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (36, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (37, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (38, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (39, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (40, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (41, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (42, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (43, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (44, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (45, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (46, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (47, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (48, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (49, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (50, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (51, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (52, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (53, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (54, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (55, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (56, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (57, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (58, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (59, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (60, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (61, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (62, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (63, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (64, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (65, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (66, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (67, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (68, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (69, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (70, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (71, 1)
INSERT [dbo].[book_genres] ([book_id], [genre_id]) VALUES (72, 1)
SET IDENTITY_INSERT [dbo].[books] ON 

INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (1, N'کشف جادوگران - قسمت دوم', 319, 35000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (2, N'مقبره پادشاه ستمگر', 400, 70000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (3, N'نگهبان باد', 400, 70000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (4, N'کار آموز آدمکشی - قسمت اول', 320, 50000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (5, N'کارآموز آدمکشی - قسمت دوم', 282, 50000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (6, N'کشف جادوگران - قسمت اول', 312, 50000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (7, N'کشف جادوگران - قسمت سوم', 276, 35000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (8, N'پریاموس', 342, 50000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (9, N'فال نیک', 384, 70000, 1, 1399, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (10, N'فاجعه - قسمت دوم', 236, 35000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (11, N'آتش افروز - قسمت اول', 242, 35000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (12, N'آتش افروز - فسمت دوم', 244, 35000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (13, N'فاجعه - قسمت اول', 242, 35000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (14, N'نبرد سایه و نور - جلد سوم', 222, 30000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (15, N'پولاددل - قسمت اول', 246, 30000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (16, N'پولاددل - قسمت دوم', 252, 35000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (17, N'آخرین پیمان نا گسستنی - جلد سوم', 274, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (18, N'نبرد سایه و نور - جلد اول', 288, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (19, N'نبرد سایه و نور - جلد دوم', 282, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (20, N'هزار توی آتشین - قسمت دوم', 220, 30000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (21, N'آخرین پیمان نا گسستنی - جلد اول', 260, 35000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (22, N'آخرین پیمان نا گسستنی - جلد دوم', 282, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (23, N'درخت ابدی', 204, 25000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (24, N'کشتی مردگان - قسمت دوم', 220, 30000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (25, N'هزار توی آتشین - قسمت اول', 214, 30000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (26, N'آیین شمشیرها', 267, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (27, N'طغیانگر', 208, 25000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (28, N'افت و خیز', 234, 25000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (29, N'دعای دریا', 32, 12000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (30, N'نوید شکوه', 285, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (31, N'بهای شجاعت', 288, 40000, 1, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (32, N'رهروان آتش - جلد دوم', 360, 30000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (33, N'رهروان آتش - جلد اول', 360, 30000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (34, N'منشا', 632, 60000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (35, N'هجوم سایه ها - جلد اول', 296, 27000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (36, N'چکش ثور', 448, 40000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (37, N'پیشگویی شوم', 408, 35000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (38, N'سرنوشت اژدهایان', 240, 20000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (39, N'فریاد افتخار', 320, 27000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (40, N'هجوم سایه ها - جلد دوم', 312, 27000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (41, N'در جستجوی قهرمانان - جلد اول', 320, 27000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (42, N'در جستجوی قهرمانان - جلد دوم', 208, 18000, 1, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (43, N'شمشیر تابستان', 504, 35000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (44, N'شیگانهوس', 408, 30000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (45, N'سایه تاریکتر جادو', 394, 60000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (46, N'ترس مردم فرزانه - جلد دوم', 504, 79000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (47, N'ترس مردم فرزانه - جلد سوم', 576, 89000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (48, N'پیشگویی مخفی', 376, 50000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (49, N'نام باد - جلد سوم', 360, 50000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (50, N'ترس مردم فرزانه - جلد اول', 448, 69000, 1, 1395, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (51, N'دنیای توراس', 288, 20000, 1, 1395, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (52, N'پرسی جکسون و قهرمانان یونان', 520, 80000, 2, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (53, N'نام باد - جلد اول', 288, 45000, 3, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (54, N'نام باد - جلد دوم', 328, 50000, 2, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (55, N'آتش و یخ', 224, 15000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (56, N'وارث گمشده', 254, 12000, 1, 1395, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (57, N'تاج پنهان', 284, 15000, 1, 1396, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (58, N'در پی پیشگویی', 526, 40000, 1, 1395, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (59, N'صید', 218, 11000, 1, 1395, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (60, N'شاهزادگان سردرگم', 380, 15000, 1, 1394, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (61, N'شهر تاریک', 256, 12000, 1, 1394, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (62, N'زاده‌ی وحش', 238, 11000, 1, 1394, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (63, N'بذر های قیام', 552, 40000, 1, 1394, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (64, N'پسر نپتون', 592, 95000, 2, 1395, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (65, N'نشان آتنا', 616, 99000, 3, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (66, N'خانه هادس', 640, 105000, 3, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (67, N'نبرد هزارتو', 376, 59000, 4, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (68, N'آخرین المپیان', 392, 59000, 5, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (69, N'قهرمان گمشده', 626, 99000, 2, 1394, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (70, N'دزد آذرخش', 416, 65000, 7, 1397, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (71, N'دریای هیولاها', 296, 45000, 6, 1398, NULL, NULL, NULL, NULL)
INSERT [dbo].[books] ([book_id], [title], [total_pages], [price], [publish_turn], [print_year], [rating], [isbn], [published_date], [publisher_id]) VALUES (72, N'نفرین تیتان', 328, 50000, 6, 1398, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[books] OFF
SET IDENTITY_INSERT [dbo].[genres] ON 

INSERT [dbo].[genres] ([genre_id], [genre], [parent_id]) VALUES (1, N'ماجراجویی', NULL)
SET IDENTITY_INSERT [dbo].[genres] OFF
SET IDENTITY_INSERT [dbo].[publishers] ON 

INSERT [dbo].[publishers] ([publisher_id], [name]) VALUES (1, N'behnam')
SET IDENTITY_INSERT [dbo].[publishers] OFF
ALTER TABLE [dbo].[book_authors]  WITH CHECK ADD  CONSTRAINT [fk_author] FOREIGN KEY([author_id])
REFERENCES [dbo].[authors] ([author_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[book_authors] CHECK CONSTRAINT [fk_author]
GO
ALTER TABLE [dbo].[book_authors]  WITH CHECK ADD  CONSTRAINT [fk_book] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([book_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[book_authors] CHECK CONSTRAINT [fk_book]
GO
ALTER TABLE [dbo].[book_genres]  WITH CHECK ADD  CONSTRAINT [fk_books] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([book_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[book_genres] CHECK CONSTRAINT [fk_books]
GO
ALTER TABLE [dbo].[book_genres]  WITH CHECK ADD  CONSTRAINT [fk_genre] FOREIGN KEY([genre_id])
REFERENCES [dbo].[genres] ([genre_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[book_genres] CHECK CONSTRAINT [fk_genre]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [fk_publisher] FOREIGN KEY([publisher_id])
REFERENCES [dbo].[publishers] ([publisher_id])
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [fk_publisher]
GO
ALTER TABLE [dbo].[genres]  WITH CHECK ADD  CONSTRAINT [fk_parent] FOREIGN KEY([parent_id])
REFERENCES [dbo].[genres] ([genre_id])
GO
ALTER TABLE [dbo].[genres] CHECK CONSTRAINT [fk_parent]
GO
