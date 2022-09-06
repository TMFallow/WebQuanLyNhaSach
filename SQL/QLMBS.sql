Create Database QLMBS
go
--============================================
use QLMBS
go
--============================================

create table DangKy
(
	HoTen nvarchar(50),
	TenDN nvarchar(50) primary key,
	MKDK nvarchar(50)
)

insert into DangKy
values (N'Phan Thanh Bình', N'PTBinh' , '12345'),
	   (N'Nguyễn Thụy Xuân Hạnh', N'NTXHanh' , '56789')

go 

--============================================
create table TaiKhoan
(
	TenDN nvarchar(50) primary key,
	MatKhau nvarchar(50),
	constraint FK1 foreign key (TenDN) references DangKy(TenDN)
)


insert into TAIKHOAN
values (N'PTBinh', '12345'),
	   (N'NTXHanh', '56789')

--============================================
create table TaiKhoanAdmin
(
	TenTK nvarchar(50) primary key,
	MatKhau nvarchar(50)
)

insert into TaiKhoanAdmin
values(N'Phan Thanh Binh', '12345'),
	  (N'Nguyen Thi Xuan Hanh', '12345')


--============================================

create table SACH
(
	MaSach char(10) not null primary key,
	Hinh char(50),
	TenSach nvarchar(50)
)

insert into SACH
values('MS001', '~/image/Six Swans.png', 'The Six Swans'),
	  ('MS002', '~/image/FR.png', 'The French Revolution'),
	  ('MS003', '~/image/Twelve dancing princesses.jpg', 'The Twelve Dancing Princesses'),
	  ('MS004', '~/image/Villette.jpg', 'Villette'),
	  ('MS005', '~/image/The Immortal Life of Henrietta Lacks.jpg', 'The Immortal Life of Henrietta Lacks'),
	  ('MS006', '~/image/Marie Antoinette The Journey.jpg', 'Marie Antoinette: The Journey'),
	  ('MS007', '~/image/Cranford.jpg', 'Cranford'),
	  ('MS008', '~/image/Jane Eyre.jpg', 'Jane Eyre'),
	  ('MS009', '~/image/The Life of Charlotte Bronte.png', 'The Life of Charlotte Brontë'),
	  ('MS010', '~/image/David Copperfield.jpg', 'David Copperfield'),
	  ('MS011', '~/image/A Childs Book of Poems.jpg', 'Emily Dickinson'),
	  ('MS012', '~/image/Phantasmagoria.jpg', 'Lewis Carroll'),
	  ('MS013', '~/image/Gates of Fairyland.jpg', 'Margaret Tarrant'),
	  ('MS014', '~/image/Jabberwocky.jpg', 'Lewis Carroll'),
	  ('MS015', '~/image/The Shakespeare Book.jpg', 'The Shakespeare Book'),
	  ('MS016', '~/image/Black Holes_ The Reith Lectures.jpg', 'Black Holes: The Reith Lectures'),
	  ('MS017', '~/image/The Hobbit.jpg', 'The Hobbit')


--============================================

create table CTSACH
(
	MaSach char(10) not null primary key,
	TenSach nvarchar(50),
	TacGia nvarchar(50),
	TenNhom nvarchar(40),
	Hinh char(50),
	GiaBan int,
	SL int,
	ChiTiet nvarchar(1000),
	TinhTrang bit
	constraint FK foreign key (MaSach) references SACH(MaSach)
)

