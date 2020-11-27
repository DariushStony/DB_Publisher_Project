USE master;
GO

CREATE DATABASE Books;
GO

USE Books;
GO

CREATE TABLE publishers
(
	publisher_id INT IDENTITY(1, 1) NOT NULL,
	name NVARCHAR(255) NOT NULL,
	PRIMARY KEY (publisher_id)
);
GO

CREATE TABLE books
(
	book_id INT IDENTITY(1, 1) NOT NULL,
	title NVARCHAR(255) NOT NULL,
	total_pages INT NULL,
	price INT NULL,
	publish_turn INT NULL,
	print_year INT NULL,
	rating DECIMAL(4, 2) NULL,
	isbn NVARCHAR(13) NULL,
	published_date DATE NULL,
	publisher_id INT NULL,

	PRIMARY KEY (book_id),
	CONSTRAINT fk_publisher
		FOREIGN KEY (publisher_id)
		REFERENCES publishers (publisher_id)
);
GO

CREATE TABLE authors
(
	author_id INT IDENTITY(1, 1) NOT NULL,
	first_name NVARCHAR(100) NOT NULL,
	last_name NVARCHAR(50) NULL,
	PRIMARY KEY (author_id)
);
GO

CREATE TABLE book_authors
(
	book_id INT NOT NULL,
	author_id INT NOT NULL,
	PRIMARY KEY (book_id, author_id),
	CONSTRAINT fk_book
		FOREIGN KEY (book_id)
		REFERENCES books (book_id) ON DELETE CASCADE,
	CONSTRAINT fk_author
		FOREIGN KEY (author_id)
		REFERENCES authors (author_id) ON DELETE CASCADE
);
GO

CREATE TABLE genres
(
	genre_id INT IDENTITY(1, 1) NOT NULL,
	genre NVARCHAR(255) NOT NULL,
	parent_id INT NULL,
	PRIMARY KEY (genre_id),
	CONSTRAINT fk_parent
		FOREIGN KEY (parent_id) REFERENCES genres (genre_id)
);
GO

CREATE TABLE book_genres
(
	book_id INT NOT NULL,
	genre_id INT NOT NULL,
	PRIMARY KEY (book_id, genre_id),
	CONSTRAINT fk_books
		FOREIGN KEY (book_id)
		REFERENCES books (book_id) ON DELETE CASCADE,
	CONSTRAINT fk_genre
		FOREIGN KEY (genre_id)
		REFERENCES genres (genre_id) ON DELETE CASCADE
);
GO


INSERT INTO publishers (name)
VALUES 
('behnam');
GO

INSERT INTO authors (first_name, last_name)
VALUES
(N'دبورا', N'هارکنس'),
(N'ریک', N'ریدان'),
(N'پگاه', N'خدادی'),
(N'رابن', N'هاب'),
(N'بهاره', N'نوربخش'),
(N'نیل', N'گیمن'),
(N'براندون', N'سندرسون'),
(N'ویکتوریا', N'شوآب'),
(N'برایان', N'استیولی'),
(N'ماری', N'لو'),
(N'مورگان', N'رایس'),
(N'توی تی', N'ساترلند'),
(N'الویت', N'شرفر'),
(N'خالد', N'حسینی'),
(N'دن', N'براون'),
(N'پاتریک', N'راتفوس'),
(N'صابر', N'قیطاسی'),
(N'شانون', N'هیل'),
(N'براندون', N'مول'),
(N'مگی', N'استیف واتر'),
(N'کاترین', N'فیشر'),
(N'گارت', N'نیکس');
GO

INSERT INTO genres (genre)
VALUES
(N'ماجراجویی');
GO