insert into CTSACH
values ('MS001', 'The Six Swans' , 'Wilhelm Carl Grimm' ,N'Cổ Tích', '~/image/Six Swans.png', 150000, 10,N'	Nội Dung: Một vị vua bị lạc trong một khu rừng, và một người phụ nữ lớn tuổi đã giúp anh ta, với điều kiện anh ta phải cưới cô con gái xinh đẹp của bà ta. Nhà vua có linh cảm không tốt về điều này nhưng dù sao cũng chấp nhận. Tuy nhiên, ông có sáu con trai và một con gái từ cuộc hôn nhân đầu tiên và lo sợ rằng những đứa trẻ sẽ là mục tiêu của người vợ mới của ông; vì vậy anh ta gửi họ đi và thăm họ một cách bí mật. Nữ hoàng mới và bây giờ là mẹ kế, người đã học được phép thuật phù thủy từ mẹ cô, phát hiện ra sáu người con riêng của mình và quyết định ngăn cản họ. Cô ấy may sáu chiếc áo ma thuật và đi đến lâu đài ẩn nơi những đứa trẻ được ẩn náu để an toàn, sau đó ném những chiếc áo lên người các cậu bé và biến chúng thành thiên nga', 1),
	   ('MS002', 'The French Revolution', 'William Doyle', N'Lịch Sử', '~/image/FR.png', 200000, 15,N'		Nội Dung: Cách mạng Pháp kéo dài 10 năm từ 1789 đến 1799. Nó bắt đầu vào ngày 14 tháng 7 năm 1789 khi những người cách mạng xông vào một nhà tù có tên là Bastille. Cuộc cách mạng kết thúc vào năm 1799 khi một vị tướng tên là Napoléon lật đổ chính phủ cách mạng và thành lập Lãnh sự quán Pháp', 1),
	   ('MS003', 'The Twelve Dancing Princesses' , 'Jacob Ludwig Carl Grimm', N'Cổ Tích', '~/image/Twelve dancing princesses.jpg', 145000, 20,N'	Nội Dung: Anh em nhà Grimm đã học được câu chuyện từ những người bạn của họ, gia đình Haxthausens, những người đã nghe câu chuyện ở Münster. Các phiên bản khác đã được biết đến ở Hesse và Paderborn. Trong phiên bản Hesse, chỉ có một công chúa được cho là chịu trách nhiệm đi hàng chục đôi giày mỗi đêm cho đến khi người học việc của một thợ đóng giày trẻ phát hiện ra rằng cô ấy đang cùng với 11 công chúa khác tham gia vào cuộc vui. Phép thuật bị phá vỡ, và người học việc kết hôn với công chúa. Trong phiên bản Paderborn, đó là ba nàng công chúa khiêu vũ hàng đêm', 1),
	   ('MS004', 'Villette' , 'Charlotte Brontë', N'Văn Học', '~/image/Villette.jpg', 120000, 5,N'	Nội Dung: Năm 1842 Charlotte Brontë, ở tuổi 26, đã đến Brussels, Bỉ cùng với em gái Emily. Ở đó, họ đăng ký vào một trường cấp dưỡng (trường nội trú) do M. và Mme điều hành. Constantin Héger. Đổi lại tiền ăn ở và học phí, Charlotte dạy tiếng Anh và Emily dạy nhạc. Thời gian ở nhà hưu của hai chị em bị cắt ngắn khi dì của họ, Elizabeth Branwell, qua đời vào tháng 10 năm 1842. Elizabeth gia nhập gia đình Brontë để chăm sóc bọn trẻ sau cái chết của chị gái, mẹ của họ là Maria Brontë, nhũ danh Maria Branwell', 1),
	   ('MS005', 'The Immortal Life of Henrietta' , 'Rebecca Skloot', N'Văn Học', '~/image/The Immortal Life of Henrietta Lacks.jpg' , 170000, 7,N'	Nội Dung: Cuốn sách kể về Henrietta Lacks và dòng tế bào bất tử, được gọi là HeLa, sinh ra từ tế bào ung thư cổ tử cung của Lacks vào năm 1951. Skloot bắt đầu quan tâm đến Lacks sau khi một giáo viên sinh học giới thiệu về cô nhưng ít biết về cô. Skloot bắt đầu tiến hành nghiên cứu sâu rộng về cô ấy và làm việc với gia đình của Lacks để tạo ra cuốn sách. Cuốn sách này đáng chú ý vì nó viết khoa học và giải quyết các vấn đề đạo đức của chủng tộc và giai cấp trong nghiên cứu y học. Skloot nói rằng một số thông tin được lấy từ tạp chí của Deborah Lacks, con gái của Henrietta Lacks, cũng như từ "các bức ảnh và tài liệu lưu trữ, nghiên cứu khoa học và lịch sử',1),
	   ('MS006', 'Marie Antoinette: The Journey' , 'Antonia Fraser', N'Lịch Sử', '~/image/Marie Antoinette The Journey.jpg', 150000, 21,N'		Nội Dung: Marie Antoinette, bị buộc tội sai khi thốt ra câu "Hãy để họ ăn bánh", là chủ đề của sự chế giễu và tò mò ngay cả trước khi bà qua đời; kể từ đó, bà đã trở thành đối tượng của cuộc tranh luận và suy đoán và sự mê hoặc đến mức thường dành cho những nhân vật bi thảm trong lịch sử. Kết hôn chỉ trong thời kỳ con gái, về cơ bản đứa trẻ vui vẻ, đặc quyền, nhưng không nổi bật này được đưa vào một thời gian và địa điểm vô song, và được hoàn cảnh ra lệnh phải đóng một vai trò quan trọng trong lịch sử. Bức chân dung xa hoa và hấp dẫn của Antonia Fraser về Marie Antoinette, một trong những người phụ nữ nổi tiếng nhất trong lịch sử châu Âu, kích thích lòng trắc ẩn và sự quan tâm đối với tất cả các khía cạnh của chủ đề của cô, khiến người đọc không chỉ đắm chìm vào tuổi trưởng thành của một người phụ nữ duyên dáng, buaimedt còn trong sự khám phá của một thời đại',1),
	   ('MS007', 'Cranford' , 'Elizabeth Gaskell', N'Văn Học', '~/image/Cranford.jpg', 100000, 11,N'	Nội Dung: Cranford hư cấu dựa trên thị trấn nhỏ Knutford ở Cheshire, nơi Elizabeth Gaskell lớn lên. Cô đã vẽ về những ký ức thời thơ ấu của mình cho một bài báo xuất bản ở Mỹ, "Thế hệ cuối cùng ở Anh" (1849), và cho thị trấn Duncombe, trong đó có câu chuyện mở rộng "Lời thú nhận của ông Harrison" (1851). Những lời kể về cuộc sống ở một thị trấn nông thôn và thói hợm hĩnh kiểu cũ thịnh hành ở đó đã được chuyển thành những gì dự định ban đầu chỉ đơn giản là một câu chuyện khác, được xuất bản với tên gọi "Our Society in Cranford" trên tạp chí Gia đình Words vào tháng 12 năm 1851. Nhìn thấy những khả năng của một tác phẩm dài hơn trong phần, cuối cùng đã hình thành hai chương đầu tiên trong tiểu thuyết của cô, Charles Dickens, biên tập viên của tạp chí, đã khuyến khích tác giả viết nhiều tập hơn',1),
	   ('MS008', 'Jane Eyre' , 'Charlotte Brontë', N'Văn Học', '~/image/Jane Eyre.jpg', 120000, 35,N'	Nội Dung: Cô bé Jane Eyre, lúc này 10 tuổi, sống tại Lâu đài Gateshead của gia đình nhà Reed. Jane là trẻ mồ côi do cha mẹ qua đời vì bệnh sốt phát ban. Ông Reed, em của mẹ Jane, đã mất cách đó 9 năm. Vợ của ông Reed, Sarah Reed, không ưa cô bé nên ngược đãi và coi Jane như một gánh nặng, và bà Reed không muốn 3 đứa con của mình làm bạn với Jane. Kết quả là Jane trở nên phòng thủ trước sự phán xét tàn nhẫn của bà ta. Cô bảo mẫu Bessie là đồng minh duy nhất của Jane trong lâu đài, mặc dù Bessie thỉnh thoảng cũng mắng Jane gay gắt. Bị tách khỏi các hoạt động gia đình, Jane chỉ có một con búp bê và những cuốn sách để tự an ủi. Một ngày nọ, John Reed, con trai lớn của bà Reed, vô lí đánh Jane làm cô bé phải đánh lại tự vệ. Do vậy Jane bị phạt nhốt vào phòng đỏ, là nơi ông cậu quá cố qua đời. Ở đó, cô đã la hét sau khi nghĩ rằng mình đã nhìn thấy hồn ma của ông Reed. Sau khi mở cửa phòng để hỏi nguyên nhân, bà Reed tiếp tục khóa cửa nhốt Jane làm cô bé ngất đi',1),
	   ('MS009', 'The Life of Charlotte Bronte' , 'Elizabeth Gaskell', N'Lịch Sử', '~/image/The Life of Charlotte Bronte.png', 165000, 27, N'   	Nội Dung: Charlotte Bronte là một tiểu thuyết gia Anh, là chị cả trong 3 chị em nổi tiếng Brontë, tác giả của những tiểu thuyết xếp vào hàng kinh điển của văn học Anh. Charlotte Brontë, người dùng bút danh Currer Bell, được biết đến với Jane Eyre, một trong những tiểu thuyết tiếng Anh nổi tiếng nhất mọi thời đại',1),
	   ('MS010', 'David Copperfield' , 'Charles Dickens', N'Khoa Học', '~/image/David Copperfield.jpg', 210000, 15,N'	   Nội Dung: David sinh ra ở Blunderstone, Suffolk, Anh, sáu tháng sau cái chết của cha mình. David trải qua những năm đầu đời của mình trong hạnh phúc tương đối với người mẹ trẻ con yêu thương và người quản gia tốt bụng của họ, Clara Peggotty. Họ gọi anh ta là Davy. Khi anh được bảy tuổi, mẹ anh kết hôn với Edward Murdstone',1),
	   ('MS011', 'A Childs Book of Poems' , 'Emily Dickinson', N'Cổ Tích', '~/image/A Childs Book of Poems.jpg', 170000, 40,N'		Nội Dung: Với các hình minh họa hấp dẫn của Gyo Fujikawa mô tả trẻ em thuộc mọi chủng tộc đang tương tác một cách ngọt ngào, cũng như một bầy động vật và thế giới tự nhiên được thể hiện một cách hấp dẫn với tất cả sự kỳ diệu của nó.',1),
	   ('MS012', 'Brevertons Phantasmagoria' , 'Lewis Caroll', N'Văn Học', '~/image/Phantasmagoria.jpg', 120000, 14,N'	    	Nội Dung: Bước vào một thế giới kinh dị ngoài những cơn ác mộng tồi tệ nhất của bạn! Thực hiện chuyến đi dài 50 chương xuyên qua London thời Victoria xoắn ốc và đi sâu hơn xuống hang thỏ, nơi có một Phantasmagoria khủng bố vô tận đang chờ đợi. Đến những nơi mà đứa trẻ thơ và bước đi đáng sợ tay trong tay! Gặp gỡ The Wakefields, nhà thơ trẻ tài năng Arabella, cô em gái kỳ lạ Alice và cha mẹ kỳ lạ của họ',1),
	   ('MS013', 'Gates of Fairyland' , 'Margaret Tarrant', N'Cổ Tích', '~/image/Gates of Fairyland.jpg', 100000, 25,N'	  Nội Dung: Các nghệ sĩ thời Victoria đã khắc họa các nàng tiên bao gồm John Atkinson Grimshaw, Joseph Noel Paton, John Anster Fitzgerald và Daniel Maclise. Mối quan tâm đến nghệ thuật theo chủ đề cổ tích đã có một thời kỳ phục hưng ngắn ngủi sau khi xuất bản những bức ảnh về Nàng tiên Cottingley vào năm 1917 và một số nghệ sĩ đã chuyển sang vẽ tranh theo chủ đề cổ tích.',1),
	   ('MS014', 'Jabberwocky' , 'Lewis Caroll', N'Văn Học', '~/image/Jabberwocky.jpg', 150000, 16,N'		Nội Dung: Jabberwocky là một bài thơ vô nghĩa do Lewis Carroll viết về việc giết một sinh vật có tên "Jabberwock". Nó được đưa vào tiểu thuyết Through the Looking-Glass năm 1871 của ông, phần tiếp theo của Cuộc phiêu lưu của Alice ở xứ sở thần tiên (1865). Cuốn sách kể về những cuộc phiêu lưu của Alice trong thế giới mặt trước của Vùng đất Kính nhìn.',1),
	   ('MS015', 'The Shakespeare Book' , 'Stanley Wells' ,N'Văn Học', '~/image/The Shakespeare Book.jpg', 80000, 24,N'	Nội Dung:  Shakespeare đã viết hoặc đóng góp cho hơn 40 vở kịch, từ phim hài lãng mạn đến bi kịch sâu sắc King Lear, cũng như 154 bài sonnet. Sách của Shakespeare có các bản tóm tắt cốt truyện trực quan của từng phần, với các sơ đồ để hiển thị mạng lưới các mối quan hệ phức tạp trong các vở kịch như Giấc mơ đêm mùa hè. Các bài bình luận giải thích các nguồn của Shakespeare và đặt mỗi bộ phim trong bối cảnh, chẳng hạn như tiết lộ những người theo đạo Tin lành và Công giáo thời chiến của ông được phản chiếu như thế nào trong Montagues và Capulets của Romeo và Juliet. ',1),
	   ('MS016', 'Black Holes: The Reith Lectures', 'Stephen Hawking', N'Khoa Học', '~/image/Black Holes_ The Reith Lectures.jpg', 75000, 70,N'	Nội Dung:  Người ta nói rằng sự thật đôi khi còn xa lạ hơn viễn tưởng, và không nơi nào đúng hơn trường hợp của các lỗ đen. Các lỗ đen xa lạ hơn bất cứ thứ gì được các nhà văn khoa học viễn tưởng mơ ước Năm 2016, Giáo sư Stephen Hawking đã đưa ra Bài giảng Reith của BBC về một chủ đề khiến ông mê mẩn trong nhiều thập kỷ - lỗ đen.',1),
	   ('MS017', 'The Hobbit' , 'J. R. R. Tolkien', N'Cổ Tích', '~/image/The Hobbit.jpg', 96000, 14,N'	Nội Dung: Câu chuyện của Anh Chàng Hobbit là một chuyến phiêu lưu, khi Bilbo Baggins bị cuốn vào chuyến phiêu lưu giành lại xứ sở của những người lùn. Chuyến đi ấy vốn chẳng bao giờ được cho là thích hợp với một Hobbit chỉ thích ăn thức ngon, ở chỗ đẹp. Nhưng rồi Bilbo đã tham gia, đã bị cuốn vào rồi có thể trở về. Chuyến phiêu lưu trở thành bài học về cuộc sống, về con người.',1)