INSERT INTO books (title, total_pages, price, publish_turn, print_year)
VALUES
(N'کشف جادوگران - قسمت دوم', 319, 35000, 1, 1399),
(N'مقبره پادشاه ستمگر', 400, 70000, 1, 1399),
(N'نگهبان باد', 400, 70000, 1, 1399),
(N'کار آموز آدمکشی - قسمت اول', 320, 50000, 1, 1399),
(N'کارآموز آدمکشی - قسمت دوم', 282, 50000, 1, 1399),
(N'کشف جادوگران - قسمت اول', 312, 50000, 1, 1399),
(N'کشف جادوگران - قسمت سوم', 276, 35000, 1, 1399),
(N'پریاموس', 342, 50000, 1, 1398),
(N'فال نیک', 384, 70000, 1, 1399),
(N'فاجعه - قسمت دوم', 236, 35000, 1, 1398),
(N'آتش افروز - قسمت اول', 242, 35000, 1, 1398),
(N'آتش افروز - فسمت دوم', 244, 35000, 1, 1398),
(N'فاجعه - قسمت اول', 242, 35000, 1, 1398),
(N'نبرد سایه و نور - جلد سوم', 222, 30000, 1, 1398),
(N'پولاددل - قسمت اول', 246, 30000, 1, 1398),
(N'پولاددل - قسمت دوم', 252, 35000, 1, 1398),
(N'آخرین پیمان نا گسستنی - جلد سوم', 274, 40000, 1, 1398),
(N'نبرد سایه و نور - جلد اول', 288, 40000, 1, 1398),
(N'نبرد سایه و نور - جلد دوم', 282, 40000, 1, 1398),
(N'هزار توی آتشین - قسمت دوم', 220, 30000, 1, 1398),
(N'آخرین پیمان نا گسستنی - جلد اول', 260, 35000, 1, 1398),
(N'آخرین پیمان نا گسستنی - جلد دوم', 282, 40000, 1, 1398),
(N'درخت ابدی', 204, 25000, 1, 1398),
(N'کشتی مردگان - قسمت دوم', 220, 30000, 1, 1398),
(N'هزار توی آتشین - قسمت اول', 214, 30000, 1, 1398),
(N'آیین شمشیرها', 267, 40000, 1, 1398),
(N'طغیانگر', 208, 25000, 1, 1398),
(N'افت و خیز', 234, 25000, 1, 1398),
(N'دعای دریا', 32, 12000, 1, 1397),
(N'نوید شکوه', 285, 40000, 1, 1398),
(N'بهای شجاعت', 288, 40000, 1, 1398),
(N'رهروان آتش - جلد دوم', 360, 30000, 1, 1397),
(N'رهروان آتش - جلد اول', 360, 30000, 1, 1397),
(N'منشا', 632, 60000, 1, 1397),
(N'هجوم سایه ها - جلد اول', 296, 27000, 1, 1397),
(N'چکش ثور', 448, 40000, 1, 1397),
(N'پیشگویی شوم', 408, 35000, 1, 1397),
(N'سرنوشت اژدهایان', 240, 20000, 1, 1397),
(N'فریاد افتخار', 320, 27000, 1, 1397),
(N'هجوم سایه ها - جلد دوم', 312, 27000, 1, 1397),
(N'در جستجوی قهرمانان - جلد اول', 320, 27000, 1, 1397),
(N'در جستجوی قهرمانان - جلد دوم', 208, 18000, 1, 1397),
(N'شمشیر تابستان', 504, 35000, 1, 1396),
(N'شیگانهوس', 408, 30000, 1, 1396),
(N'سایه تاریکتر جادو', 394, 60000, 1, 1396),
(N'ترس مردم فرزانه - جلد دوم', 504, 79000, 1, 1396),
(N'ترس مردم فرزانه - جلد سوم', 576, 89000, 1, 1396),
(N'پیشگویی مخفی', 376, 50000, 1, 1396),
(N'نام باد - جلد سوم', 360, 50000, 1, 1396),
(N'ترس مردم فرزانه - جلد اول', 448, 69000, 1, 1395),
(N'دنیای توراس', 288, 20000, 1, 1395),
(N'پرسی جکسون و قهرمانان یونان', 520, 80000, 2, 1398),
(N'نام باد - جلد اول', 288, 45000, 3, 1398),
(N'نام باد - جلد دوم', 328, 50000, 2, 1398),
(N'آتش و یخ', 224, 15000, 1, 1396),
(N'وارث گمشده', 254, 12000, 1, 1395),
(N'تاج پنهان', 284, 15000, 1, 1396),
(N'در پی پیشگویی', 526, 40000, 1, 1395),
(N'صید', 218, 11000, 1, 1395),
(N'شاهزادگان سردرگم', 380, 15000, 1, 1394),
(N'شهر تاریک', 256, 12000, 1, 1394),
(N'زاده‌ی وحش', 238, 11000, 1, 1394),
(N'بذر های قیام', 552, 40000, 1, 1394),
(N'پسر نپتون', 592, 95000, 2, 1395),
(N'نشان آتنا', 616, 99000, 3, 1398),
(N'خانه هادس', 640, 105000, 3, 1398),
(N'نبرد هزارتو', 376, 59000, 4, 1398),
(N'آخرین المپیان', 392, 59000, 5, 1398),
(N'قهرمان گمشده', 626, 99000, 2, 1394),
(N'دزد آذرخش', 416, 65000, 7, 1397),
(N'دریای هیولاها', 296, 45000, 6, 1398),
(N'نفرین تیتان', 328, 50000, 6, 1398);
GO