--============================================


create table CTSACHKM
(
	MaSachKM char(10) not null primary key,
	TenSachKM nvarchar(50),
	TG nvarchar(50),
	TenNhomS nvarchar(40),
	HinhSKM char(50),
	GiaBanKM int,
	ChiTietS nvarchar(1000)
	constraint FK_SKM foreign key (MaSachKM) references SACH(MaSach)
)



insert into CTSACHKM
values ('MS015', 'The Shakespeare Book' , 'Stanley Wells' ,N'Văn Học', '~/image/The Shakespeare Book.jpg', 80000, N'	Nội Dung:  Shakespeare đã viết hoặc đóng góp cho hơn 40 vở kịch, từ phim hài lãng mạn đến bi kịch sâu sắc King Lear, cũng như 154 bài sonnet. Sách của Shakespeare có các bản tóm tắt cốt truyện trực quan của từng phần, với các sơ đồ để hiển thị mạng lưới các mối quan hệ phức tạp trong các vở kịch như Giấc mơ đêm mùa hè. Các bài bình luận giải thích các nguồn của Shakespeare và đặt mỗi bộ phim trong bối cảnh, chẳng hạn như tiết lộ những người theo đạo Tin lành và Công giáo thời chiến của ông được phản chiếu như thế nào trong Montagues và Capulets của Romeo và Juliet. '),
	   ('MS016', 'Black Holes: The Reith Lectures', 'Stephen Hawking', N'Khoa Học', '~/image/Black Holes_ The Reith Lectures.jpg', 75000, N'	Nội Dung:  Người ta nói rằng sự thật đôi khi còn xa lạ hơn viễn tưởng, và không nơi nào đúng hơn trường hợp của các lỗ đen. Các lỗ đen xa lạ hơn bất cứ thứ gì được các nhà văn khoa học viễn tưởng mơ ước Năm 2016, Giáo sư Stephen Hawking đã đưa ra Bài giảng Reith của BBC về một chủ đề khiến ông mê mẩn trong nhiều thập kỷ - lỗ đen.'),
	   ('MS017', 'The Hobbit' , 'J. R. R. Tolkien', N'Cổ Tích', '~/image/The Hobbit.jpg', 96000, N'	Nội Dung: Câu chuyện của Anh Chàng Hobbit là một chuyến phiêu lưu, khi Bilbo Baggins bị cuốn vào chuyến phiêu lưu giành lại xứ sở của những người lùn. Chuyến đi ấy vốn chẳng bao giờ được cho là thích hợp với một Hobbit chỉ thích ăn thức ngon, ở chỗ đẹp. Nhưng rồi Bilbo đã tham gia, đã bị cuốn vào rồi có thể trở về. Chuyến phiêu lưu trở thành bài học về cuộc sống, về con người.')


--============================================


create table KhachHang
(
	MaKH char(10),
	TenKH nvarchar(50),
	DiaChi nvarchar(50),
	SoDienThoai char(12),
	MaSach char(10),
	TongTien int,
	constraint PK_KH primary key (MaKH, MaSach),
	constraint FK_KH foreign key (MaSach) references Sach(MaSach)
)	   


--============================================

create table LienHe
(
	HoTen nvarchar(50),
	SoDT char(12),
	Email char(50),
	VanDe nvarchar(100) not null,
)

--============================================

