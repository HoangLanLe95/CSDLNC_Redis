INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
('Harry Potter và Hòn đá Phù thủy', 'J.K. Rowling', '9780747532743', 'Một cậu bé phù thủy bắt đầu hành trình tại trường Hogwarts.', 1997, 11, 1, 3),
('Thám tử lừng danh Conan Tập 1', 'Aoyama Gosho', '9784091213259', 'Thám tử Conan giải quyết các vụ án đầy thử thách.', 1994, 20, 1, 2),
('Bí mật của Nicholas Flamel bất tử', 'Michael Scott', '9780385736008', 'Một câu chuyện giả tưởng về phù thủy và cuộc chiến vì cuốn sách ma thuật.', 2007, 15, 1, 3),
('Cô gái trên tàu', 'Paula Hawkins', '9781594634024', 'Một người phụ nữ phát hiện bí mật đen tối khi đi tàu.', 2015, 8, 1, 2),
('Nỗi đau của Đom Đóm', 'Akiyuki Nosaka', '9780141181265', 'Câu chuyện cảm động về hai anh em trong chiến tranh.', 1967, 6, 1, 1),
('Đắc nhân tâm', 'Dale Carnegie', '9781451621716', 'Sách dạy kỹ năng giao tiếp và lãnh đạo.', 1936, 30, 1, 11),
('Nhà giả kim', 'Paulo Coelho', '9780061122415', 'Câu chuyện hành trình tìm kiếm ý nghĩa cuộc sống.', 1988, 25, 1, 11),
('Mật mã Da Vinci', 'Dan Brown', '9780385504201', 'Trò chơi giải mã các bí mật liên quan đến hội kín.', 2003, 12, 1, 2),
('Chuyện con mèo dạy hải âu bay', 'Luis Sepúlveda', '9786049571046', 'Một câu chuyện ý nghĩa về tình yêu thương và trách nhiệm.', 1996, 18, 1, 1),
('Một thời để nhớ', 'Nicholas Sparks', '9780446696166', 'Câu chuyện tình yêu đầy cảm động.', 1999, 10, 1, 5),
('Hoàng tử bé', 'Antoine de Saint-Exupéry', '9780156012195', 'Câu chuyện triết lý sâu sắc dành cho mọi lứa tuổi.', 1943, 20, 1, 1),
('Chạng vạng', 'Stephenie Meyer', '9780316015844', 'Mối tình lãng mạn giữa cô gái và ma cà rồng.', 2005, 15, 1, 5),
('Tội ác và hình phạt', 'Fyodor Dostoevsky', '9780140449136', 'Tiểu thuyết kinh điển về tội lỗi và sự chuộc lỗi.', 1866, 8, 1, 7),
('Trên đường băng', 'Tony Buổi Sáng', '9786047753949', 'Sách kỹ năng sống, truyền cảm hứng cho giới trẻ.', 2014, 25, 1, 11),
('Thế giới phẳng', 'Thomas L. Friedman', '9780374292881', 'Cái nhìn sâu sắc về toàn cầu hóa.', 2005, 12, 1, 11),
('Bố già', 'Mario Puzo', '9780399103421', 'Câu chuyện về gia đình mafia quyền lực.', 1969, 10, 1, 2),
('Những người khốn khổ', 'Victor Hugo', '9780451419439', 'Tác phẩm kinh điển về công lý và lòng nhân ái.', 1862, 12, 1, 7),
('Sherlock Holmes Tập 1', 'Arthur Conan Doyle', '9780141034345', 'Tuyển tập những vụ án kinh điển của thám tử Sherlock Holmes.', 1892, 20, 1, 2),
('Rừng Na Uy', 'Haruki Murakami', '9780375704024', 'Một câu chuyện tình yêu đầy cảm xúc.', 1987, 10, 1, 5),
('Chú bé rừng xanh', 'Rudyard Kipling', '9780141325293', 'Câu chuyện về cậu bé sống cùng bầy sói trong rừng.', 1894, 15, 1, 1),
('Bảy thói quen của người thành đạt', 'Stephen R. Covey', '9780743269513', 'Sách hướng dẫn thay đổi thói quen để thành công.', 1989, 20, 1, 11),
('Thần thoại Hy Lạp', 'Edith Hamilton', '9780316223331', 'Tuyển tập thần thoại Hy Lạp kinh điển.', 1942, 10, 1, 3),
('Người xa lạ', 'Albert Camus', '9780679720201', 'Tiểu thuyết triết học nổi tiếng.', 1942, 10, 1, 7),
('Muôn kiếp nhân sinh', 'Nguyên Phong', '9786043127592', 'Câu chuyện về luật nhân quả và tiền kiếp.', 2020, 18, 1, 11),
('Dế Mèn phiêu lưu ký', 'Tô Hoài', '9786049577544', 'Câu chuyện phiêu lưu của chú Dế Mèn.', 1941, 20, 1, 1),
('Vòng tròn đá cổ', 'Diana Gabaldon', '9780440212560', 'Câu chuyện tình yêu vượt thời gian.', 1991, 8, 1, 5),
('Kính vạn hoa', 'Nguyễn Nhật Ánh', '9786049536369', 'Câu chuyện về những kỷ niệm tuổi học trò đầy vui buồn của nhân vật Hoàng và nhóm bạn.', 2005, 15, 1, 1),
('Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', '9786049264524', 'Một câu chuyện về những ngày thơ ấu với tình bạn trong sáng và những tình cảm chân thành.', 2015, 20, 1, 1),
('Mắt biếc', 'Nguyễn Nhật Ánh', '9786049572527', 'Tình yêu tuổi học trò, những khát khao và nỗi đau chưa nguôi.', 1999, 10, 1, 5),
('Đi qua hoa cúc', 'Nguyễn Ngọc Tư', '9786049526390', 'Tác phẩm phản ánh đời sống nông thôn miền Tây Nam Bộ với những mối quan hệ phức tạp và những số phận éo le.', 2005, 8, 1, 7),
('Cánh đồng bất tận', 'Nguyễn Ngọc Tư', '9786049526130', 'Một tác phẩm đầy cảm động về cuộc sống của những người dân nghèo miền Tây.', 2004, 6, 1, 7),
('Mùa hè chiến tranh', 'Đoàn Giỏi', '9786049574729', 'Tác phẩm tái hiện lại không khí chiến tranh qua những câu chuyện của những người chiến sĩ trong cuộc kháng chiến chống Pháp.', 1971, 12, 1, 7),
('Những ngôi sao xa xôi', 'Lê Minh Khuê', '9786049530281', 'Tiểu thuyết nói về những khó khăn của những cô gái trong quân đội trong những năm tháng kháng chiến chống Mỹ.', 1972, 10, 1, 7),
('Rừng xà nu', 'Nguyễn Trung Thành', '9786049535828', 'Một tác phẩm phản ánh sự anh dũng của người dân Tây Nguyên trong kháng chiến chống Mỹ.', 1975, 9, 1, 7),
('Chiếc lược ngà', 'Nguyễn Quang Sáng', '9786049565628', 'Câu chuyện về tình cha con trong những năm chiến tranh, với sự hy sinh và tình yêu thương vô bờ.', 1969, 15, 1, 7),
('Bến quê', 'Nguyễn Minh Châu', '9786049577317', 'Một tác phẩm triết lý, sâu sắc về cuộc sống và con người với những sự kiện bình dị nhưng mang lại bài học lớn.', 1985, 10, 1, 7),
('Mùa xuân nho nhỏ', 'Thanh Hải', '9786049575200', 'Bài thơ nổi tiếng của Thanh Hải mang đậm màu sắc hy vọng, lạc quan về cuộc sống, với khát vọng cống hiến cho đất nước.', 1980, 20, 1, 5),
('Tây Tiến', 'Quang Dũng', '9786049575302', 'Bài thơ miêu tả hình ảnh người lính Tây Tiến trong cuộc kháng chiến chống Pháp, với vẻ đẹp hào hùng, bi tráng và lãng mạn.', 1948, 12, 1, 7);



INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
('Cô bé Lọ Lem', '-', '9781234567890', 'Câu chuyện về cô gái nghèo khó trở thành công chúa nhờ phép màu.', 1697, 10, 1, 15),

('Bạch Tuyết và bảy chú lùn', '-', '9781234567891', 'Câu chuyện về nàng công chúa bị mẹ kế độc ác hãm hại, nhưng được bảy chú lùn cứu sống.', 1812, 8, 1, 15),

('Công chúa ngủ trong rừng', '-', '9781234567892', 'Truyện cổ tích kể về công chúa bị nguyền rủa, chìm vào giấc ngủ dài cho đến khi được hoàng tử đánh thức.', 1697, 12, 1, 15),

('Hansel và Gretel', '-', '9781234567893', 'Hai anh em bị bỏ rơi trong rừng và gặp phải mụ phù thủy độc ác sống trong ngôi nhà kẹo.', 1812, 7, 1, 15),

('Nàng tiên cá', '-', '9781234567894', 'Câu chuyện về một nàng tiên cá hy sinh tất cả để trở thành con người, để được ở bên người mà mình yêu.', 1837, 5, 1, 15),

('Cái ống nhỏ', '-', '9781234567895', 'Câu chuyện về một chiếc ống nhỏ giúp cho nhân vật chính vượt qua những thử thách lớn trong cuộc sống.', 1850, 6, 1, 15),

('Aladdin và cây đèn thần', '-', '9781234567896', 'Aladdin là một cậu bé nghèo có được cây đèn thần giúp anh ta trở nên giàu có và cưới công chúa.', 1700, 10, 1, 15),

('Jack và cây đậu thần', '-', '9781234567897', 'Jack leo lên cây đậu thần và khám phá ra thế giới kỳ diệu trên cao, nơi có kho báu và quái vật.', 1800, 9, 1, 15),

('Shoe of Cinderella', '-', '9781234567898', 'Một phiên bản khác của câu chuyện Cô bé Lọ Lem với đôi giày phù thủy kỳ diệu.', 1700, 7, 1, 15),

('Rumpelstiltskin', '-', '9781234567899', 'Câu chuyện về một người lùn kỳ bí giúp một cô gái dệt vàng nhưng đòi hỏi một cái giá đắt.', 1812, 5, 1, 15),

('The Twelve Dancing Princesses', '-', '9781234567900', 'Câu chuyện về mười hai công chúa bị cha mình nghi ngờ, nhưng họ đã tìm thấy một thế giới kỳ diệu dưới lòng đất.', 1810, 8, 1, 15),

('The Fisherman and His Wife', '-', '9781234567901', 'Câu chuyện về một ngư dân và vợ của anh ta, những người không bao giờ cảm thấy hài lòng với những gì mình có.', 1835, 6, 1, 15),

('The Golden Goose', '-', '9781234567902', 'Câu chuyện về một chàng trai nghèo có chiếc ngỗng vàng và mang lại hạnh phúc cho những người xung quanh.', 1830, 7, 1, 15),

('The Ugly Duckling', '-', '9781234567903', 'Câu chuyện cảm động về một con vịt xấu xí, sau này biến thành một con thiên nga tuyệt đẹp.', 1843, 9, 1, 15),

('The Little Red Riding Hood', '-', '9781234567904', 'Câu chuyện về cô bé đi thăm bà và gặp phải con sói độc ác trong rừng.', 1697, 11, 1, 15),

('The Princess and the Pea', '-', '9781234567905', 'Câu chuyện về một công chúa phải trải qua thử thách để chứng tỏ thân phận thật sự của mình.', 1835, 6, 1, 15),

('The Emperor’s New Clothes', '-', '9781234567906', 'Câu chuyện về một hoàng đế bị lừa bởi hai thợ may, tin rằng ông đang mặc quần áo vô hình.', 1837, 8, 1, 15),

('The Brave Little Tailor', '-', '9781234567907', 'Một câu chuyện về một người thợ may nhỏ bé nhưng có sự dũng cảm và trí thông minh lớn lao.', 1800, 7, 1, 15),

('The Pied Piper of Hamelin', '-', '9781234567908', 'Câu chuyện về một người thổi sáo đưa các đứa trẻ đi mất sau khi thành phố không trả tiền cho anh ta.', 1850, 6, 1, 15),

('The Snow Queen', '-', '9781234567909', 'Câu chuyện về một cô gái dũng cảm và chuyến hành trình của cô để cứu bạn mình khỏi Nữ hoàng Băng giá.', 1844, 10, 1, 15),

('The Nightingale', '-', '9781234567910', 'Câu chuyện về một con chim hót đẹp và được hoàng đế yêu thích, nhưng lại bị lãng quên khi có một con chim máy.', 1844, 8, 1, 15),

('The Wolf and the Seven Little Goats', '-', '9781234567911', 'Câu chuyện về bầy dê nhỏ bị con sói lừa và cách chúng vượt qua thử thách.', 1812, 6, 1, 2);



INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Luật hộ tịch năm 2014 và nghị định số 123/2015/NĐ-CP hướng dẫn thi hành', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2016, 53, 1, 14),
(N'Hội nhập kinh tế quốc tế 30 năm nhìn lại', N'Vũ Văn Phúc, Phạm Minh Chính', '9781234567908', N'Sách về pháp luật', 2016, 27, 1, 14),
(N'Luật dược', N'Quốc Hội', '9781234567908', N'Sách về pháp luật', 2016, 85, 1, 14),
(N'Luật tổ chức Viện kiểm soát nhân dân', N'Quốc Hội', '9781234567908', N'Sách về pháp luật', 2016, 42, 1, 14),
(N'Luật đầu tư công năm 2014 và nghị định hướng dẫn thi hành', N'Quốc Hội', '9781234567908', N'Sách về pháp luật', 2016, 91, 1, 14),
(N'Chuyên khảo về tỉnh Vĩnh Long', N'Hội nghiên cứu Đông Dương', '9781234567908', N'Sách về pháp luật', 2016, 74, 1, 14),
(N'Bác Hồ với các kỳ Đại hội Đảng', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2016, 39, 1, 14),
(N'Luật hoạt động giám sát của Quốc hội và hội đồng nhân dân', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2016, 57, 1, 14),
(N'Luật quân nhân chuyên nghiệp, công nhân và viên chức Quốc phòng', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2016, 62, 1, 14),
(N'Luật tố tụng hành chính năm 2015 (Áp dụng 01-07-2016)', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2016, 48, 1, 14),
(N'Hoa cúc và gươm: Những mẫu hình văn hóa Nhật Bản', N'Ruth Benedict', '9781234567908', N'Sách về pháp luật', 2016, 36, 1, 14),
(N'Đến với đảo quốc sư tử', N'Khôi Vũ', '9781234567908', N'Sách về pháp luật', 2016, 59, 1, 14),
(N'Phong thủy trong 5 phút', N'Selena Summers', '9781234567908', N'Sách về pháp luật', 2016, 28, 1, 14),
(N'Quá trình hình thành đường biên giới đất liền Việt Nam-Campuchia', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2015, 63, 1, 14),
(N'Tính chính đáng của Đảng cầm quyền một số vấn đề lý luận và thực tiễn', N'Nguyễn Văn Quang', '9781234567908', N'Sách về pháp luật', 2015, 90, 1, 14),
(N'Một số vấn đề lý luận và thực tiễn qua 30 năm đổi mới', N'Nhị Lê', '9781234567908', N'Sách về pháp luật', 2015, 72, 1, 14),
(N'Luật an toàn thông tin mạng', N'NXB Quốc gia', '9781234567908', N'Sách về pháp luật', 2015, 47, 1, 14);


INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Hoàng Sa - Trường sa trong tâm thức người Việt', N'Lưu Văn Lợi, Kim Quang Minh', '9781234567901', N'Sách về Hoàng Sa và Trường Sa trong tâm thức người Việt.', 2016, 20, 1, 14),
(N'Biển, đảo chủ quyền thiêng liêng của Tổ Quốc Việt Nam', N'Nhiều tác giả', '9781234567902', N'Sách về chủ quyền biển đảo thiêng liêng của Việt Nam.', 2016, 15, 1, 14),
(N'Hướng về biển, đảo quê hương', N'Nhiều tác giả', '9781234567903', N'Sách về biển đảo quê hương Việt Nam.', 2016, 30, 1, 14),
(N'Những "Cột mốc sống" kiên cường trên biển', N'Nhiều tác giả', '9781234567904', N'Sách nói về những cột mốc sống trên biển.', 2016, 25, 1, 14),
(N'Tuổi trẻ lạc lối và những kiến thức của tôi', N'Hiền Trang', '9781234567905', N'Sách kể về tuổi trẻ và những bài học của tác giả.', 2016, 12, 1, 13),
(N'Biển Đông cuộc tìm kiếm đồng thuận nan giải', N'G.M.Lokshin', '9781234567906', N'Sách về các vấn đề đồng thuận trên Biển Đông.', 2016, 18, 1, 14),
(N'Công lý & hòa bình trên biển đông', N'Nguyễn Thái Hợp chủ biên', '9781234567907', N'Sách nói về công lý và hòa bình trên Biển Đông.', 2014, 22, 1, 14),
(N'Hoàng Sa - Trường Sa tư liệu và quan điểm của học giả quốc tế', N'Trần Đức Anh Sơn chủ biên', '9781234567908', N'Tư liệu và quan điểm của các học giả quốc tế về Hoàng Sa và Trường Sa.', 2014, 19, 1, 14),
(N'Hoàng sa trường sa trong thư tịch cổ', N'Đinh Kim Phúc', '9781234567909', N'Sách về Hoàng Sa, Trường Sa trong thư tịch cổ.', 2016, 16, 1, 14),
(N'Đặc khảo về hoàng sa trường sa', N'Ts.Nguyễn Nhã', '9781234567910', N'Khảo sát chi tiết về Hoàng Sa và Trường Sa.', 2016, 20, 1, 14),
(N'Nước Mỹ nhìn từ bên trong', N'Donald J.Trump ; Đỗ Trí Vương dịch', '9781234567911', N'Sách nhìn nhận về nước Mỹ từ bên trong.', 2016, 10, 1, 14),
(N'Bài tập học phần tư tưởng Hồ Chí Minh', N'Lại Quốc Khánh, Lê Thị Sự, Lê Quang Đăng', '9781234567912', N'Sách bài tập về tư tưởng Hồ Chí Minh.', 2016, 25, 1, 14),
(N'Đảo Bạch Long Vĩ kiên cường', N'Ths. Nguyễn Hằng Thanh', '9781234567913', N'Sách về Đảo Bạch Long Vĩ.', 2016, 30, 1, 14),
(N'Đảo Cồn Cỏ anh hùng', N'Ths. Nguyễn Hằng Thanh', '9781234567914', N'Sách về Đảo Cồn Cỏ.', 2016, 15, 1, 14),
(N'Địa danh và chủ quyền lãnh thổ Việt Nam', N'Kim Quang Minh, Trịnh Anh Cơ', '9781234567915', N'Sách về các địa danh và chủ quyền lãnh thổ Việt Nam.', 2016, 28, 1, 14),
(N'Vòng quanh thế giới - Nước Úc', N'Mary Colson; Phạm Anh Tuấn dịch', '9781234567916', N'Sách khám phá nước Úc.', 2016, 12, 1, 14),
(N'Vòng quanh thế giới - Nhật Bản', N'Catel Patrick ; Phạm Anh Tuấn dịch', '9781234567917', N'Sách khám phá Nhật Bản.', 2016, 14, 1, 14),
(N'Vòng quanh thế giới - Hoa Kỳ', N'Michael Hurley ; Phạm Anh Tuấn dịch', '9781234567918', N'Sách khám phá Hoa Kỳ.', 2016, 18, 1, 14);

INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Cẩm nang nghiệp vụ công đoàn quy chế quản lý, chi tiêu tài chính công đoàn và những quy định mới nhất về tiền lương, phụ cấp, phân phối nguồn thu ngân sách công đoàn 2012', N'NXB Trẻ', '9781234567921', N'Sách hướng dẫn các quy chế và quản lý tài chính công đoàn.', 2011, 10, 1, 14),
(N'Luật thanh tra và các văn bản hướng dẫn thi hành mới nhất', N'NXB Trẻ', '9781234567922', N'Sách giới thiệu về Luật thanh tra và các văn bản liên quan.', 2011, 15, 1, 14),
(N'Chiến lược và sách lược kinh doanh', N'Bùi Văn Đông', '9781234567923', N'Sách về chiến lược và sách lược trong kinh doanh.', 2011, 20, 1, 13),
(N'Luật hôn nhân và gia đình-Luật bảo vệ chăm sóc, giáo dục trẻ em và các văn bản hướng dẫn thi hành mới nhất', N'NXB Trẻ', '9781234567924', N'Sách về Luật hôn nhân, gia đình và bảo vệ trẻ em.', 2011, 10, 1, 14),
(N'Bộ luật hình sự và các văn bản hướng dẫn thi hành mới nhất', N'NXB Trẻ', '9781234567925', N'Sách về Bộ luật hình sự và các văn bản hướng dẫn thi hành.', 2011, 25, 1, 14),
(N'Bộ luật tố tụng dân sự', N'NXB Trẻ', '9781234567926', N'Sách về Bộ luật tố tụng dân sự.', 2011, 18, 1, 14),
(N'Bộ luật dân sự, bộ luật tố tụng dân sự', N'NXB Trẻ', '9781234567927', N'Sách về Bộ luật dân sự và tố tụng dân sự.', 2011, 22, 1, 14),
(N'Luật giáo dục và các văn bản hướng dẫn thi hành mới nhất', N'NXB Trẻ', '9781234567928', N'Sách về Luật giáo dục và các văn bản hướng dẫn thi hành.', 2011, 30, 1, 14),
(N'Hướng dẫn tổ chức trò chơi dân gian trong nhà trường', N'NXB Trẻ', '9781234567929', N'Sách hướng dẫn cách tổ chức trò chơi dân gian trong trường học.', 2011, 15, 1, 14),
(N'Almanac đàn ông', N'Phạm Minh Thảo', '9781234567930', N'Sách cung cấp thông tin về đàn ông qua các phương diện khác nhau.', 2011, 20, 1, 13),
(N'Lãng du khắp thế giới', N'Lý Khắc Cung', '9781234567931', N'Sách kể về những chuyến du lịch khắp thế giới.', 2011, 18, 1, 12),
(N'Rèn luyện trí nhớ và tự học để thành công', N'Bùi Đức Luận', '9781234567932', N'Sách hướng dẫn cách rèn luyện trí nhớ và tự học để đạt thành công.', 2011, 25, 1, 13),
(N'Văn hóa ẩm thực trong tục ngữ, ca dao VN', N'Nguyễn Nghĩa Dân', '9781234567933', N'Sách về văn hóa ẩm thực trong tục ngữ, ca dao Việt Nam.', 2011, 12, 1, 13),
(N'55 kỹ năng giúp con bạn thành công', N'Ron Clark', '9781234567934', N'Sách cung cấp 55 kỹ năng giúp trẻ em thành công trong cuộc sống.', 2011, 15, 1, 13),
(N'Thuật ăn nói thu hút lòng người', N'NXB Trẻ', '9781234567935', N'Sách về nghệ thuật ăn nói thu hút người khác.', 2011, 20, 1, 13),
(N'Rèn luyện kỹ năng sống - Kỹ năng giao tiếp', N'Lại Thế Luyện', '9781234567936', N'Sách hướng dẫn kỹ năng giao tiếp trong cuộc sống.', 2011, 18, 1, 13),
(N'Rèn luyện kỹ năng sống - Kỹ năng thuyết trình hiệu quả', N'Lại Thế Luyện', '9781234567937', N'Sách hướng dẫn kỹ năng thuyết trình hiệu quả.', 2011, 20, 1, 13),
(N'QĐ pháp luật về soạn thảo…văn bản hành chánh', N'NXB Trẻ', '9781234567938', N'Sách về quyết định pháp luật liên quan đến soạn thảo văn bản hành chính.', 2011, 12, 1, 14),
(N'Bộ luật tố tụng dân sự', N'NXB Trẻ', '9781234567939', N'Sách về Bộ luật tố tụng dân sự.', 2011, 15, 1, 14),
(N'Luật sử dụng năng lượng…năm 2010', N'NXB Trẻ', '9781234567940', N'Sách về Luật sử dụng năng lượng.', 2011, 20, 1, 14),
(N'Đảng ta là đạo đức là văn minh', N'NXB Trẻ', '9781234567941', N'Sách về Đảng và các giá trị đạo đức, văn minh.', 2011, 18, 1, 14),
(N'Xử lý tình huống công tác Đảng giai đoạn hiện nay', N'NXB Trẻ', '9781234567942', N'Sách về xử lý tình huống công tác Đảng trong hiện tại.', 2011, 20, 1, 14),
(N'Tình huống pháp luật…danh dự của con người', N'NXB Trẻ', '9781234567943', N'Sách về các tình huống pháp luật liên quan đến danh dự của con người.', 2011, 15, 1, 14),
(N'Tình huống pháp luật…giấy chứng nhận', N'NXB Trẻ', '9781234567944', N'Sách về tình huống pháp luật liên quan đến giấy chứng nhận.', 2011, 18, 1, 14),
(N'Tình huống pháp luật về hộ khẩu', N'NXB Trẻ', '9781234567945', N'Sách về tình huống pháp luật liên quan đến hộ khẩu.', 2011, 20, 1, 14),
(N'HĐ di sản về tư tưởng, đạo đức…HCM', N'NXB Trẻ', '9781234567946', N'Sách về di sản tư tưởng, đạo đức Hồ Chí Minh.', 2011, 22, 1, 14),
(N'Tìm hiểu luật viên chức', N'NXB Trẻ', '9781234567947', N'Sách về Luật viên chức.', 2011, 15, 1, 14),
(N'Bán hàng thông minh qua điện thoại & Internet', N'Josiane Chriqui Fegon', '9781234567948', N'Sách về bán hàng qua điện thoại và Internet.', 2011, 12, 1, 13),
(N'Ca dao VN về tình cảm gia đình', N'NXB Trẻ', '9781234567949', N'Sách về ca dao Việt Nam nói về tình cảm gia đình.', 2011, 20, 1, 13),
(N'Ca dao VN về phong cảnh đất nước con người', N'NXB Trẻ', '9781234567950', N'Sách về ca dao Việt Nam về phong cảnh và con người.', 2011, 22, 1, 13),
(N'Ca dao VN về lao động sản xuất', N'NXB Trẻ', '9781234567951', N'Sách về ca dao Việt Nam về lao động sản xuất.', 2011, 18, 1, 13),
(N'Ca dao VN về tình yêu đôi lứa', N'NXB Trẻ', '9781234567952', N'Sách về ca dao Việt Nam về tình yêu đôi lứa.', 2011, 15, 1, 13),
(N'Tiêu chuẩn & pp đặt tên cho con', N'NXB Trẻ', '9781234567953', N'Sách về tiêu chuẩn và phương pháp đặt tên cho con.', 2011, 20, 1, 13);


INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'HĐ về tình hình thế giới và chính sách đối ngoại của Đảng…', N'NXB Chính trị Quốc gia', '9781234567954', N'Sách về chính sách đối ngoại của Đảng và tình hình thế giới.', 2009, 10, 1, 14),
(N'Vấn đề NN-ND-NT. Kinh nghiệm VN, kinh nghiệm TQ', N'NXB Chính trị Quốc gia', '9781234567955', N'Sách về vấn đề nông nghiệp, nông dân, nông thôn, với kinh nghiệm Việt Nam và Trung Quốc.', 2009, 15, 1, 14),
(N'Nàng công chúa hoàn hảo', N'Vũ Khúc', '9781234567956', N'Tiểu thuyết về một nàng công chúa hoàn hảo với những tình huống thú vị.', 2009, 20, 1, 12),
(N'PP giảng dạy trò chơi trong trường phổ thông', N'Lưu Mai, Lâm Phú', '9781234567957', N'Sách hướng dẫn phương pháp giảng dạy trò chơi trong trường phổ thông.', 2009, 25, 1, 13),
(N'Luật sửa đổi, bổ sung…hình sự', N'NXB Pháp lý', '9781234567958', N'Sách về các sửa đổi, bổ sung trong Bộ luật hình sự.', 2009, 30, 1, 14),
(N'HĐ Luật Phòng chống bạo lực gia đình', N'Bùi Văn Thấm', '9781234567959', N'Sách về Luật phòng chống bạo lực gia đình.', 2009, 18, 1, 14),
(N'Binh đoàn quyết thắng…cụ Hồ', N'NXB Quân đội Nhân dân', '9781234567960', N'Sách về chiến thắng của binh đoàn trong cuộc chiến tranh với sự lãnh đạo của Chủ tịch Hồ Chí Minh.', 2009, 15, 1, 12),
(N'Những câu chuyện…tài tử', N'NXB Văn hóa Thông tin', '9781234567961', N'Sách kể về các câu chuyện về tài tử, nghệ sĩ nổi tiếng.', 2009, 20, 1, 12),
(N'Nhìn về thời đại Hùng Vương', N'Phan Duy Kha', '9781234567962', N'Sách nhìn lại thời kỳ Hùng Vương trong lịch sử Việt Nam.', 2009, 10, 1, 12),
(N'Chặng đường nóng bỏng', N'Hoàng Quốc Việt', '9781234567963', N'Sách kể về những chặng đường đầy thử thách trong lịch sử Việt Nam.', 2009, 18, 1, 12),
(N'Từ điển văn hóa VN T.1', N'NXB Văn hóa', '9781234567964', N'Từ điển văn hóa Việt Nam, tập 1.', 2009, 25, 1, 13),
(N'Từ điển văn hóa VN T.2', N'NXB Văn hóa', '9781234567965', N'Từ điển văn hóa Việt Nam, tập 2.', 2009, 25, 1, 13),
(N'Những kiến thức cơ bản về tài sản công', N'Trần Văn Giao', '9781234567966', N'Sách cung cấp các kiến thức cơ bản về tài sản công trong hệ thống nhà nước.', 2009, 15, 1, 14),
(N'Tục ngữ dân tộc…thiểu số VN', N'Nguyễn Nghĩa Dân', '9781234567967', N'Sách về các tục ngữ của các dân tộc thiểu số Việt Nam.', 2009, 20, 1, 13),
(N'Quản lý hợp tác xã', N'NXB Kinh tế', '9781234567968', N'Sách hướng dẫn quản lý các hợp tác xã ở Việt Nam.', 2009, 10, 1, 13),
(N'Ca dao về Hà Nội', N'NXB Hà Nội', '9781234567969', N'Sách về ca dao Hà Nội, miêu tả cảnh đẹp và con người nơi đây.', 2009, 18, 1, 13),
(N'HCM nhà văn hóa của tương lai', N'NXB Chính trị Quốc gia', '9781234567970', N'Sách về Hồ Chí Minh, nhà văn hóa của tương lai.', 2009, 15, 1, 13),
(N'Niềm vui dạy học', N'Filene Peter', '9781234567971', N'Sách về những niềm vui và thử thách trong công việc giảng dạy.', 2009, 20, 1, 13),
(N'Nhà giáo Thăng Long - Hà Nội', N'Nguyễn Hải', '9781234567972', N'Sách về những nhà giáo nổi tiếng của Hà Nội và Thăng Long.', 2009, 12, 1, 13),
(N'Mở cánh cửa cho trẻ…trong học tập', N'NXB Giáo dục', '9781234567973', N'Sách về cách mở cánh cửa tri thức cho trẻ em trong học tập.', 2009, 18, 1, 13),
(N'Hiến dâng cho cuộc sống', N'NXB Hà Nội', '9781234567974', N'Sách về những người hiến dâng cho cuộc sống, phục vụ cộng đồng.', 2009, 20, 1, 13),
(N'Trí tuệ và bản lĩnh văn học HCM', N'Bùi Đình Phong', '9781234567975', N'Sách về trí tuệ và bản lĩnh của Hồ Chí Minh trong văn học.', 2009, 15, 1, 13),
(N'Lời từ chối hoàn hảo', N'NXB Văn hóa', '9781234567976', N'Sách hướng dẫn cách từ chối một cách lịch sự và hoàn hảo.', 2009, 10, 1, 13),
(N'Con người, môi trường và văn hóa', N'Nguyễn Xuân Kính', '9781234567977', N'Sách về mối quan hệ giữa con người, môi trường và văn hóa.', 2009, 15, 1, 13),
(N'Xã hội học văn hóa', N'NXB Khoa học Xã hội', '9781234567978', N'Sách về xã hội học văn hóa, nghiên cứu các hiện tượng văn hóa trong xã hội.', 2009, 20, 1, 13);


 INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Lịch sử Tiền giấy Việt Nam: Những câu chuyện chưa kể', N'NXB Thế Giới', '9781234567981', N'Sách về lịch sử tiền giấy Việt Nam và những câu chuyện ít được biết đến.', 2016, 15, 1, 14),
(N'Sài Gòn Chợ Lớn qua những tư liệu quý trước 1945', N'Nguyễn Đức Hiệp', '9781234567982', N'Sách về lịch sử Sài Gòn Chợ Lớn qua các tư liệu quý trước 1945.', 2016, 12, 1, 12),
(N'Góc nhìn sử Việt: Trương Vĩnh Ký (1837-1898)', N'Khổng Xuân Thu', '9781234567983', N'Sách về cuộc đời và sự nghiệp của Trương Vĩnh Ký trong lịch sử Việt Nam.', 2016, 10, 1, 14),
(N'Thả Tù Binh Pháp giữa Sài Gòn 1950', N'Dương Linh', '9781234567984', N'Sách về những sự kiện xung quanh cuộc thả tù binh Pháp ở Sài Gòn vào năm 1950.', 2015, 20, 1, 14),
(N'Về phong trào đô thị Miền Nam', N'NXB Chính trị Quốc gia', '9781234567985', N'Sách nghiên cứu phong trào đô thị ở Miền Nam trong thời kỳ chiến tranh.', 2015, 18, 1, 14),
(N'Nhớ về mùa xuân đại thắng 1975', N'NXB Chính trị Quốc gia', '9781234567986', N'Sách hồi tưởng về chiến thắng mùa xuân 1975, kết thúc cuộc chiến tranh Việt Nam.', 2015, 22, 1, 12),
(N'Luân lý giáo khoa thư', N'Nhiều tác giả', '9781234567987', N'Sách về những bài học luân lý trong giáo khoa thư Việt Nam.', 2015, 15, 1, 13),
(N'Quân khu Nam Đồng', N'Bình Ca', '9781234567988', N'Sách về lịch sử quân khu Nam Đồng trong chiến tranh chống Pháp.', 2015, 10, 1, 14),
(N'Quốc văn giáo khoa thư', N'Nhiều tác giả', '9781234567989', N'Sách giáo khoa về quốc văn với các bài học truyền thống.', 2015, 12, 1, 13),
(N'Từ Điện Biên Phủ đến hiệp định Giơ ne vơ - nhìn từ khía cạnh quốc tế (Song ngữ Anh - Việt)', N'NXB Chính trị Quốc gia', '9781234567990', N'Sách phân tích từ Điện Biên Phủ đến Hiệp định Giơ-ne-vơ, nhìn từ góc độ quốc tế.', 2015, 15, 1, 14),
(N'70 năm thành lập nước CHXHCNVN - 70 Năm mùa thu cách mạng', N'Vũ Kim Yến (Biên soạn)', '9781234567991', N'Sách kỷ niệm 70 năm thành lập nước Việt Nam với mùa thu cách mạng.', 2015, 20, 1, 13),
(N'70 năm thành lập nước CHXHCNVN - Từ cách mạng tháng Tám 1945 đến chiến dịch Hồ Chí Minh 1975', N'Lường Lan (Biên soạn)', '9781234567992', N'Sách kỷ niệm 70 năm thành lập nước Việt Nam, từ cách mạng tháng Tám đến chiến dịch Hồ Chí Minh.', 2015, 18, 1, 13),
(N'70 năm thành lập nước CHXHCNVN - Con đường thiên lý từ bến Nhà Rồng đến Quảng Trường Ba Đình lịch sử', N'Lường Thị Lan (Biên soạn)', '9781234567993', N'Sách kể về con đường cách mạng của Việt Nam, từ bến Nhà Rồng đến Quảng Trường Ba Đình.', 2015, 20, 1, 13),
(N'Trên sông truyền hịch', N'NXB Văn hóa Thông tin', '9781234567994', N'Sách về các truyền thuyết và sự kiện lịch sử của Việt Nam.', 2011, 18, 1, 12),
(N'Tìm hiểu về một số chiếu chỉ các đời vua VN', N'Lê Thái Dũng', '9781234567995', N'Sách nghiên cứu các chiếu chỉ của các đời vua Việt Nam trong lịch sử.', 2011, 10, 1, 14),
(N'Việt Nam - Đất cũ người xưa', N'Đặng Việt Thủy', '9781234567996', N'Sách về những câu chuyện lịch sử và những hình ảnh về Việt Nam qua các thời kỳ.', 2011, 15, 1, 12),
(N'Nhân vật lịch sử Việt Nam', N'Trần Đình Ba', '9781234567997', N'Sách về các nhân vật lịch sử nổi bật trong lịch sử Việt Nam.', 2011, 20, 1, 14),
(N'Danh thắng Việt Nam', N'Trần Đình Ba', '9781234567998', N'Sách giới thiệu các danh thắng nổi tiếng của Việt Nam.', 2011, 15, 1, 13),
(N'Tổng tập dư địa chí Việt Nam 1 - Quốc chí', N'NXB Khoa học Xã hội', '9781234567999', N'Tổng hợp các tư liệu về dư địa chí Việt Nam, tập 1.', 2011, 18, 1, 14),
(N'Tổng tập dư địa chí Việt Nam 2 - Quốc chí', N'NXB Khoa học Xã hội', '9781234568000', N'Tổng hợp các tư liệu về dư địa chí Việt Nam, tập 2.', 2011, 20, 1, 14),
(N'Tổng tập dư địa chí Việt Nam 3 - Phương chí', N'NXB Khoa học Xã hội', '9781234568001', N'Tổng hợp các tư liệu về dư địa chí Việt Nam, tập 3.', 2011, 18, 1, 14),
(N'Tổng tập dư địa chí Việt Nam 4 - Phương chí', N'NXB Khoa học Xã hội', '9781234568002', N'Tổng hợp các tư liệu về dư địa chí Việt Nam, tập 4.', 2011, 15, 1, 14),
(N'Đại Việt sử ký tiền biên', N'NXB Văn hóa Thông tin', '9781234568003', N'Sách lịch sử về Đại Việt sử ký, phần tiền biên.', 2011, 10, 1, 14),
(N'Đại Việt sử ký tục biên (1676 - 1789)', N'NXB Văn hóa Thông tin', '9781234568004', N'Sách lịch sử về Đại Việt sử ký, phần tục biên (1676 - 1789).', 2011, 18, 1, 14),
(N'Lịch sử Việt Nam cổ trung đại', N'Huỳnh Công Bá', '9781234568005', N'Tài liệu về lịch sử Việt Nam trong giai đoạn cổ và trung đại.', 2011, 15, 1, 14),
(N'Lý Chiêu Hoàng - Một đời sóng gió', N'Lê Thái Dũng', '9781234568006', N'Sách về cuộc đời và sự nghiệp của Lý Chiêu Hoàng, vị nữ hoàng duy nhất trong lịch sử Việt Nam.', 2011, 12, 1, 14),
(N'Châu Á-100 điểm đến hấp dẫn', N'NXB Thế Giới', '9781234568007', N'Sách giới thiệu 100 điểm du lịch hấp dẫn ở Châu Á.', 2011, 25, 1, 13),
(N'Châu Âu-100 điểm đến hấp dẫn', N'NXB Thế Giới', '9781234568008', N'Sách giới thiệu 100 điểm du lịch hấp dẫn ở Châu Âu.', 2011, 20, 1, 13),
(N'Việt Nam-100 điểm đến hấp dẫn', N'NXB Thế Giới', '9781234568009', N'Sách giới thiệu 100 điểm du lịch hấp dẫn tại Việt Nam.', 2011, 30, 1, 13),
(N'Cẩm nang du lịch thế giới', N'NXB Thế Giới', '9781234568010', N'Giới thiệu các điểm đến nổi tiếng trên thế giới.', 2011, 20, 1, 13),
(N'Cẩm nang du lịch những bãi tắm đẹp trên dải đất hình chữ S', N'NXB Thế Giới', '9781234568011', N'Sách giới thiệu những bãi tắm đẹp trên đất nước Việt Nam.', 2011, 15, 1, 13),
(N'Trần Quốc Hương-Người chỉ huy tình báo', N'Nguyễn Thị Ngọc Hải', '9781234568012', N'Sách về Trần Quốc Hương, một chỉ huy tình báo nổi tiếng của Việt Nam.', 2011, 10, 1, 14),
(N'Phạm Xuân Ẩn-Tên người như cuộc đời', N'Nguyễn Thị Ngọc Hải', '9781234568013', N'Sách về Phạm Xuân Ẩn, một điệp viên nổi tiếng của Việt Nam.', 2011, 15, 1, 14),
(N'Tứ đại mỹ nhân-Điêu Thuyền', N'Diêm Sử', '9781234568014', N'Sách kể về Điêu Thuyền, một trong bốn đại mỹ nhân Trung Hoa.', 2011, 20, 1, 12),
(N'Tứ đại mỹ nhân-Dương Quý Phi', N'Diêm Sử', '9781234568015', N'Sách kể về Dương Quý Phi, một trong bốn đại mỹ nhân Trung Hoa.', 2011, 18, 1, 12),
(N'Tứ đại mỹ nhân-Dương Chiêu Quân', N'Diêm Sử', '9781234568016', N'Sách kể về Dương Chiêu Quân, một trong bốn đại mỹ nhân Trung Hoa.', 2011, 22, 1, 12),
(N'Có một con đường mòn trên biển', N'Nguyên Ngọc', '9781234568017', N'Sách về cuộc đời và hành trình của người chiến sĩ trong chiến tranh.', 2011, 20, 1, 12),
(N'Tứ đại mỹ nhân Trung Hoa-Tây Thi', N'Diêm Sử', '9781234568018', N'Sách kể về Tây Thi, một trong bốn đại mỹ nhân Trung Hoa.', 2011, 18, 1, 12),
(N'Cẩm nang du lịch thế giới', N'NXB Thế Giới', '9781234568019', N'Giới thiệu các điểm du lịch nổi tiếng trên thế giới.', 2011, 20, 1, 13),
(N'Việt Nam xưa', N'NXB Văn hóa Thông tin', '9781234568020', N'Sách về văn hóa, con người và phong cảnh Việt Nam xưa.', 2011, 15, 1, 12);
 
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Bí mật trong tay nải', N'Thé TJong Khing', '9781234567001', N'Câu chuyện phiêu lưu thú vị được ẩn chứa trong chiếc tay nải.', 2016, 10, 1, 8),

(N'Học cách học tập', N'Chu Nam Chiếu, Tôn Vân Hiểu chủ biên', '9781234567002', N'Hướng dẫn phương pháp học tập hiệu quả dành cho mọi lứa tuổi.', 2015, 20, 1, 11),

(N'Học cách làm người: Kĩ năng không thể thiếu dành cho học sinh thế kỉ 21', N'Chu Nam Chiếu, Tôn Vân Hiểu chủ biên', '9781234567003', N'Giới thiệu kỹ năng sống quan trọng cho học sinh hiện đại.', 2015, 15, 1, 11),

(N'Học cách ứng xử', N'Chu Nam Chiếu, Tôn Vân Hiểu chủ biên', '9781234567004', N'Một cuốn sách về kỹ năng giao tiếp và ứng xử hiệu quả trong cuộc sống.', 2015, 12, 1, 11),

(N'Học cách làm việc', N'Chu Nam Chiếu, Tôn Vân Hiểu chủ biên', '9781234567005', N'Những bài học quý giá về cách làm việc hiệu quả và hợp tác nhóm.', 2016, 18, 1, 11),

(N'Fidel Castro bình dị giữa đời thường', N'Trần Nhu', '9781234567006', N'Những góc nhìn gần gũi về Fidel Castro trong cuộc sống thường nhật.', 2016, 10, 1, 2),

(N'Tưởng nhớ bác Hồ vĩ đại', N'Hải Ngọc Thái Nhân Hòa', '9781234567007', N'Một tác phẩm tôn vinh cuộc đời và sự nghiệp của Hồ Chí Minh.', 2016, 12, 1, 7),

(N'Hạt giống tâm hồn 2: dành cho tuổi teen', N'First News tổng hợp, thực hiện', '9781234567008', N'Thúc đẩy ý chí và cảm hứng cho thanh thiếu niên.', 2015, 20, 1, 11),

(N'Hạt giống tâm hồn dành cho tuổi teen', N'First News tổng hợp, thực hiện', '9781234567009', N'Câu chuyện đầy cảm hứng dành cho thanh thiếu niên.', 2015, 20, 1, 11),

(N'Phép lịch sự hàng ngày', N'Halák László; Hồng Nhung người dịch', '9781234567010', N'Một hướng dẫn về cách cư xử lịch thiệp trong cuộc sống thường nhật.', 2015, 15, 1, 11);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Tặng mặt trăng một nụ hôn', N'Cam Vi lời', '9781234567011', N'Một tác phẩm văn học thơ mộng và đầy cảm xúc.', 2016, 12, 1, 5),

(N'Vượt qua trở ngại', N'Ryan Holiday; Lê Minh Quân người dịch', '9781234567012', N'Lời khuyên thực tế để vượt qua khó khăn và thử thách trong cuộc sống.', 2016, 15, 1, 11),

(N'Bàn về cái ác hay cái ác tiêu cực', N'Francois Jullien', '9781234567013', N'Khám phá bản chất và ý nghĩa của cái ác trong triết học.', 2013, 10, 1, 10),

(N'Mỗi ngày một bài học cảm ơn', N'Francois Jullien', '9781234567014', N'Những bài học nhỏ để nuôi dưỡng lòng biết ơn mỗi ngày.', 2013, 15, 1, 11),

(N'Mỗi ngày một chút tiến bộ', N'Francois Jullien', '9781234567015', N'Cuốn sách giúp bạn từng bước cải thiện bản thân mỗi ngày.', 2013, 20, 1, 11),

(N'Mỗi ngày một niềm hy vọng', N'Francois Jullien', '9781234567016', N'Trao niềm hy vọng qua những câu chuyện ý nghĩa.', 2013, 12, 1, 11),

(N'Mỗi ngày một niềm vui', N'Francois Jullien', '9781234567017', N'Mang lại niềm vui mỗi ngày qua những bài học sống đơn giản.', 2013, 12, 1, 11),

(N'Bàn về chữ "Thời"', N'Francois Jullien', '9781234567018', N'Bàn luận sâu sắc về ý nghĩa của chữ "Thời" trong triết học và cuộc sống.', 2013, 8, 1, 10),

(N'Bàn về chữ "Thế"', N'Francois Jullien', '9781234567019', N'Khám phá chữ "Thế" và những ảnh hưởng của nó trong triết học Trung Hoa.', 2013, 8, 1, 10),

(N'Bàn về triết sống', N'Francois Jullien', '9781234567020', N'Những suy ngẫm triết học để định hình cuộc sống ý nghĩa hơn.', 2013, 10, 1, 10);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Bàn về cái nhạt', N'Francois Jullien', '9781234567021', N'Phân tích cái nhạt trong cuộc sống và nghệ thuật theo triết học Trung Hoa.', 2013, 8, 1, 10),

(N'Bàn về xác lập cơ sở đạo đức', N'Francois Jullien', '9781234567022', N'Nghiên cứu các nguyên tắc nền tảng của đạo đức qua lăng kính triết học.', 2013, 10, 1, 10),

(N'Bàn về xác lập cơ sở cho đạo đức', N'Francois Jullien', '9781234567023', N'Khám phá nền tảng và sự hình thành của đạo đức.', 2013, 10, 1, 10),

(N'Bàn về tính hiệu quả', N'Francois Jullien', '9781234567024', N'Một cách tiếp cận mới mẻ về khái niệm tính hiệu quả trong cuộc sống.', 2013, 8, 1, 10),

(N'Bàn về chữ "Thời" những yếu tố của một triết lý sống', N'Francois Jullien', '9781234567025', N'Kết nối chữ "Thời" với những giá trị triết lý trong cuộc sống.', 2013, 8, 1, 10),

(N'Bàn về cái nhạt dựa vào tư tưởng và mỹ học Trung Hoa', N'Francois Jullien', '9781234567026', N'Một góc nhìn độc đáo về cái nhạt qua mỹ học Trung Hoa.', 2013, 8, 1, 10),

(N'Nói chuyện giới tính không khó', N'Võ Thị Minh Huệ', '9781234567027', N'Một cuốn sách hữu ích để hướng dẫn nói chuyện về giới tính với trẻ.', 2013, 12, 1, 11),

(N'Giải mã những biểu hiện cảm xúc trên khuôn mặt', N'Paul Ekman', '9781234567028', N'Tìm hiểu cách đọc và phân tích cảm xúc qua nét mặt.', 2012, 10, 1, 11),

(N'Trí tuệ của các bậc thánh hiền', N'Francois Jullien', '9781234567029', N'Những triết lý và bài học giá trị từ các bậc thánh hiền.', 2012, 15, 1, 10),

(N'Những câu chuyện về lòng vị tha', N'Nhiều tác giả', '9781234567030', N'Những câu chuyện truyền cảm hứng về lòng vị tha và sẻ chia.', 2012, 12, 1, 11);

INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Honey, I love you', N'Nhiều tác giả', '9781234567031', N'Một tuyển tập truyện ngắn ngọt ngào và ý nghĩa.', 2012, 10, 1, 13),

(N'Những câu chuyện về tính khiêm tốn nhường nhịn', N'Võ Ngọc Châu', '9781234567032', N'Câu chuyện khuyến khích tính khiêm tốn và sự nhường nhịn trong cuộc sống.', 2012, 15, 1, 11),

(N'Những câu chuyện về lòng biết ơn', N'Nhiều tác giả', '9781234567033', N'Khám phá giá trị của lòng biết ơn qua các câu chuyện ý nghĩa.', 2012, 12, 1, 11),

(N'Những câu chuyện về lòng can đảm', N'Bích Nga', '9781234567034', N'Trao cảm hứng can đảm qua những câu chuyện sâu sắc.', 2012, 15, 1, 11),

(N'Những câu chuyện về siêng năng kiên trì', N'Võ Ngọc Châu', '9781234567035', N'Những bài học cuộc sống từ sự siêng năng và kiên trì.', 2012, 12, 1, 11),

(N'Cảm ơn cuộc đời', N'Nhiều tác giả', '9781234567036', N'Một lời tri ân đến cuộc sống qua những câu chuyện giản dị.', 2012, 10, 1, 11),

(N'Nghệ thuật ứng xử với chồng và gia đình bên chồng', N'Đoàn Phú Vinh', '9781234567037', N'Hướng dẫn nghệ thuật giao tiếp trong gia đình.', 2012, 8, 1, 11),

(N'Tiên học lễ', N'Nhiều tác giả', '9781234567038', N'Cẩm nang về đạo đức và lễ nghi dành cho mọi lứa tuổi.', 2012, 12, 1, 14),

(N'30 điều học sinh tiểu học cần chú ý', N'Thùy Dung', '9781234567039', N'Những lưu ý thiết thực giúp học sinh tiểu học rèn luyện bản thân.', 2011, 10, 1, 6),

(N'Những câu chuyện về lòng thương người', N'Bích Nga', '9781234567040', N'Câu chuyện về lòng nhân ái và tình thương giữa con người.', 2011, 12, 1, 11);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Những câu chuyện về lòng trung thực', N'Nhiều tác giả', '9781234567041', N'Thúc đẩy lòng trung thực qua các câu chuyện ý nghĩa.', 2011, 10, 1, 11),

(N'Kỹ năng để đoán tính cách con người nhanh nhất', N'Nhiều tác giả', '9781234567042', N'Kỹ thuật phân tích tính cách qua hành vi và biểu hiện.', 2011, 8, 1, 11),

(N'Nhìn sắc nhận người', N'Nhiều tác giả', '9781234567043', N'Khám phá cách nhận diện tính cách qua ngoại hình.', 2011, 8, 1, 11),

(N'Quà tặng tình yêu', N'Nhiều tác giả', '9781234567044', N'Tuyển tập những câu chuyện lãng mạn về tình yêu.', 2011, 12, 1, 5),

(N'Trí tuệ Khổng Tử', N'Nhiều tác giả', '9781234567045', N'Tổng hợp triết lý và trí tuệ sâu sắc của Khổng Tử.', 2011, 10, 1, 10),

(N'Kinh dịch với cuộc sống con người', N'Nhiều tác giả', '9781234567046', N'Một cái nhìn về vai trò của Kinh Dịch trong đời sống.', 2011, 8, 1, 10),

(N'Thôi miên nhìn từ góc độ tâm lý học', N'Lý Ưng', '9781234567047', N'Một nghiên cứu về thôi miên từ góc nhìn tâm lý học.', 2011, 6, 1, 11),

(N'Kiếp sau: Nghiên cứu, khám phá về sự tồn tại sau cái chết', N'Raymond A. Moody Jr.', '9781234567048', N'Khám phá bí ẩn về sự tồn tại sau cái chết.', 2011, 8, 1, 10),

(N'Nói không với game online', N'Lê Khanh', '9781234567049', N'Lời khuyên để tránh xa tác hại của game online.', 2011, 12, 1, 11),

(N'Blog thành công của Teen', N'Vương Long', '9781234567050', N'Hướng dẫn kỹ năng viết blog thành công dành cho giới trẻ.', 2011, 10, 1, 11);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Viết cho con đang tuổi dậy thì', N'Võ Thị Minh Huệ', '9781234567051', N'Hướng dẫn cách giao tiếp và hỗ trợ con cái trong giai đoạn dậy thì.', 2011, 10, 1, 6),

(N'Nhìn là biết yêu đời', N'Dạ Quang', '9781234567052', N'Khám phá những cách đơn giản để yêu đời và sống tích cực.', 2011, 8, 1, 11),

(N'Chăm sóc cây tình yêu', N'Minh Hương', '9781234567053', N'Hướng dẫn cách chăm sóc cây cảnh như một hình thức thể hiện tình yêu với thiên nhiên.', 2011, 10, 1, 14),

(N'Lời vàng dành cho tuổi mới lớn', N'Kiến Văn, Anh Nguyễn', '9781234567054', N'Tuyển tập những lời khuyên quý báu dành cho tuổi mới lớn.', 2011, 12, 1, 6),

(N'Tổ ấm yêu thương', N'Minh Hương', '9781234567055', N'Sách về cách tạo dựng và duy trì một tổ ấm hạnh phúc và yêu thương.', 2011, 10, 1, 14),

(N'Bản đồ tâm hồn con người của Jung', N'Murray Stein', '9781234567056', N'Khám phá những lý thuyết về tâm lý học và bản đồ tâm hồn của Carl Jung.', 2011, 8, 1, 11),

(N'Tự do là gì?', N'Anissa Castel', '9781234567057', N'Cuốn sách phân tích khái niệm tự do trong bối cảnh xã hội và tâm lý.', 2011, 10, 1, 10),

(N'Giải mã giấc mơ', N'Nhiều tác giả', '9781234567058', N'Tìm hiểu ý nghĩa và những thông điệp tiềm ẩn trong giấc mơ.', 2011, 12, 1, 11),

(N'Tìm hiểu tính cách con người qua nét mặt', N'Nhiều tác giả', '9781234567059', N'Khám phá cách nhận diện tính cách qua nét mặt và biểu cảm.', 2011, 10, 1, 11),

(N'Nói không với stress', N'Thái Thanh Hoa', '9781234567060', N'Hướng dẫn cách đối phó và giải tỏa căng thẳng trong cuộc sống.', 2011, 12, 1, 11);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Thiền là gì? Cách vào thiền', N'Quảng Tuệ Bùi Biên Hòa', '9781234567061', N'Một hướng dẫn chi tiết về thiền và các phương pháp vào thiền hiệu quả.', 2011, 10, 1, 10),

(N'Bác Hồ những ngày đầu ở Bắc Bộ phủ', N'Nhiều tác giả', '9781234567062', N'Khám phá những ngày đầu của Bác Hồ tại Bắc Bộ phủ, nơi bắt đầu con đường cách mạng.', 2010, 12, 1, 14),

(N'Gặp Bác tại chiến khu Việt Bắc', N'Nhiều tác giả', '9781234567063', N'Ta cùng Bác Hồ trong những ngày gian khó tại chiến khu Việt Bắc.', 2010, 12, 1, 14),

(N'Cốt cách HCM', N'Trần Đương (Biên soạn)', '9781234567064', N'Tìm hiểu cốt cách và phẩm chất đạo đức của Chủ tịch Hồ Chí Minh.', 2010, 15, 1, 14),

(N'120 câu chuyện về chủ tịch HCM', N'Nhiều tác giả', '9781234567065', N'Tuyển tập 120 câu chuyện nổi bật về cuộc đời và sự nghiệp của Chủ tịch Hồ Chí Minh.', 2010, 20, 1, 14),

(N'Bác Hồ cầu hiền', N'Trần Dương (Biên soạn)', '9781234567066', N'Khám phá những câu chuyện về sự tìm kiếm người tài của Chủ tịch Hồ Chí Minh.', 2010, 15, 1, 14),

(N'Bác Hồ biểu tượng mẫu mực của tình yêu thương con người', N'Sơn Tùng', '9781234567067', N'Tìm hiểu những phẩm chất về tình yêu thương và nhân đạo của Bác Hồ.', 2010, 10, 1, 14),

(N'HCM từ đạo đức truyền thống đến đạo đức cách mạng', N'Nhiều tác giả', '9781234567068', N'Khám phá sự chuyển hóa trong tư tưởng và đạo đức của Hồ Chí Minh.', 2010, 12, 1, 14),

(N'120 câu chuyện về Chủ tịch HCM', N'Nhiều tác giả', '9781234567069', N'Một tập hợp những câu chuyện đặc sắc về Chủ tịch Hồ Chí Minh, biểu tượng của cách mạng.', 2010, 18, 1, 14),

(N'Bác Hồ biểu tượng mẫu mực của tình yêu thương con người', N'Sơn Tùng', '9781234567070', N'Sách nói về tình yêu thương vô bờ bến của Bác Hồ dành cho nhân dân.', 2010, 15, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Chuyện kể về Bác Hồ T.1', N'Nghệ An', '9781234567081', N'Một tập hợp các câu chuyện thú vị về cuộc đời và sự nghiệp của Bác Hồ.', 2008, 20, 1, 14),

(N'Chuyện kể về Bác Hồ T.2', N'Nghệ An', '9781234567082', N'Một phần tiếp theo của loạt sách kể về cuộc đời và tấm gương đạo đức của Bác Hồ.', 2008, 18, 1, 14),

(N'Chuyện kể về Bác Hồ T.3', N'Nghệ An', '9781234567083', N'Tiếp tục câu chuyện về Bác Hồ và những bài học quý báu từ cuộc đời của Người.', 2008, 20, 1, 14),

(N'Chuyện kể về Bác Hồ T.4', N'Nghệ An', '9781234567084', N'Phần cuối của loạt sách về cuộc đời và di sản Bác Hồ.', 2008, 15, 1, 14),

(N'Cuốn sách da dê…cổ huyền bí', N'Hà Nội', '9781234567085', N'Một cuốn sách về những câu chuyện huyền bí và đầy ấn tượng từ lịch sử.', 2008, 10, 1, 14),

(N'Phong thủy và y học…khoa học bảo vệ sức khỏe', N'Thanh Hóa', '9781234567086', N'Khám phá mối liên hệ giữa phong thủy và y học trong việc bảo vệ sức khỏe con người.', 2008, 12, 1, 14),

(N'Nghĩ đúng đoán liền', N'Mạnh Đức', '9781234567087', N'Hướng dẫn cách suy nghĩ và dự đoán các tình huống một cách chính xác.', 2008, 20, 1, 14),

(N'Bí ẩn quẻ dịch', N'Thanh Hóa', '9781234567088', N'Một cái nhìn mới về quẻ dịch và các bí ẩn huyền bí xung quanh nó.', 2008, 18, 1, 14),

(N'Chuyển vận ứng dụng…âm lịch', N'Hải Phòng', '9781234567089', N'Cuốn sách ứng dụng âm lịch trong việc dự đoán vận mệnh và thay đổi cuộc sống.', 2008, 15, 1, 14),

(N'Sức mạnh của lời cảm ơn', N'Norville Dedorah', '9781234567090', N'Khám phá sức mạnh vô hình nhưng mạnh mẽ của lời cảm ơn trong cuộc sống hàng ngày.', 2008, 12, 1, 14),

(N'Sống hay tồn tại', N'TP.HCM', '9781234567091', N'Sách thảo luận về sự khác biệt giữa sống thực sự và chỉ tồn tại qua ngày.', 2008, 15, 1, 14),

(N'Những bài học từ lịch sử T.1', N'Hà Nội', '9781234567092', N'Một tập hợp những bài học quý giá từ các sự kiện lịch sử quan trọng.', 2008, 18, 1, 14),

(N'Những bài học từ lịch sử T.2', N'Hà Nội', '9781234567093', N'Tiếp nối phần 1, cuốn sách này tiếp tục khám phá những bài học quý giá từ lịch sử.', 2008, 20, 1, 14),

(N'Trí tuệ Trang Tử', N'Đỗ Anh Thơ', '9781234567094', N'Khám phá triết lý sống và trí tuệ của Trang Tử qua các câu chuyện cổ xưa.', 2008, 12, 1, 14),

(N'5 bí quyết cần khám phá trước khi chết', N'Hà Nội', '9781234567095', N'Một cuốn sách giúp bạn nhận ra những điều quan trọng trước khi kết thúc cuộc sống.', 2008, 10, 1, 14),

(N'Biết nói năng, biết làm việc, biết làm người', N'Hà Nội', '9781234567096', N'Khám phá các kỹ năng giao tiếp và làm việc cần thiết để trở thành một con người thành công.', 2008, 15, 1, 14),

(N'7 bí quyết thành công dành cho nam giới', N'Hà Nội', '9781234567097', N'Một cuốn sách cung cấp các bí quyết giúp nam giới đạt được thành công trong sự nghiệp và cuộc sống.', 2008, 10, 1, 14),

(N'Sống thử những bài học đắc giá', N'Trịnh Trung Hòa', '9781234567098', N'Tiếp cận những bài học sâu sắc và giá trị từ những thử thách trong cuộc sống.', 2008, 12, 1, 14),

(N'Để làm người phụ nữ hấp dẫn nhất', N'Hà Nội', '9781234567099', N'Khám phá những bí quyết để trở thành người phụ nữ hấp dẫn trong mọi hoàn cảnh.', 2008, 15, 1, 14),

(N'Thủ thỉ với người chưa…tâm lý', N'Lý Thị Mai', '9781234567100', N'Cuốn sách về cách giao tiếp và chia sẻ tâm sự với những người chưa hiểu về tâm lý.', 2008, 10, 1, 14),

(N'Học cách bỏ đi để biết cách lấy lại', N'Hà Nội', '9781234567101', N'Khám phá bí quyết thành công bằng cách học cách từ bỏ những điều không cần thiết trong cuộc sống.', 2008, 12, 1, 14),

(N'100 câu chuyện triết lý từ cuộc sống', N'Hà Nội', '9781234567102', N'Những câu chuyện triết lý đầy ý nghĩa từ cuộc sống thực tế, giúp bạn tìm ra bài học cho bản thân.', 2008, 18, 1, 14),

(N'Tôi có thể nói thẳng với anh', N'Phạm Cao Tùng', '9781234567103', N'Cuốn sách giúp bạn cải thiện kỹ năng giao tiếp và cách diễn đạt một cách thẳng thắn và hiệu quả.', 2008, 15, 1, 14),

(N'Đắc nhân tâm bí quyết để thành công', N'Carnegie Dale', '9781234567104', N'Khám phá bí quyết xây dựng mối quan hệ và thành công trong công việc qua cuốn sách nổi tiếng này.', 2008, 12, 1, 14),

(N'Mưu cao kế lạ của người xưa', N'Đức Thành', '9781234567105', N'Một cuốn sách về những mưu kế trong lịch sử và cách áp dụng chúng vào cuộc sống hiện đại.', 2008, 10, 1, 14),

(N'Trí tuệ xử thế', N'Christian', '9781234567106', N'Cuốn sách phân tích các tri thức về ứng xử và giải quyết tình huống trong cuộc sống.', 2008, 12, 1, 14),

(N'EQ-Chỉ số tình cảm T.1', N'Hà Nội', '9781234567107', N'Một cái nhìn đầu tiên về trí tuệ cảm xúc và cách phát triển nó trong cuộc sống.', 2008, 15, 1, 14),

(N'EQ-Chỉ số tình cảm T.2', N'Hà Nội', '9781234567108', N'Phần tiếp theo của cuốn sách về trí tuệ cảm xúc, cung cấp thêm các kỹ năng để phát triển EQ.', 2008, 18, 1, 14),

(N'EQ-Chỉ số tình cảm T.3', N'Hà Nội', '9781234567109', N'Một tập trung vào những phương pháp nâng cao EQ để đạt được thành công trong công việc và cuộc sống.', 2008, 20, 1, 14),

(N'Học tập hiểu biết từ người phụ nữ', N'Hà Nội', '9781234567110', N'Cuốn sách chia sẻ những bài học quý báu từ phụ nữ thông minh và thành công.', 2008, 12, 1, 14),

(N'Đứa con cô đơn giữa trần gian', N'Hà Nội', '9781234567111', N'Một tác phẩm về cảm xúc và tâm trạng của những người trẻ trong cuộc sống hiện đại.', 2008, 10, 1, 14),

(N'Đôi vai con người thật thần kỳ', N'Hà Nội', '9781234567112', N'Tìm hiểu về những câu chuyện kỳ diệu về con người và khả năng chịu đựng vượt qua thử thách.', 2008, 15, 1, 14),

(N'Lý tưởng và lẽ sống', N'Nguyễn Huy Dung', '9781234567113', N'Một cuốn sách về lý tưởng sống và cách xây dựng cuộc sống ý nghĩa.', 2008, 12, 1, 14),

(N'Làm chủ cảm xúc', N'TP.HCM', '9781234567114', N'Khám phá cách làm chủ cảm xúc để đạt được sự bình an và thành công trong cuộc sống.', 2007, 10, 1, 14),

(N'Đời người bắt đầu từ tuổi năm mươi', N'Barbarin, Georges', '9781234567115', N'Cuốn sách nói về những điều quan trọng cần làm khi bước vào độ tuổi trung niên.', 2007, 18, 1, 14),

(N'Để luôn đạt điểm 10', N'Green JR, Gardon W.', '9781234567116', N'Hướng dẫn cách học và thi để luôn đạt kết quả xuất sắc trong mọi kỳ thi.', 2007, 20, 1, 14),

(N'Lời yêu chưa dám ngỏ', N'Thanh Hóa', '9781234567117', N'Một câu chuyện về tình yêu và những cảm xúc chưa thể thổ lộ.', 2007, 12, 1, 14),

(N'Đời người bắt đầu từ tuổi năm mươi', N'Barbarin, Georges', '9781234567118', N'Tiếp nối phần trước, cuốn sách này sẽ giúp bạn tìm lại mục tiêu sống ở độ tuổi trung niên.', 2007, 15, 1, 14),

(N'Để luôn đạt điểm 10', N'Green Jr.,Gardon W.', '9781234567119', N'Những chiến lược học tập để luôn đạt điểm 10 trong mọi kỳ thi.', 2007, 18, 1, 14),

(N'Lý tưởng và lẽ sống', N'Nguyễn Huy Dung', '9781234567120', N'Khám phá lý tưởng sống của những người thành công và cách áp dụng vào cuộc sống của chính bạn.', 2007, 12, 1, 14),

(N'Trí tuệ của những người nổi tiếng', N'Hà Nội', '9781234567121', N'Một cuốn sách về trí tuệ và các bí quyết thành công của những người nổi tiếng.', 2007, 15, 1, 14),

(N'Lịch sử tư tưởng VN', N'Huỳnh Công Bá', '9781234567122', N'Cuốn sách về sự phát triển tư tưởng và tri thức trong lịch sử Việt Nam.', 2007, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Gửi trọn niềm tin', N'Hà Nội', '9781234567123', N'Một cuốn sách nói về niềm tin và cách để gửi trọn niềm tin vào người khác.', 2007, 20, 1, 14),

(N'Tự tin với bản thân', N'Quỳnh Mai', '9781234567124', N'Khám phá cách thức để xây dựng sự tự tin và thành công trong cuộc sống.', 2007, 18, 1, 14),

(N'Sức mạnh của phái yếu', N'Quỳnh Mai', '9781234567125', N'Một cuốn sách về sức mạnh tiềm ẩn của phụ nữ và cách khai thác nó.', 2007, 20, 1, 14),

(N'Chúng ta là ai?', N'Đoàn Xuân Mượn', '9781234567126', N'Cuốn sách này giúp bạn khám phá bản thân và tìm câu trả lời cho câu hỏi lớn "Chúng ta là ai?".', 2007, 15, 1, 14),

(N'114 câu chuyện…cả cuộc đời', N'Hà Nội', '9781234567127', N'Một tập hợp các câu chuyện đầy cảm hứng từ cuộc sống.', 2007, 18, 1, 14),

(N'3 điều kỳ diệu…ý nghĩa', N'Hà Nội', '9781234567128', N'Khám phá ba điều kỳ diệu trong cuộc sống và ý nghĩa sâu sắc của chúng.', 2007, 12, 1, 14),

(N'Đạo gặp dữ hóa lành', N'Hà Nội', '9781234567129', N'Một cuốn sách nói về triết lý sống và cách đối diện với thử thách trong cuộc sống.', 2007, 20, 1, 14),

(N'Đời người bắt đầu từ tuổi năm mươi', N'Barbarin, Georges', '9781234567130', N'Cuốn sách khám phá sự thay đổi trong cuộc sống khi bước vào độ tuổi trung niên.', 2007, 18, 1, 14),

(N'Để luôn đạt điểm 10', N'Green Jr.,Gardon W.', '9781234567131', N'Những chiến lược học tập để luôn đạt điểm cao trong kỳ thi.', 2007, 20, 1, 14),

(N'Lý tưởng và lẽ sống', N'Nguyễn Huy Dung', '9781234567132', N'Một cuốn sách về lý tưởng sống và cách ứng dụng những giá trị này vào cuộc sống.', 2007, 12, 1, 14),

(N'Hãy yêu mình hơn', N'Hà Nội', '9781234567133', N'Khám phá cách yêu thương bản thân và cải thiện cuộc sống của bạn.', 2007, 15, 1, 14),

(N'Biến ước mơ thành hiện thực', N'Oslie Pamala', '9781234567134', N'Cuốn sách này chia sẻ những bí quyết để biến ước mơ thành hiện thực.', 2007, 18, 1, 14),

(N'Phát huy thế mạnh đàn ông', N'Phương Quỳnh', '9781234567135', N'Một cuốn sách giúp đàn ông phát huy tiềm năng và thế mạnh trong cuộc sống.', 2007, 20, 1, 14),

(N'Mái tóc thề của mẹ', N'Thượng Hồng', '9781234567136', N'Một câu chuyện xúc động về tình mẫu tử và những hy sinh của mẹ.', 2007, 12, 1, 14),

(N'Nhân cách tìm ở đâu?', N'Thượng Hồng', '9781234567137', N'Tìm hiểu về sự phát triển nhân cách và cách thức rèn luyện nhân cách trong cuộc sống.', 2007, 15, 1, 14),

(N'Tình yêu trong trái tim nữ giới', N'Hà Nội', '9781234567138', N'Một cuốn sách khám phá tình yêu và cảm xúc của phụ nữ trong các mối quan hệ.', 2007, 18, 1, 14),

(N'Gửi trọn niềm tin', N'Hà Nội', '9781234567139', N'Cuốn sách về niềm tin và sức mạnh của niềm tin trong việc xây dựng các mối quan hệ.', 2007, 20, 1, 14),

(N'500 câu hỏi IQ giúp phát triển tư duy của bạn', N'Hà Nội', '9781234567140', N'Một bộ bài tập giúp phát triển trí tuệ và khả năng tư duy logic của bạn.', 2007, 15, 1, 14),

(N'110 lời khuyên hữu dụng…cuộc sống T.1', N'Hoàng Kim', '9781234567141', N'Phần 1 của bộ sách cung cấp những lời khuyên thiết thực trong cuộc sống.', 2007, 18, 1, 14),

(N'111 lời khuyên hữu dụng…cuộc sống T.2', N'Hoàng Kim', '9781234567142', N'Phần 2 tiếp tục chia sẻ những lời khuyên quý báu trong cuộc sống.', 2007, 20, 1, 14),

(N'120 lời khuyên làm thay đổi cuộc sống T.1', N'Hoàng Kim', '9781234567143', N'Phần 1 cung cấp những lời khuyên để thay đổi cuộc sống theo hướng tích cực.', 2007, 12, 1, 14),

(N'121 lời khuyên làm thay đổi cuộc sống T.2', N'Hoàng Kim', '9781234567144', N'Phần 2 chia sẻ thêm những chiến lược để thay đổi cuộc sống và đạt được thành công.', 2007, 15, 1, 14),

(N'Khoan dung là một cách giáo dục', N'Hà Nội', '9781234567145', N'Một cuốn sách giúp bạn hiểu giá trị của khoan dung trong giáo dục và cuộc sống.', 2007, 18, 1, 14),

(N'Những kinh nghiệm…hiệu quả', N'Hà Nội', '9781234567146', N'Chia sẻ những kinh nghiệm thực tế giúp bạn đạt được hiệu quả trong công việc và cuộc sống.', 2007, 20, 1, 14),

(N'Rèn luyện…định luật cuộc sống T.1', N'Hà Nội', '9781234567147', N'Phần 1 của bộ sách giúp bạn rèn luyện những kỹ năng quan trọng để sống thành công.', 2007, 15, 1, 14),

(N'Bản lĩnh ứng phó…tính cách', N'Hà Nội', '9781234567148', N'Một cuốn sách về cách ứng phó với các tình huống và phát triển tính cách mạnh mẽ.', 2007, 12, 1, 14),

(N'8 bước để xây dựng lại sự nghiệp', N'Hà Nội', '9781234567149', N'Một hướng dẫn chi tiết về 8 bước giúp bạn xây dựng lại sự nghiệp.', 2007, 18, 1, 14),

(N'12 thuật xử thế trong cuộc sống', N'Hà Nội', '9781234567150', N'Khám phá 12 chiến lược xử thế giúp bạn thành công trong mọi tình huống.', 2007, 20, 1, 14),

(N'Câu chuyện nhỏ…câu nói của mẹ', N'Hà Nội', '9781234567151', N'Những câu chuyện ý nghĩa và lời dạy của mẹ trong cuộc sống.', 2007, 12, 1, 14),

(N'Câu chuyện nhỏ…lời dặn của cha', N'Hà Nội', '9781234567152', N'Cuốn sách này kể những câu chuyện về lời dặn dò của cha và những bài học cuộc sống.', 2007, 18, 1, 14),

(N'Câu chuyện về dự lựa chọn mỗi ngày', N'Hà Nội', '9781234567153', N'Một câu chuyện về sự lựa chọn trong cuộc sống và cách đưa ra quyết định đúng đắn.', 2007, 15, 1, 14),

(N'143 điều cần quan tâm trong cuộc sống T.1', N'Hà Nội', '9781234567154', N'Phần 1 của bộ sách chia sẻ 143 điều quan trọng bạn cần quan tâm để sống hạnh phúc.', 2007, 18, 1, 14),

(N'143 điều cần quan tâm trong cuộc sống T.2', N'Hà Nội', '9781234567155', N'Phần 2 tiếp tục cung cấp những điều cần lưu ý trong cuộc sống để có một cuộc sống ý nghĩa.', 2007, 20, 1, 14),

(N'9 phương pháp làm nên sự nghiệp T.1', N'Hà Nội', '9781234567156', N'Phần 1 của bộ sách giới thiệu 9 phương pháp giúp bạn xây dựng sự nghiệp vững chắc.', 2007, 15, 1, 14),

(N'9 phương pháp làm nên sự nghiệp T.2', N'Hà Nội', '9781234567157', N'Phần 2 tiếp tục các phương pháp giúp bạn phát triển sự nghiệp thành công.', 2007, 12, 1, 14),

(N'Đề phòng và ứng phó với tiểu nhân', N'Hà Nội', '9781234567158', N'Một cuốn sách chia sẻ cách thức nhận diện và đối phó với những tiểu nhân trong cuộc sống.', 2007, 18, 1, 14),

(N'7 sự kiện….trong cuộc sống', N'Hà Nội', '9781234567159', N'Một cuốn sách mô tả 7 sự kiện quan trọng trong cuộc sống mà bạn cần biết.', 2007, 20, 1, 14),

(N'100 thói quen tốt', N'Hà Nội', '9781234567160', N'Cuốn sách này chia sẻ 100 thói quen tốt giúp bạn thay đổi cuộc sống và đạt được thành công.', 2007, 15, 1, 14),

(N'Nói bằng trái tim T.1', N'Hà Nội', '9781234567161', N'Phần 1 của bộ sách giúp bạn nói chuyện và giao tiếp từ trái tim, với sự chân thành và cảm xúc.', 2007, 20, 1, 14),

(N'Nói bằng trái tim T.2', N'Hà Nội', '9781234567162', N'Phần 2 tiếp tục cung cấp các phương pháp giao tiếp từ trái tim trong mọi tình huống.', 2007, 15, 1, 14),

(N'Nói bằng trái tim T.3', N'Hà Nội', '9781234567163', N'Phần 3 của bộ sách hoàn thiện kỹ năng giao tiếp từ trái tim để kết nối với mọi người.', 2007, 18, 1, 14),

(N'108 câu danh ngôn…cuộc sống', N'Hà Nội', '9781234567164', N'Cuốn sách này chia sẻ 108 câu danh ngôn quý báu về cuộc sống, giúp bạn rút ra bài học từ những lời nói hay.', 2007, 12, 1, 14),

(N'10 nghịch lý cuộc sống', N'Any Way', '9781234567165', N'Một cuốn sách về những nghịch lý trong cuộc sống, giúp bạn hiểu rõ hơn về bản chất của các vấn đề.', 2007, 18, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'ĐBP ký ức và nhân chứng', N'Huế', '9781234567166', N'Cuốn sách về ký ức và nhân chứng liên quan đến chiến dịch Điện Biên Phủ.', 2004, 20, 1, 14),

(N'NHững ngày ĐBP', N'Nguyễn Trí Việt', '9781234567167', N'Một cuốn sách kể về những ngày tháng quan trọng trong chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14),

(N'Bước chân thám hiểm', N'Plat Richard', '9781234567168', N'Cuốn sách ghi lại những chuyến thám hiểm và khám phá vĩ đại của con người.', 2004, 20, 1, 14),

(N'HN….văn hiến', N'Hà Nội', '9781234567169', N'Khám phá vẻ đẹp và văn hiến của thủ đô Hà Nội qua các thời kỳ lịch sử.', 2004, 15, 1, 14),

(N'Phong tục sử', N'Hà Nội', '9781234567170', N'Một cuốn sách về các phong tục, lễ nghi và tập quán trong lịch sử Việt Nam.', 2004, 20, 1, 14),

(N'Lịch sử vương quốc Campuchia', N'Lương Ninh', '9781234567171', N'Tìm hiểu về lịch sử và sự phát triển của vương quốc Campuchia.', 2004, 18, 1, 14),

(N'Đại Nam quốc sử…VN', N'Lê Ngô Cát', '9781234567172', N'Cuốn sách ghi lại lịch sử Việt Nam từ thời đại Đại Nam.', 2004, 20, 1, 14),

(N'Các vị anh hùng', N'Hà Nội', '9781234567173', N'Khám phá về các anh hùng trong lịch sử Việt Nam và sự hy sinh của họ.', 2004, 15, 1, 14),

(N'VN kho tàng dã sử', N'Hà Nội', '9781234567174', N'Một cuốn sách về kho tàng sử liệu và những câu chuyện dân gian trong lịch sử Việt Nam.', 2004, 18, 1, 14),

(N'Bảo Đại vua cuối cùng triều Nguyễn', N'Phan Thứ Lang', '9781234567175', N'Cuốn sách về cuộc đời và sự nghiệp của vua Bảo Đại, vị vua cuối cùng của triều Nguyễn.', 2004, 20, 1, 14),

(N'Trường Sơn…huyền thoại 2', N'Nguyễn Việt Chương', '9781234567176', N'Phần 2 của cuốn sách kể về lịch sử và những câu chuyện huyền thoại về dãy Trường Sơn.', 2004, 18, 1, 14),

(N'Bí ẩn về lịch sử nhân loại', N'Quách Vĩ Kiện', '9781234567177', N'Khám phá những bí ẩn lịch sử lớn trong quá trình phát triển của nhân loại.', 2004, 20, 1, 14),

(N'Bí ẩn về khảo cổ', N'Nguyễn Duy Chiếm', '9781234567178', N'Một cuốn sách khám phá những bí ẩn chưa được giải đáp trong lĩnh vực khảo cổ học.', 2004, 18, 1, 14),

(N'HN Huế SG tháng 8-1945', N'Minh Tranh', '9781234567179', N'Một cuốn sách về những sự kiện lịch sử quan trọng diễn ra ở Hà Nội, Huế và Sài Gòn trong tháng 8 năm 1945.', 2004, 15, 1, 14),

(N'HN thủ đô…CN VN', N'Trần Quốc Vượng', '9781234567180', N'Khám phá sự phát triển và vai trò của Hà Nội trong lịch sử cách mạng Việt Nam.', 2004, 20, 1, 14),

(N'GD cách mạng…lịch sử', N'Nguyễn Tấn Phát', '9781234567181', N'Một cuốn sách về giáo dục cách mạng và lịch sử cách mạng Việt Nam.', 2004, 18, 1, 14),

(N'HN mở đầu kháng chiến…ý nghĩa', N'Hà Nội', '9781234567182', N'Cuốn sách này bàn về ý nghĩa của việc mở đầu kháng chiến trong lịch sử Việt Nam.', 2004, 15, 1, 14),

(N'Văn minh đời Hồng Đức…đời Nguyễn', N'Lê Văn Siêu', '9781234567183', N'Khám phá văn minh Việt Nam từ đời Hồng Đức đến thời kỳ nhà Nguyễn.', 2004, 20, 1, 14),

(N'HN nghìn xưa', N'Trần Quốc Vượng', '9781234567184', N'Một cuốn sách về lịch sử lâu dài và những dấu ấn của Hà Nội qua các thế kỷ.', 2004, 18, 1, 14),

(N'Danh nhân HN', N'Hà Nội', '9781234567185', N'Khám phá các danh nhân và những nhân vật nổi bật trong lịch sử Hà Nội.', 2004, 20, 1, 14),

(N'VN văn minh sử cương T.1', N'Lê Văn Siêu', '9781234567186', N'Phần 1 của bộ sách khám phá lịch sử văn minh Việt Nam từ những thời kỳ đầu.', 2004, 12, 1, 14),

(N'250 đình chùa nổi tiếng VN', N'Ngô Thị Kim Doan', '9781234567187', N'Một cuốn sách giới thiệu về 250 đình chùa nổi tiếng và quan trọng của Việt Nam.', 2004, 18, 1, 14),

(N'SG năm xưa', N'Vương Hồng Sển', '9781234567188', N'Một cuốn sách về Sài Gòn trong quá khứ, qua những kỷ niệm và những thay đổi theo thời gian.', 2004, 20, 1, 14),

(N'Điện Biên Phủ tuổi trẻ lập công', N'Hà Nội', '9781234567189', N'Một cuốn sách kể về những đóng góp của tuổi trẻ trong chiến dịch Điện Biên Phủ.', 2004, 15, 1, 14),

(N'Đại đoàn 308 với chiến dịch ĐBP', N'Phạm Chí Nhân', '9781234567190', N'Cuốn sách này nói về vai trò của Đại đoàn 308 trong chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14),

(N'ĐBP những trận đánh...', N'Trịnh Ngọc Nghi', '9781234567191', N'Chi tiết về các trận đánh quan trọng trong chiến dịch Điện Biên Phủ.', 2004, 20, 1, 14),

(N'Đại tướng Hoàng Văn Thái…ĐBP', N'Hà Nội', '9781234567192', N'Khám phá sự nghiệp và đóng góp của Đại tướng Hoàng Văn Thái trong chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14),

(N'Điện Biên Phủ', N'Võ Nguyên Giáp', '9781234567193', N'Một cuốn sách của Đại tướng Võ Nguyên Giáp về chiến dịch Điện Biên Phủ.', 2004, 20, 1, 14),

(N'ĐBP đỉnh cao…VN', N'Hà Nội', '9781234567194', N'Khám phá đỉnh cao của chiến dịch Điện Biên Phủ và ý nghĩa lịch sử của chiến thắng này.', 2004, 15, 1, 14),

(N'Thắng Pháp trên bầu trời ĐBP', N'Lưu Trọng Lân', '9781234567195', N'Cuốn sách mô tả những chiến thắng của quân đội Việt Nam trên bầu trời Điện Biên Phủ.', 2004, 18, 1, 14),

(N'Tướng Hăng-ri-na-va với trận...', N'Lê Kim', '9781234567196', N'Một cuốn sách về chiến thuật và vai trò của Tướng Hăng-ri-na-va trong chiến dịch Điện Biên Phủ.', 2004, 20, 1, 14),

(N'Lịch sử khẩn hoang miền Nam', N'Sơn Nam', '9781234567197', N'Cuốn sách kể về lịch sử khai hoang miền Nam Việt Nam và sự hình thành các cộng đồng dân cư.', 2004, 15, 1, 14),

(N'Những kỳ quan của các nền văn minh', N'Trần Thuật Bành', '9781234567198', N'Khám phá những kỳ quan và di sản của các nền văn minh nổi tiếng trong lịch sử nhân loại.', 2004, 18, 1, 14),

(N'ĐBP những…lịch sử', N'Trịnh Ngọc Nghi', '9781234567199', N'Khám phá lịch sử chi tiết về chiến dịch Điện Biên Phủ.', 2004, 20, 1, 14),

(N'ĐBP phóng sự…trận', N'Hà Nội', '9781234567200', N'Một phóng sự chi tiết về các trận đánh quyết định trong chiến dịch Điện Biên Phủ.', 2004, 15, 1, 14),

(N'Thắng Pháp trên bầu trời ĐBP', N'Lưu Trọng Lân', '9781234567201', N'Một lần nữa, cuốn sách này mô tả các chiến thắng trên không của quân đội Việt Nam trong chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14),

(N'Trận ĐBP…Pháp', N'Roy Juks', '9781234567202', N'Cuốn sách này mô tả trận chiến quyết định giữa quân đội Pháp và Việt Nam tại Điện Biên Phủ.', 2004, 20, 1, 14),

(N'Thời điểm của những sự thật', N'Navarre Henre', '9781234567203', N'Một cuốn sách về những sự thật lịch sử quan trọng trong các giai đoạn chiến tranh.', 2004, 15, 1, 14),

(N'Đông Dương hấp hối', N'Navarre Henre', '9781234567204', N'Một cuốn sách về sự suy yếu và kết thúc của Đông Dương dưới sự tác động của chiến tranh.', 2004, 18, 1, 14),

(N'Chiến thắng ĐBP mốc vàng…thời đại', N'Hà Nội', '9781234567205', N'Khám phá chiến thắng Điện Biên Phủ như một mốc son vàng trong lịch sử thời đại.', 2004, 20, 1, 14),

(N'Điện Biên Phủ', N'Võ Nguyên Giáp', '9781234567206', N'Một lần nữa, cuốn sách này của Đại tướng Võ Nguyên Giáp về chiến dịch Điện Biên Phủ.', 2004, 15, 1, 14),

(N'Đại tướng Lê Trọng Tấn…ĐBP', N'Hà Nội', '9781234567207', N'Một cuốn sách về Đại tướng Lê Trọng Tấn và chiến công của ông trong chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14),

(N'Đại tướng Hoàng Văn Thái…ĐBP', N'Hà Nội', '9781234567208', N'Một cuốn sách khác về Đại tướng Hoàng Văn Thái trong chiến dịch Điện Biên Phủ.', 2004, 20, 1, 14),

(N'ĐBP nhân chứng sự kiện', N'Hà Nội', '9781234567209', N'Những nhân chứng và sự kiện quan trọng trong chiến dịch Điện Biên Phủ.', 2004, 15, 1, 14),

(N'Kỷ vật Điện Biên', N'Hà Nội', '9781234567210', N'Một cuốn sách về những kỷ vật liên quan đến chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14),

(N'ĐBP đỉnh cao…VN', N'Hà Nội', '9781234567211', N'Một lần nữa, cuốn sách này mô tả đỉnh cao của chiến dịch Điện Biên Phủ và ý nghĩa của chiến thắng.', 2004, 20, 1, 14),

(N'Anh hùng ĐBP', N'Lê Hải Triều', '9781234567212', N'Một cuốn sách vinh danh những anh hùng trong chiến dịch Điện Biên Phủ.', 2004, 15, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Tuổi trẻ của các thiên tài', N'Đức Trinh', '9781234567213', N'Một cuốn sách về tuổi trẻ của các thiên tài trong lịch sử.', 2006, 20, 1, 14),

(N'Sống giữa lòng dân', N'Hồ Xuân Lai', '9781234567214', N'Khám phá cuộc sống của người dân trong xã hội hiện đại.', 2005, 18, 1, 14),

(N'Những chiến dịch…mùa xuân 1975', N'', '9781234567215', N'Một cuốn sách về các chiến dịch quan trọng trong mùa xuân 1975.', 2005, 20, 1, 14),

(N'Đại thắng mùa xuân 1975…tư liệu', N'', '9781234567216', N'Cuốn sách cung cấp tư liệu về chiến thắng mùa xuân 1975 của Việt Nam.', 2005, 18, 1, 14),

(N'Non nước Việt Nam', N'', '9781234567217', N'Một cuốn sách khám phá vẻ đẹp thiên nhiên của Việt Nam.', 2005, 20, 1, 14),

(N'Bối cảnh định đô Thăng Long', N'', '9781234567218', N'Khám phá bối cảnh lịch sử và ý nghĩa việc định đô ở Thăng Long.', 2005, 18, 1, 14),

(N'Những vua chúa VN hay chữ', N'Quốc Chấn', '9781234567219', N'Khám phá sự quan trọng của chữ viết và những vua chúa Việt Nam trong lịch sử.', 2005, 20, 1, 14),

(N'Tố Hữu nhà thơ lớn của nhân dân', N'', '9781234567220', N'Một cuốn sách vinh danh Tố Hữu, nhà thơ nổi tiếng của nhân dân Việt Nam.', 2005, 18, 1, 14),

(N'60 năm những thành tựu…VN', N'', '9781234567221', N'Một cuốn sách điểm lại những thành tựu lớn của Việt Nam trong 60 năm qua.', 2005, 20, 1, 14),

(N'2-9-1945 qua những trang hồi ức', N'', '9781234567222', N'Một cuốn sách về các hồi ức liên quan đến sự kiện 2-9-1945.', 2005, 18, 1, 14),

(N'Cách mạng tháng Tám', N'Trường Chinh', '9781234567223', N'Khám phá sự kiện Cách mạng tháng Tám và vai trò của nó trong lịch sử Việt Nam.', 2005, 20, 1, 14),

(N'Hỏi và đáp nhanh…chống Mỹ', N'', '9781234567224', N'Một cuốn sách về các câu hỏi và đáp án liên quan đến cuộc chiến tranh chống Mỹ.', 2005, 18, 1, 14),

(N'Đất Gia Định…người Sài Gòn', N'Sơn Nam', '9781234567225', N'Một cuốn sách về đất Gia Định và con người Sài Gòn trong lịch sử.', 2005, 20, 1, 14),

(N'Gia lễ xưa và nay', N'Phạm Côn Sơn', '9781234567226', N'Khám phá sự thay đổi trong gia lễ từ xưa đến nay.', 2005, 18, 1, 14),

(N'VN bi thảm Đông Dương', N'Roubaud Louis', '9781234567227', N'Một cuốn sách về những khó khăn và bi thảm trong lịch sử Đông Dương và Việt Nam.', 2005, 20, 1, 14),

(N'VN quốc hiệu…thời đại', N'Nguyễn Đình Đâu', '9781234567228', N'Khám phá quốc hiệu Việt Nam và những thay đổi trong các thời kỳ lịch sử.', 2005, 18, 1, 14),

(N'Du lịch của người câm', N'Lê Minh Quốc', '9781234567229', N'Một cuốn sách về du lịch từ góc nhìn của người câm.', 2005, 20, 1, 14),

(N'Bang giao đại Việt T.1', N'Nguyễn Thế Long', '9781234567230', N'Phần 1 của bộ sách về bang giao trong lịch sử đại Việt.', 2005, 12, 1, 14),

(N'Bang giao đại Việt T.2', N'Nguyễn Thế Long', '9781234567231', N'Phần 2 của bộ sách về bang giao trong lịch sử đại Việt.', 2005, 12, 1, 14),

(N'Bang giao đại Việt T.3', N'Nguyễn Thế Long', '9781234567232', N'Phần 3 của bộ sách về bang giao trong lịch sử đại Việt.', 2005, 12, 1, 14),

(N'Bang giao đại Việt T.4', N'Nguyễn Thế Long', '9781234567233', N'Phần 4 của bộ sách về bang giao trong lịch sử đại Việt.', 2005, 12, 1, 14),

(N'Bang giao đại Việt T.5', N'Nguyễn Thế Long', '9781234567234', N'Phần 5 của bộ sách về bang giao trong lịch sử đại Việt.', 2005, 12, 1, 14),

(N'Bầy diều hâu gãy cánh', N'Nguyễn Phương Nam', '9781234567235', N'Một cuốn sách về các trận chiến trong chiến tranh và những hậu quả của chúng.', 2005, 20, 1, 14),

(N'Những người "VN mới"', N'', '9781234567236', N'Một cuốn sách về sự phát triển của thế hệ "VN mới" trong thời kỳ đổi mới.', 2005, 18, 1, 14),

(N'Non nước…Bắc Bộ', N'Phạm Côn Sơn', '9781234567237', N'Khám phá vẻ đẹp thiên nhiên và con người Bắc Bộ qua cuốn sách này.', 2005, 20, 1, 14),

(N'Non nước…Trung Bộ', N'Phạm Côn Sơn', '9781234567238', N'Khám phá vẻ đẹp thiên nhiên và con người Trung Bộ qua cuốn sách này.', 2005, 20, 1, 14),

(N'Đất Việt mến yêu', N'Phạm Côn Sơn', '9781234567239', N'Khám phá tình yêu đất nước Việt Nam qua các bài viết và câu chuyện.', 2005, 18, 1, 14),

(N'Hành trình 1000…Việt', N'', '9781234567240', N'Một cuốn sách về hành trình 1000 năm lịch sử của Việt Nam.', 2005, 20, 1, 14),

(N'Một số…Đông Nam Á', N'', '9781234567241', N'Tìm hiểu về một số quốc gia và nền văn hóa Đông Nam Á qua cuốn sách này.', 2005, 18, 1, 14),

(N'Bên lề chính sử', N'Đinh Công Vĩ', '9781234567242', N'Một cuốn sách mang đến cái nhìn khác về chính sử và lịch sử Việt Nam.', 2005, 20, 1, 14),

(N'Chiến đấu bảo vệ…cách mạng', N'', '9781234567243', N'Một cuốn sách về cuộc đấu tranh bảo vệ cách mạng trong các giai đoạn lịch sử.', 2005, 18, 1, 14),

(N'Nhớ về mùa thu tháng Tám', N'', '9781234567244', N'Một cuốn sách về những ký ức và sự kiện quan trọng trong mùa thu tháng Tám năm 1945.', 2005, 20, 1, 14),

(N'VN 1945-1946…của Đảng', N'', '9781234567245', N'Tìm hiểu về tình hình Việt Nam trong những năm 1945-1946 dưới sự lãnh đạo của Đảng Cộng sản.', 2005, 18, 1, 14),

(N'Nguyễn Bình trung tướng của QĐNDVN', N'', '9781234567246', N'Một cuốn sách về cuộc đời và sự nghiệp của Trung tướng Nguyễn Bình trong Quân đội Nhân dân Việt Nam.', 2005, 20, 1, 14),

(N'HD học và ôn tập địa lý', N'Nguyễn Cao Phương', '9781234567247', N'Một cuốn sách hướng dẫn học và ôn tập môn địa lý cho học sinh.', 2005, 18, 1, 14),

(N'Chiến dịch HCM…quân sự CM', N'Vũ Như Khôi', '9781234567248', N'Cuốn sách này mô tả chiến dịch Hồ Chí Minh và các yếu tố quân sự quan trọng trong chiến tranh cách mạng.', 2005, 20, 1, 14),

(N'Dại thắng mùa xuân 1975', N'', '9781234567249', N'Một cuốn sách ghi lại chiến thắng mùa xuân 1975 trong lịch sử Việt Nam.', 2005, 18, 1, 14),

(N'Tìm hiểu tín ngưỡng…VN', N'Mai Thanh Hải', '9781234567250', N'Khám phá các tín ngưỡng đặc trưng trong văn hóa và tôn giáo của Việt Nam.', 2005, 20, 1, 14),

(N'Sự thật về cuộc chiến tranh VN', N'', '9781234567251', N'Một cuốn sách về sự thật trong cuộc chiến tranh Việt Nam.', 2005, 18, 1, 14),

(N'Đình và đền HN', N'', '9781234567252', N'Một cuốn sách về các đình và đền tại Hà Nội và lịch sử của chúng.', 2005, 20, 1, 14),

(N'Từ Đà Lạt đến Paris', N'', '9781234567253', N'Một cuốn sách về hành trình từ Đà Lạt đến Paris qua các mốc thời gian và lịch sử.', 2005, 18, 1, 14),

(N'Chiến thắng lịch sử ĐBP (toàn thư)', N'', '9781234567254', N'Một cuốn sách toàn diện về chiến thắng lịch sử Điện Biên Phủ.', 2004, 20, 1, 14),

(N'Giờ phút ĐBP', N'', '9781234567255', N'Một cuốn sách mô tả chi tiết về những giờ phút quan trọng trong chiến dịch Điện Biên Phủ.', 2004, 18, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Những điều cần biết về đất-biển-trời VN', N'Lưu Văn Lợi', '9781234567256', N'Một cuốn sách cung cấp thông tin về đất, biển và trời của Việt Nam.', 2007, 20, 1, 14),

(N'Đường Bác Hồ đi cứu nước', N'', '9781234567257', N'Cuốn sách về con đường Bác Hồ đi cứu nước và những dấu ấn lịch sử quan trọng.', 2007, 20, 1, 14),

(N'Bác Hồ sự cảm hóa kỳ diệu', N'', '9781234567258', N'Một cuốn sách về sự cảm hóa kỳ diệu của Bác Hồ đối với dân tộc Việt Nam.', 2007, 18, 1, 14),

(N'Nỗi đau nhân thế', N'', '9781234567259', N'Cuốn sách miêu tả những nỗi đau trong cuộc sống và cách con người vượt qua.', 2007, 20, 1, 14),

(N'36 năm một sự thức tỉnh', N'Spearman Carey J.', '9781234567260', N'Cuốn sách về sự thay đổi lớn lao trong suốt 36 năm qua của đất nước.', 2007, 18, 1, 14),

(N'Đường phố thủ đô Hà Nội…nữ danh nhân', N'', '9781234567261', N'Khám phá những con đường tại thủ đô Hà Nội gắn liền với các nữ danh nhân.', 2007, 20, 1, 14),

(N'Từ điển vua chúa VN', N'Bùi Thiết', '9781234567262', N'Một cuốn từ điển ghi chép về các vua chúa trong lịch sử Việt Nam.', 2007, 20, 1, 14),

(N'Cuộc chiến đấu tự nguyện', N'Nguyễn Văn Hồng', '9781234567263', N'Một cuốn sách về cuộc chiến đấu tự nguyện và những hy sinh của các chiến sĩ.', 2007, 18, 1, 14),

(N'VN non xanh nước biếc', N'Hoàng Thiếu Sơn', '9781234567264', N'Một cuốn sách miêu tả vẻ đẹp tự nhiên của Việt Nam.', 2007, 20, 1, 14),

(N'Những danh tướng…thời Trần', N'Quốc Chấn', '9781234567265', N'Cuốn sách về những danh tướng nổi tiếng thời Trần trong lịch sử Việt Nam.', 2007, 18, 1, 14),

(N'Hồi ức tuổi thơ', N'Văn Ngọc', '9781234567266', N'Một cuốn sách về hồi ức tuổi thơ của tác giả và các thế hệ người Việt.', 2007, 20, 1, 14),

(N'Tình cảm Bác Hồ với tướng lĩnh', N'', '9781234567267', N'Một cuốn sách về tình cảm của Bác Hồ đối với các tướng lĩnh trong quân đội.', 2007, 18, 1, 14),

(N'Kể chuyện đạo đức Bác Hồ', N'', '9781234567268', N'Cuốn sách kể lại những câu chuyện về đạo đức và tấm gương sáng của Bác Hồ.', 2007, 20, 1, 14),

(N'Học tập tấm gương đạo đức Bác Hồ', N'', '9781234567269', N'Cuốn sách hướng dẫn học tập tấm gương đạo đức Bác Hồ trong cuộc sống hàng ngày.', 2007, 18, 1, 14),

(N'Bác Hồ người VN đẹp nhất', N'', '9781234567270', N'Cuốn sách khắc họa hình ảnh Bác Hồ, người Việt Nam đẹp nhất trong lòng nhân dân.', 2007, 20, 1, 14),

(N'Cuộc đời Phan Bội Châu', N'Lê Đình Hà', '9781234567271', N'Một cuốn sách về cuộc đời và sự nghiệp của Phan Bội Châu.', 2007, 20, 1, 14),

(N'Phan Đình Phùng…ở Nghệ Tĩnh', N'Đào Trinh Nhất', '9781234567272', N'Một cuốn sách kể lại cuộc đời và công cuộc đấu tranh của Phan Đình Phùng ở Nghệ Tĩnh.', 2007, 18, 1, 14),

(N'Chuyện thường ngày…Bác Hồ', N'Hồng Khanh', '9781234567273', N'Một cuốn sách về những câu chuyện thường ngày trong cuộc sống của Bác Hồ.', 2007, 20, 1, 14),

(N'Tráng sĩ Cao Thắng', N'Phan Bội Châu', '9781234567274', N'Một cuốn sách về tráng sĩ Cao Thắng, một nhân vật nổi bật trong lịch sử Việt Nam.', 2007, 18, 1, 14),

(N'Lịch sử 11 nâng cao', N'', '9781234567275', N'Một cuốn sách học môn Lịch sử lớp 11 với những kiến thức nâng cao.', 2007, 20, 1, 14),

(N'Bí ẩn về khảo cổ', N'Tô Yến', '9781234567276', N'Khám phá những bí ẩn trong khảo cổ học và các phát hiện khảo cổ quan trọng.', 2007, 18, 1, 14),

(N'Bí ẩn về kho báu', N'Lưu Đại Quân', '9781234567277', N'Một cuốn sách về những bí ẩn và câu chuyện về kho báu trong lịch sử.', 2007, 20, 1, 14),

(N'Trắc nghiệm lịch sử 12', N'Trương Ngọc Thơi', '9781234567278', N'Cuốn sách trắc nghiệm giúp học sinh ôn luyện môn lịch sử lớp 12.', 2007, 18, 1, 14),

(N'Tuyển tập đề thi lịch sử 12', N'', '9781234567279', N'Cuốn sách tuyển tập các đề thi môn lịch sử lớp 12 cho học sinh ôn thi.', 2007, 20, 1, 14),

(N'805 câu hỏi trắc nghiệm địa lý', N'', '9781234567280', N'Cuốn sách 805 câu hỏi trắc nghiệm giúp học sinh ôn tập môn địa lý.', 2007, 20, 1, 14),

(N'Tuyển tập đề thi Olympic địa lý', N'', '9781234567281', N'Một tuyển tập các đề thi Olympic môn địa lý để học sinh tham khảo.', 2007, 18, 1, 14),

(N'Quách Tấn thiên nhiên và quê hương', N'', '9781234567282', N'Khám phá cuộc đời và những đóng góp của Quách Tấn cho thiên nhiên và quê hương.', 2007, 20, 1, 14),

(N'Nhụy Kiều tướng quân', N'', '9781234567283', N'Một cuốn sách về nhân vật Nhụy Kiều, tướng quân nổi tiếng trong lịch sử Việt Nam.', 2007, 20, 1, 14),

(N'Đường phố thủ đô Hà Nội', N'Thái Quỳnh', '9781234567284', N'Khám phá những con phố ở Hà Nội gắn liền với lịch sử và văn hóa.', 2007, 18, 1, 14),

(N'Kể chuyện đạo đức Bác Hồ', N'', '9781234567285', N'Cuốn sách kể lại những câu chuyện về đạo đức và tấm gương sáng của Bác Hồ.', 2007, 20, 1, 14),

(N'Từ điển vua chúa VN', N'Bùi Thiết', '9781234567286', N'Một cuốn từ điển ghi chép về các vua chúa trong lịch sử Việt Nam.', 2006, 20, 1, 14),

(N'Vương Triều Lý trong văn hóa VN', N'Nguyễn Bích Ngọc', '9781234567287', N'Cuốn sách nghiên cứu về vai trò và ảnh hưởng của Vương Triều Lý trong văn hóa Việt Nam.', 2006, 20, 1, 14),

(N'Truyện cổ sử Trung Hoa T.1', N'', '9781234567288', N'Phần 1 của bộ sách về truyện cổ sử Trung Hoa.', 2006, 20, 1, 14),

(N'Truyện cổ sử Trung Hoa T.2', N'', '9781234567289', N'Phần 2 của bộ sách về truyện cổ sử Trung Hoa.', 2006, 20, 1, 14),

(N'Truyện cổ sử Trung Hoa T.3', N'', '9781234567290', N'Phần 3 của bộ sách về truyện cổ sử Trung Hoa.', 2006, 20, 1, 14),

(N'Truyện cổ sử Trung Hoa T.4', N'', '9781234567291', N'Phần 4 của bộ sách về truyện cổ sử Trung Hoa.', 2006, 20, 1, 14),

(N'Linh vương Trịnh Khải', N'', '9781234567292', N'Cuốn sách về Linh vương Trịnh Khải và những đóng góp của ông cho lịch sử Việt Nam.', 2006, 18, 1, 14),

(N'Văn thần VN', N'Vũ Ngọc Khánh', '9781234567293', N'Cuốn sách về những văn thần trong lịch sử Việt Nam.', 2006, 20, 1, 14),

(N'Người trong sử cũ', N'', '9781234567294', N'Một cuốn sách về những nhân vật lịch sử nổi bật trong lịch sử Việt Nam.', 2006, 20, 1, 14),

(N'Bộ đề trắc nghiệm địa lý', N'Huỳnh Hà', '9781234567295', N'Cuốn sách trắc nghiệm giúp học sinh ôn luyện môn địa lý.', 2006, 18, 1, 14),

(N'Các vị trạng nguyên…hoa', N'Trần Hồng Đức', '9781234567296', N'Cuốn sách kể về các trạng nguyên và những đóng góp của họ cho xã hội.', 2006, 20, 1, 14),

(N'Từ điển vua chúa VN', N'Bùi Thiết', '9781234567297', N'Một cuốn từ điển ghi chép về các vua chúa trong lịch sử Việt Nam.', 2006, 20, 1, 14),

(N'Hải trình bí mật…con tàu không số', N'Hồ Sĩ Thành', '9781234567298', N'Cuốn sách về một chuyến hải trình bí mật, những câu chuyện về con tàu không số.', 2006, 20, 1, 14),

(N'Những chính khách…thế giới', N'', '9781234567299', N'Một cuốn sách về những chính khách nổi bật trên thế giới.', 2006, 20, 1, 14),

(N'Giới thiệu các…Nam Bộ', N'Trần Huy Hùng Cường', '9781234567300', N'Cuốn sách giới thiệu về các tỉnh Nam Bộ và những đặc điểm văn hóa nơi đây.', 2006, 20, 1, 14),

(N'Lịch sử tiền tệ', N'Hoàng Nghĩa', '9781234567301', N'Cuốn sách nghiên cứu lịch sử của tiền tệ trong nền kinh tế thế giới.', 2006, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'HĐ về cuộc khởi nghĩa Hương Khuê', N'', '9781234567302', N'Cuốn sách về cuộc khởi nghĩa Hương Khuê tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Trương Định', N'', '9781234567303', N'Cuốn sách về cuộc khởi nghĩa Trương Định tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Yên Thế', N'', '9781234567304', N'Cuốn sách về cuộc khởi nghĩa Yên Thế tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi Nguyễn Trung Trực', N'', '9781234567305', N'Cuốn sách về cuộc khởi nghĩa của Nguyễn Trung Trực.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Yên Bái', N'', '9781234567306', N'Cuốn sách về cuộc khởi nghĩa Yên Bái tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Thái Nguyên', N'', '9781234567307', N'Cuốn sách về cuộc khởi nghĩa Thái Nguyên tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Nguyễn Quang Bích', N'', '9781234567308', N'Cuốn sách về cuộc khởi nghĩa Nguyễn Quang Bích.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Ba Đình', N'', '9781234567309', N'Cuốn sách về cuộc khởi nghĩa Ba Đình tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Bãi Sậy', N'', '9781234567310', N'Cuốn sách về cuộc khởi nghĩa Bãi Sậy tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Võ Duy Dương', N'', '9781234567311', N'Cuốn sách về cuộc khởi nghĩa Võ Duy Dương.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Tây Sơn', N'', '9781234567312', N'Cuốn sách về cuộc khởi nghĩa Tây Sơn tại Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về cuộc khởi nghĩa Lam Sơn', N'', '9781234567313', N'Cuốn sách về cuộc khởi nghĩa Lam Sơn tại Việt Nam.', 2008, 20, 1, 14),

(N'Người có vấn đề trong sử nước ta', N'Vũ Ngọc Khánh', '9781234567314', N'Cuốn sách đề cập đến những vấn đề trong lịch sử nước ta.', 2008, 20, 1, 14),

(N'Các nền văn minh cổ…và VN', N'', '9781234567315', N'Khám phá các nền văn minh cổ và ảnh hưởng của chúng đối với Việt Nam.', 2008, 20, 1, 14),

(N'Lịch sử địa danh VN', N'', '9781234567316', N'Cuốn sách ghi chép về lịch sử các địa danh nổi tiếng tại Việt Nam.', 2008, 20, 1, 14),

(N'Kỳ tích văn minh thế giới', N'Hải Phòng', '9781234567317', N'Khám phá các kỳ tích của văn minh thế giới.', 2008, 20, 1, 14),

(N'Ánh áng tâm đăng HCM', N'Sơn Tùng', '9781234567318', N'Cuốn sách về ánh sáng tâm hồn và tư tưởng Hồ Chí Minh.', 2008, 20, 1, 14),

(N'Bác ở nơi đây', N'', '9781234567319', N'Cuốn sách về những nơi Bác Hồ đã từng sống và làm việc.', 2008, 20, 1, 14),

(N'Sự kiện trong lịch sử nhân loại', N'Nguyễn Nguyên', '9781234567320', N'Cuốn sách tổng hợp các sự kiện lịch sử quan trọng trong nhân loại.', 2008, 20, 1, 14),

(N'10 phụ nữ huyền thoại VN', N'', '9781234567321', N'Cuốn sách kể về 10 người phụ nữ huyền thoại trong lịch sử Việt Nam.', 2008, 20, 1, 14),

(N'Đường Bác Hồ chúng ta đi', N'Hoàng Quốc Việt', '9781234567322', N'Cuốn sách về con đường Bác Hồ đã đi và ảnh hưởng đến đất nước.', 2008, 20, 1, 14),

(N'Hồ Chủ tịch vị thượng khách của nước Pháp', N'', '9781234567323', N'Cuốn sách về chuyến thăm Pháp của Hồ Chủ tịch và những ấn tượng trong lòng người dân Pháp.', 2008, 20, 1, 14),

(N'Giai thoại Nguyễn Công Trứ', N'Phan Thư Hiền', '9781234567324', N'Cuốn sách về các giai thoại liên quan đến Nguyễn Công Trứ.', 2008, 20, 1, 14),

(N'Làm theo tấm gương đạo đức…HCM', N'', '9781234567325', N'Cuốn sách hướng dẫn học tập theo tấm gương đạo đức Hồ Chí Minh.', 2008, 20, 1, 14),

(N'Lũy thầy', N'Phạm Minh Thảo', '9781234567326', N'Cuốn sách về lũy thầy và tầm quan trọng của giáo dục.', 2008, 20, 1, 14),

(N'Sấm Trạng Trình', N'Phạm Minh Thảo', '9781234567327', N'Cuốn sách nói về những lời sấm truyền của Trạng Trình.', 2008, 20, 1, 14),

(N'Mai Am công chúa', N'Vũ Ngọc Khang', '9781234567328', N'Cuốn sách kể về Mai Am công chúa và những đóng góp của bà trong lịch sử.', 2008, 20, 1, 14),

(N'Bố Cái Đại Vương', N'Phạm Khang', '9781234567329', N'Cuốn sách về Bố Cái Đại Vương và những chiến công của ông.', 2008, 20, 1, 14),

(N'Thừa tướng Lữa Gia', N'Phạm Khang', '9781234567330', N'Cuốn sách về thừa tướng Lữa Gia và công lao của ông trong triều đại.', 2008, 20, 1, 14),

(N'Đại thắng Minh Hoàng hậu', N'Phạm Khang', '9781234567331', N'Cuốn sách nói về chiến thắng của Minh Hoàng hậu trong lịch sử Việt Nam.', 2008, 20, 1, 14),

(N'Kể chuyện các vua Nguyễn', N'Tôn thất Bình', '9781234567332', N'Cuốn sách kể về các vị vua triều Nguyễn và cuộc sống của họ.', 2008, 20, 1, 14),

(N'Sóng trào non bảng', N'Khúc Nhã Vọng', '9781234567333', N'Cuốn sách về những cuộc tranh đấu của các nhân vật trong lịch sử.', 2008, 20, 1, 14),

(N'Bút nhọn làm gươm', N'Khúc Nhã Vọng', '9781234567334', N'Cuốn sách nói về cách biến bút thành gươm trong thời chiến.', 2008, 20, 1, 14),

(N'Hồ Quý Ly và thành Tây Đô', N'Phạm Hoàng Mạnh Hà', '9781234567335', N'Cuốn sách về Hồ Quý Ly và những sự kiện liên quan đến thành Tây Đô.', 2008, 20, 1, 14),

(N'Bình Định vương', N'Nguyễn Ngọc Bích', '9781234567336', N'Cuốn sách về Bình Định vương và những chiến công của ông.', 2008, 20, 1, 14),

(N'Lý Bát Đế', N'Phạm Khang', '9781234567337', N'Cuốn sách về các vị vua trong triều đại Lý Bát Đế.', 2008, 20, 1, 14),

(N'Thầy giáo thủy thần', N'', '9781234567338', N'Cuốn sách về một người thầy giáo thủy thần và những câu chuyện huyền thoại.', 2008, 20, 1, 14),

(N'Bắc Bình vương', N'Phạm Minh Thảo', '9781234567339', N'Cuốn sách về Bắc Bình vương và những đóng góp của ông trong lịch sử.', 2008, 20, 1, 14),

(N'Sùng Chính Viện', N'Lưu Hùng Chương', '9781234567340', N'Cuốn sách về sự kiện và lịch sử của Sùng Chính Viện.', 2008, 20, 1, 14),

(N'Đá Liễu Thăng', N'Phạm Minh Thảo', '9781234567341', N'Cuốn sách kể về sự kiện Đá Liễu Thăng và ảnh hưởng của nó.', 2008, 20, 1, 14),

(N'Biên niên sự kiện CT.HCM với…VN-Lào', N'', '9781234567342', N'Cuốn sách biên niên các sự kiện trong quan hệ giữa Việt Nam và Lào.', 2007, 20, 1, 14),

(N'Địa lý hành chính VN hỏi đáp', N'', '9781234567343', N'Cuốn sách hỏi đáp về địa lý hành chính Việt Nam.', 2007, 20, 1, 14),

(N'Những dấu chân lịch sử', N'Võ Văn Trực', '9781234567344', N'Cuốn sách ghi lại những dấu chân lịch sử của những người nổi bật trong lịch sử Việt Nam.', 2007, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'VN cuộc chiến thất bại của Mỹ', N'Joe Allen', '9781234567345', N'Cuốn sách phân tích về cuộc chiến thất bại của Mỹ tại Việt Nam.', 2009, 20, 1, 14),

(N'Trưng Vương và các nữ tướng', N'Vũ Thanh Sơn', '9781234567346', N'Cuốn sách về Trưng Vương và các nữ tướng trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Những bài diễn thuyết nước Mỹ', N'', '9781234567347', N'Cuốn sách tổng hợp những bài diễn thuyết quan trọng của các nhân vật lịch sử Mỹ.', 2009, 20, 1, 14),

(N'CT HCM và bản di chúc lịch sử', N'', '9781234567348', N'Cuốn sách nghiên cứu về bản di chúc lịch sử của Chủ tịch Hồ Chí Minh.', 2009, 20, 1, 14),

(N'Thư ký Bác Hồ kể chuyện', N'Vũ Kỳ', '9781234567349', N'Cuốn sách kể lại những câu chuyện thú vị từ thư ký của Bác Hồ.', 2009, 20, 1, 14),

(N'Theo Bác Hồ đi chuyến dịch', N'', '9781234567350', N'Cuốn sách mô tả các chuyến đi và hoạt động của Bác Hồ trong các chiến dịch.', 2009, 20, 1, 14),

(N'Hai đệ nhất phu nhân Trung Quốc', N'Phạm Bá', '9781234567351', N'Cuốn sách nói về hai phu nhân nổi bật trong lịch sử Trung Quốc.', 2009, 20, 1, 14),

(N'HĐ về các cuộc khởi nghĩa ở VN', N'', '9781234567352', N'Cuốn sách về các cuộc khởi nghĩa lớn trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'HĐ về các nữ tướng ở VN', N'', '9781234567353', N'Cuốn sách nói về các nữ tướng vĩ đại trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Trí nhớ đặc biệt của Bác Hồ', N'Trần Đương', '9781234567354', N'Cuốn sách khám phá trí nhớ đặc biệt của Bác Hồ.', 2009, 20, 1, 14),

(N'Hồ Hoàn Kiếm và đền Ngọc Sơn', N'Nguyễn Vinh Phúc', '9781234567355', N'Cuốn sách kể về Hồ Hoàn Kiếm và đền Ngọc Sơn ở Hà Nội.', 2009, 20, 1, 14),

(N'Danh nữ trong truyền thuyết và lịch sử VN', N'', '9781234567356', N'Cuốn sách nói về những nữ nhân vật nổi bật trong truyền thuyết và lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'CT HCM với…yêu nước', N'', '9781234567357', N'Cuốn sách nói về tình yêu nước của Chủ tịch Hồ Chí Minh.', 2009, 20, 1, 14),

(N'Hồ Quý Ly và thành Tây Đô', N'Phạm Hoàng Mạnh Hà', '9781234567358', N'Cuốn sách về Hồ Quý Ly và thành Tây Đô.', 2008, 20, 1, 14),

(N'99 câu hỏi đáp…Hùng Vương', N'', '9781234567359', N'Cuốn sách đưa ra 99 câu hỏi đáp về các vua Hùng.', 2008, 20, 1, 14),

(N'Uy viển tướng công Nguyễn Công Trứ', N'', '9781234567360', N'Cuốn sách nghiên cứu về cuộc đời và sự nghiệp của tướng công Nguyễn Công Trứ.', 2008, 20, 1, 14),

(N'Danh tướng VN - T.1', N'Nguyễn Khắc Thuần', '9781234567361', N'Cuốn sách tập 1 về các danh tướng nổi bật trong lịch sử Việt Nam.', 2008, 20, 1, 14),

(N'Trọng tâm kiến thức và bài tập địa lý 10', N'Lê Thí', '9781234567362', N'Cuốn sách cung cấp kiến thức và bài tập môn Địa lý lớp 10.', 2008, 20, 1, 14),

(N'Giai thoại HCM', N'', '9781234567363', N'Cuốn sách kể lại những giai thoại về Chủ tịch Hồ Chí Minh.', 2008, 20, 1, 14),

(N'Danh tướng VN T.1', N'Nguyễn Khắc Thuần', '9781234567364', N'Cuốn sách về các danh tướng Việt Nam tập 1.', 2008, 20, 1, 14),

(N'HĐ về thời thanh niên của Bác Hồ', N'Nguyễn Hương Mai', '9781234567365', N'Cuốn sách nói về những năm tháng thanh niên của Bác Hồ.', 2008, 20, 1, 14),

(N'Tết Mậu Thân 1968 bước ngoặc lớn…cứu nước', N'Hồ Khang', '9781234567366', N'Cuốn sách phân tích về sự kiện Tết Mậu Thân 1968 và tác động lớn của nó.', 2008, 20, 1, 14),

(N'Giở trang sử Việt', N'Lê Thái Dũng', '9781234567367', N'Cuốn sách tái hiện lại những trang sử hào hùng của Việt Nam.', 2008, 20, 1, 14),

(N'HĐ về non nước VN', N'', '9781234567368', N'Cuốn sách về đất nước và con người Việt Nam qua các giai đoạn lịch sử.', 2008, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Việt Nam biên niên sử', N'Đặng Duy Phúc', '9781234567369', N'Cuốn sách biên niên sử Việt Nam, cung cấp một cái nhìn tổng quan về lịch sử đất nước.', 2009, 20, 1, 14),

(N'Non nước Hà Nội', N'Quảng Văn', '9781234567370', N'Cuốn sách về phong cảnh và lịch sử của thủ đô Hà Nội.', 2009, 20, 1, 14),

(N'NAQ HCM trên đường…ĐCS VN', N'Lê Văn Yên', '9781234567371', N'Cuốn sách nghiên cứu về Chủ tịch Hồ Chí Minh và Đảng Cộng sản Việt Nam.', 2009, 20, 1, 14),

(N'Huyền thoại đồi A1', N'Phạm Quý Thích', '9781234567372', N'Cuốn sách kể lại huyền thoại về chiến trường đồi A1 trong chiến tranh Việt Nam.', 2009, 20, 1, 14),

(N'Lịch sử phong tục…người Nam', N'', '9781234567373', N'Cuốn sách về lịch sử phong tục tập quán của người Nam Bộ.', 2009, 20, 1, 14),

(N'Hỏi đáp các cuộc khởi nghĩa ở VN', N'', '9781234567374', N'Cuốn sách cung cấp câu hỏi và đáp án về các cuộc khởi nghĩa trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Hỏi đáp địa danh lịch sử VN', N'', '9781234567375', N'Cuốn sách trả lời các câu hỏi về địa danh lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'100 địa danh đẹp nhất thế giới', N'', '9781234567376', N'Cuốn sách giới thiệu 100 địa danh đẹp nhất thế giới.', 2009, 20, 1, 14),

(N'Trại giam tù binh Phú Quốc', N'Trần Văn Kiêm', '9781234567377', N'Cuốn sách về trại giam tù binh Phú Quốc trong chiến tranh Việt Nam.', 2009, 20, 1, 14),

(N'Hỏi đáp về…thắng cảnh nổi tiếng VN', N'', '9781234567378', N'Cuốn sách giới thiệu về các thắng cảnh nổi tiếng tại Việt Nam qua câu hỏi và đáp án.', 2009, 20, 1, 14),

(N'Hỏi đáp về…di tích lịch sử và văn hóa…VN', N'', '9781234567379', N'Cuốn sách giới thiệu các di tích lịch sử và văn hóa tại Việt Nam qua câu hỏi và đáp án.', 2009, 20, 1, 14),

(N'Hỏi đáp về đường HCM trên biển', N'', '9781234567380', N'Cuốn sách giới thiệu về con đường Hồ Chí Minh trên biển, một phần quan trọng trong lịch sử chiến tranh Việt Nam.', 2009, 20, 1, 14),

(N'Du lịch VN qua ô chữ', N'Trần Đình Ba', '9781234567381', N'Cuốn sách giới thiệu du lịch Việt Nam qua các ô chữ thú vị.', 2009, 20, 1, 14),

(N'Hỏi đáp về cuộc khởi nghĩa Tây Sơn', N'', '9781234567382', N'Cuốn sách giải thích các sự kiện và chiến tích của cuộc khởi nghĩa Tây Sơn.', 2009, 20, 1, 14),

(N'Hỏi đáp về cuộc khởi nghĩa Bãi Sậy', N'', '9781234567383', N'Cuốn sách tìm hiểu về cuộc khởi nghĩa Bãi Sậy qua câu hỏi và đáp án.', 2009, 20, 1, 14),

(N'284 anh hùng lao động của VN T.1', N'Vũ Thanh Sơn', '9781234567384', N'Cuốn sách tập 1 về 284 anh hùng lao động của Việt Nam.', 2009, 20, 1, 14),

(N'284 anh hùng lao động của VN T.2', N'Vũ Thanh Sơn', '9781234567385', N'Cuốn sách tập 2 về 284 anh hùng lao động của Việt Nam.', 2009, 20, 1, 14),

(N'284 anh hùng lao động của VN T.3', N'Vũ Thanh Sơn', '9781234567386', N'Cuốn sách tập 3 về 284 anh hùng lao động của Việt Nam.', 2009, 20, 1, 14),

(N'284 anh hùng lao động của VN T.4', N'Vũ Thanh Sơn', '9781234567387', N'Cuốn sách tập 4 về 284 anh hùng lao động của Việt Nam.', 2009, 20, 1, 14),

(N'284 anh hùng lao động của VN T.5', N'Vũ Thanh Sơn', '9781234567388', N'Cuốn sách tập 5 về 284 anh hùng lao động của Việt Nam.', 2009, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'HĐ về các chiến khu trong cuộc kháng chiến chống thực dân Pháp(1945-1954)', N'', '9781234567390', N'Cuốn sách giới thiệu về các chiến khu trong cuộc kháng chiến chống thực dân Pháp (1945-1954).', 2009, 20, 1, 14),

(N'VN cuộc chiến thất bại của Mỹ', N'Joe Allen', '9781234567391', N'Cuốn sách phân tích về chiến tranh Việt Nam và thất bại của Mỹ trong cuộc chiến này.', 2009, 20, 1, 14),

(N'HĐ về đường Trường Sơn đường HCM', N'', '9781234567392', N'Cuốn sách mô tả chi tiết về đường Trường Sơn, một trong những tuyến đường huyết mạch trong chiến tranh Việt Nam.', 2009, 20, 1, 14),

(N'HĐ về đường HCM trên biển', N'', '9781234567393', N'Cuốn sách giới thiệu về con đường Hồ Chí Minh trên biển, một phần quan trọng trong chiến tranh Việt Nam.', 2009, 20, 1, 14),

(N'Võ Thị Sáu. Con người và huyền thoại', N'Nguyễn Đình Thống', '9781234567394', N'Cuốn sách về Võ Thị Sáu, nữ anh hùng trong kháng chiến chống Pháp.', 2009, 20, 1, 14),

(N'Tuyển chọn và giới thiệu đề kiểm tra học kì ở các địa phương. Lịch sử 11', N'Nguyễn Đăng Bồng, etc…', '9781234567395', N'Cuốn sách tuyển chọn và giới thiệu các đề kiểm tra học kỳ môn Lịch sử lớp 11 từ các địa phương.', 2009, 20, 1, 14),

(N'Đông Dương ngày ấy', N'Bourrin Claude', '9781234567396', N'Cuốn sách nói về lịch sử Đông Dương trong những năm tháng quan trọng.', 2009, 20, 1, 14),

(N'Để hiểu thêm về Bác Hồ', N'', '9781234567397', N'Cuốn sách giúp bạn đọc hiểu thêm về cuộc đời và sự nghiệp của Chủ tịch Hồ Chí Minh.', 2009, 20, 1, 14),

(N'Những điều thú vị…vua triều Lý', N'', '9781234567398', N'Cuốn sách giới thiệu những câu chuyện thú vị về các vua triều Lý trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Gương sáng nữ Việt', N'', '9781234567399', N'Cuốn sách kể về những nữ anh hùng trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Kể chuyện người anh hùng áo vải', N'', '9781234567400', N'Cuốn sách kể về những người anh hùng áo vải trong các cuộc kháng chiến chống xâm lược.', 2009, 20, 1, 14),

(N'Kể chuyện quê hương nhà Lý', N'Phạm Thuận Thành', '9781234567401', N'Cuốn sách kể về quê hương của các vua triều Lý.', 2009, 20, 1, 14),

(N'HCM 471 ngày độc lập đầu tiên', N'Đỗ Hoàng Linh', '9781234567402', N'Cuốn sách mô tả về 471 ngày đầu tiên Hồ Chí Minh lãnh đạo đất nước sau ngày độc lập.', 2009, 20, 1, 14),

(N'CT HCM với hành trình kháng chiến', N'Đỗ Hoàng Linh', '9781234567403', N'Cuốn sách khắc họa hành trình kháng chiến của Chủ tịch Hồ Chí Minh.', 2009, 20, 1, 14),

(N'Những vụ bê bối trong lịch sử thế giới', N'', '9781234567404', N'Cuốn sách về những vụ bê bối lớn trong lịch sử thế giới.', 2009, 20, 1, 14),

(N'Từ chiến dịch…đến công trường 111', N'', '9781234567405', N'Cuốn sách kể lại những chiến dịch quan trọng trong chiến tranh và quá trình xây dựng công trường 111.', 2009, 20, 1, 14),

(N'Hà Nội nghìn xưa', N'Trần Quốc Vượng', '9781234567406', N'Cuốn sách khám phá Hà Nội qua các thời kỳ lịch sử, từ nghìn xưa đến nay.', 2009, 20, 1, 14),

(N'1000 câu HĐ về Thăng Long - HN T.1', N'', '9781234567407', N'Cuốn sách tập 1 về 1000 câu hỏi đáp về Thăng Long - Hà Nội.', 2009, 20, 1, 14),

(N'1000 câu HĐ về Thăng Long - HN T.2', N'', '9781234567408', N'Cuốn sách tập 2 về 1000 câu hỏi đáp về Thăng Long - Hà Nội.', 2009, 20, 1, 14),

(N'Lịch sử VN qua ô chữ', N'Trần Đình Ba', '9781234567409', N'Cuốn sách giới thiệu lịch sử Việt Nam qua các ô chữ, mang tính giáo dục và giải trí.', 2009, 20, 1, 14),

(N'Góp phần tìm hiểu…văn hiến', N'Phạm Đình Nhân', '9781234567410', N'Cuốn sách góp phần làm sáng tỏ văn hiến của dân tộc Việt Nam.', 2009, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Hỏi đáp về đường HCM trên biển', N'', '9781234567411', N'Cuốn sách giới thiệu về tuyến đường Hồ Chí Minh trên biển, một phần quan trọng trong chiến tranh Việt Nam.', 2009, 20, 1, 14),

(N'117 vị sứ thần Việt Nam', N'', '9781234567412', N'Cuốn sách nói về 117 vị sứ thần Việt Nam, những người đã đóng góp lớn trong lịch sử ngoại giao và quân sự của đất nước.', 2009, 20, 1, 14),

(N'HĐ về các hang, động. Địa đạo nổi tiếng ở VN', N'', '9781234567413', N'Cuốn sách giới thiệu các hang động và địa đạo nổi tiếng ở Việt Nam, những di tích văn hóa và lịch sử đặc sắc.', 2009, 20, 1, 14),

(N'HĐ về các sông, suối, thác, hồ ao nổi tiếng ở VN', N'', '9781234567414', N'Cuốn sách cung cấp thông tin về các sông, suối, thác, hồ ao nổi tiếng tại Việt Nam, gắn liền với lịch sử và văn hóa dân tộc.', 2009, 20, 1, 14),

(N'HĐ về các bãi biển VN', N'', '9781234567415', N'Cuốn sách giới thiệu các bãi biển đẹp và nổi tiếng tại Việt Nam, điểm đến du lịch hấp dẫn.', 2009, 20, 1, 14),

(N'HĐ về các núi, dãy núi, rừng, đèo dốc nổi tiếng ở VN', N'', '9781234567416', N'Cuốn sách về các núi, dãy núi, rừng, đèo dốc nổi tiếng của Việt Nam, những kỳ quan thiên nhiên kỳ vĩ.', 2009, 20, 1, 14),

(N'117 vị sứ thần Việt Nam', N'', '9781234567417', N'Cuốn sách tiếp tục nghiên cứu về các vị sứ thần Việt Nam và những đóng góp của họ đối với đất nước.', 2009, 20, 1, 14),

(N'HĐ về những cánh rừng và vườn quốc gia VN', N'', '9781234567418', N'Cuốn sách giới thiệu những cánh rừng và vườn quốc gia tại Việt Nam, nơi bảo tồn động thực vật quý hiếm.', 2009, 20, 1, 14),

(N'Tiếng trống Mê Linh', N'', '9781234567419', N'Cuốn sách kể về cuộc khởi nghĩa Mê Linh, một sự kiện quan trọng trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Tôi muốn cưỡi cơn gió', N'', '9781234567420', N'Cuốn sách là một tác phẩm văn học sâu sắc về khát vọng tự do và cuộc sống.', 2009, 20, 1, 14),

(N'Đất nước vạn xuân', N'', '9781234567421', N'Cuốn sách mô tả vẻ đẹp đất nước Việt Nam qua từng giai đoạn lịch sử và các kỳ quan thiên nhiên.', 2009, 20, 1, 14),

(N'Dạ Trạch Vương Triệu Quang Phục', N'', '9781234567422', N'Cuốn sách kể về Triệu Quang Phục, vị vua của nhà Trần và những chiến công vĩ đại của ông.', 2009, 20, 1, 14),

(N'Mai Hắc Đế dựng nghiệp', N'', '9781234567423', N'Cuốn sách viết về Mai Hắc Đế và quá trình ông dựng nghiệp, giúp đất nước thoát khỏi ách thống trị.', 2009, 20, 1, 14),

(N'Họ Khúc dấy nghiệp', N'', '9781234567424', N'Cuốn sách nghiên cứu về họ Khúc, những người đã dấy nghiệp và xây dựng đất nước trong lịch sử.', 2009, 20, 1, 14),

(N'Bố cái đại vương', N'', '9781234567425', N'Cuốn sách kể về Bố Cái Đại Vương, một anh hùng trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Ngô Quyền Đại phá quân Nam Hán', N'', '9781234567426', N'Cuốn sách kể về chiến thắng oanh liệt của Ngô Quyền trong trận đánh quân Nam Hán, một mốc son quan trọng trong lịch sử.', 2009, 20, 1, 14),

(N'Thế hệ thanh niên HN chúng tôi ngày ấy', N'', '9781234567427', N'Cuốn sách viết về thế hệ thanh niên Hà Nội trong những năm tháng kháng chiến và cách họ đã cống hiến cho đất nước.', 2009, 20, 1, 14),

(N'HĐ về các chiến khu trong cuộc kháng chiến chống Mỹ, cứu nước(1954-1975)', N'', '9781234567428', N'Cuốn sách giới thiệu các chiến khu trong cuộc kháng chiến chống Mỹ, một phần quan trọng trong chiến tranh Việt Nam.', 2009, 20, 1, 14);
INSERT INTO [dbo].[Books] 
([Title], [Author], [ISBN], [Abstract], [PublishYear], [Quantity], [IsAvailable], [GenreId]) 
VALUES 
(N'Du lịch VN qua ô chữ', N'Trần Đình Ba', '9781234567429', N'Cuốn sách này mang đến những thông tin thú vị về du lịch Việt Nam qua các ô chữ.', 2009, 20, 1, 14),

(N'Địa danh về các cuộc khởi nghĩa VN', N'', '9781234567430', N'Cuốn sách giới thiệu các địa danh liên quan đến các cuộc khởi nghĩa lớn trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Hỏi đáp về cuộc khởi nghĩa Tây Sơn', N'', '9781234567431', N'Cuốn sách tập trung vào các câu hỏi và đáp án về cuộc khởi nghĩa Tây Sơn và ảnh hưởng của nó đối với lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Hỏi đáp về cuộc khởi nghĩa Bãi Sậy', N'', '9781234567432', N'Cuốn sách cung cấp các câu hỏi và trả lời về cuộc khởi nghĩa Bãi Sậy, một trong những cuộc khởi nghĩa tiêu biểu của Việt Nam.', 2009, 20, 1, 14),

(N'Theo Bác Hồ đi chuyến dịch', N'', '9781234567433', N'Cuốn sách kể về những chuyến đi của Bác Hồ trong cuộc kháng chiến và hành trình lịch sử của đất nước.', 2009, 20, 1, 14),

(N'Những ngày đầu ở Bắc Bộ Phủ', N'', '9781234567434', N'Cuốn sách ghi lại những ngày đầu tiên của Bắc Bộ Phủ trong cuộc kháng chiến chống thực dân Pháp.', 2009, 20, 1, 14),

(N'VN cuộc chiến thất bại của Mỹ', N'Joe Allen', '9781234567435', N'Cuốn sách phân tích về chiến tranh Việt Nam từ góc nhìn của người Mỹ, lý giải sự thất bại của Mỹ trong cuộc chiến này.', 2009, 20, 1, 14),

(N'Hai đệ nhất phu nhân TQ', N'Phạm Bá', '9781234567436', N'Cuốn sách viết về hai đệ nhất phu nhân Trung Quốc, những nhân vật quan trọng trong lịch sử Trung Quốc.', 2009, 20, 1, 14),

(N'Hỏi đáp các cuộc khởi nghĩa ở VN', N'', '9781234567437', N'Cuốn sách cung cấp các câu hỏi và trả lời về các cuộc khởi nghĩa quan trọng trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Hỏi đáp về các nữ tướng ở Việt Nam', N'', '9781234567438', N'Cuốn sách giới thiệu về các nữ tướng trong lịch sử Việt Nam, những người đã đóng góp to lớn trong các cuộc kháng chiến.', 2009, 20, 1, 14),

(N'Trí nhớ đặc biệt của Bác Hồ', N'', '9781234567439', N'Cuốn sách giới thiệu về trí nhớ đặc biệt của Bác Hồ, người có khả năng ghi nhớ và sử dụng thông tin một cách xuất sắc.', 2009, 20, 1, 14),

(N'Hồ Hoàn Kiếm và đền Ngọc Sơn', N'Nguyễn Vinh Phúc', '9781234567440', N'Cuốn sách giới thiệu về Hồ Hoàn Kiếm và đền Ngọc Sơn, những địa danh lịch sử và văn hóa quan trọng ở Hà Nội.', 2009, 20, 1, 14),

(N'Gương sáng nữ Việt', N'Trần Đình Ba', '9781234567441', N'Cuốn sách tôn vinh những gương sáng nữ Việt, những người phụ nữ Việt Nam dũng cảm và tài giỏi qua các thời kỳ lịch sử.', 2009, 20, 1, 14),

(N'Danh tướng trong truyền thuyết & lịch sử VN', N'', '9781234567442', N'Cuốn sách nói về các danh tướng trong lịch sử và truyền thuyết Việt Nam, những nhân vật có công lớn trong việc bảo vệ đất nước.', 2009, 20, 1, 14),

(N'CT HCM & bản di chúc lịch sử', N'', '9781234567443', N'Cuốn sách nghiên cứu về bản di chúc lịch sử của Chủ tịch Hồ Chí Minh và tầm ảnh hưởng của nó đối với đất nước.', 2009, 20, 1, 14),

(N'Thư ký Bác Hồ kể chuyện', N'', '9781234567444', N'Cuốn sách kể lại những câu chuyện thú vị từ thư ký của Bác Hồ, giúp hiểu rõ hơn về con người và tư tưởng của Người.', 2009, 20, 1, 14),

(N'Các nhân vật phản diện trong lịch sử VN', N'', '9781234567445', N'Cuốn sách giới thiệu về những nhân vật phản diện trong lịch sử Việt Nam, những người có vai trò trong các sự kiện quan trọng nhưng bị cho là phản bội.', 2010, 20, 1, 14),

(N'Danh nhân quân sự VN thời Hồ-Lê sơ', N'', '9781234567446', N'Cuốn sách nghiên cứu về các danh nhân quân sự Việt Nam thời kỳ Hồ và Lê sơ, những người có công lớn trong bảo vệ đất nước.', 2010, 20, 1, 14),

(N'Danh nhân quân sự VN thời Âu Lạc-tiền Lê', N'', '9781234567447', N'Cuốn sách tập trung vào các danh nhân quân sự trong lịch sử Việt Nam thời kỳ Âu Lạc và Tiền Lê.', 2010, 20, 1, 14),

(N'Danh nhân quân sự VN thời Lý-Trần', N'', '9781234567448', N'Cuốn sách viết về các danh nhân quân sự thời kỳ Lý-Trần, những nhân vật vĩ đại trong lịch sử quân sự Việt Nam.', 2010, 20, 1, 14),

(N'Danh nhân quân sự VN thời Lê Trung Hưng-Tây Sơn', N'', '9781234567449', N'Cuốn sách nghiên cứu các danh nhân quân sự thời kỳ Lê Trung Hưng và Tây Sơn, hai thời kỳ quan trọng trong lịch sử quân sự Việt Nam.', 2010, 20, 1, 14),

(N'Danh nhân quân sự VN thời Nguyễn giai đoạn Cần Vương', N'', '9781234567450', N'Cuốn sách nói về các danh nhân quân sự thời Nguyễn trong giai đoạn phong trào Cần Vương.', 2010, 20, 1, 14),

(N'Danh nhân quân sự VN thời Nguyễn kháng chiến chống thực dân Pháp và giai đoạn đầu phong trào Cần Vương', N'', '9781234567451', N'Cuốn sách nghiên cứu các danh nhân quân sự trong thời kỳ kháng chiến chống thực dân Pháp và phong trào Cần Vương.', 2010, 20, 1, 14),

(N'Gương sáng người xưa', N'', '9781234567452', N'Cuốn sách tôn vinh những gương sáng người xưa, những nhân vật lịch sử có đạo đức và tác động tích cực đến xã hội.', 2010, 20, 1, 14),

(N'101 gương đạo đức của người xưa', N'', '9781234567453', N'Cuốn sách giới thiệu 101 gương đạo đức của những người xưa, những tấm gương sáng trong lịch sử Việt Nam.', 2010, 20, 1, 14),

(N'Bàn về khế ước xã hội', N'Jean Jacques Rousseau', '9781234567454', N'Cuốn sách giới thiệu về tác phẩm "Khế ước xã hội" của Jean Jacques Rousseau, một trong những tác phẩm chính trị nổi tiếng của thế giới.', 2010, 20, 1, 14),

(N'Lịch sử Đoàn thanh niên Cộng sản Hồ Chí Minh và phong trào thanh niên VN', N'', '9781234567455', N'Cuốn sách kể về lịch sử Đoàn thanh niên Cộng sản Hồ Chí Minh và phong trào thanh niên trong lịch sử Việt Nam.', 2010, 20, 1, 14),

(N'Gương sáng nữ Việt', N'Trần Đình Ba', '9781234567456', N'Cuốn sách này là phần tiếp theo của "Gương sáng nữ Việt", tôn vinh những nữ anh hùng, có ảnh hưởng lớn trong các giai đoạn lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Những điều thú vị về các vị vua thời Lý', N'Lê Thái Dũng', '9781234567457', N'Cuốn sách cung cấp những điều thú vị và kiến thức về các vị vua của triều đại Lý, một trong những triều đại mạnh mẽ trong lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Kể chuyện quê hương nhà Lý', N'', '9781234567458', N'Cuốn sách kể về quê hương của nhà Lý, với những câu chuyện thú vị về triều đại này và ảnh hưởng của nó đến lịch sử Việt Nam.', 2009, 20, 1, 14),

(N'Trường Sơn có một thời như thế', N'', '9781234567459', N'Cuốn sách nói về Trường Sơn, một biểu tượng bất diệt trong lịch sử kháng chiến của Việt Nam.', 2009, 20, 1, 14),

(N'100 địa danh thế giới', N'', '9781234567460', N'Cuốn sách giới thiệu 100 địa danh đẹp và nổi tiếng trên thế giới, là điểm đến du lịch không thể bỏ qua.', 2009, 20, 1, 14),

(N'Hỏi đáp về những ngôi đình nổi tiếng ở VN', N'', '9781234567461', N'Cuốn sách giới thiệu các ngôi đình nổi tiếng ở Việt Nam, những di tích văn hóa và lịch sử quý giá của đất nước.', 2009, 20, 1, 14),

(N'Hỏi đáp về những ngôi đền nổi tiếng ở VN', N'', '9781234567462', N'Cuốn sách cung cấp thông tin về những ngôi đền nổi tiếng ở Việt Nam, nơi thờ cúng và tôn vinh các vị thần, các bậc anh hùng.', 2009, 20, 1, 14),

(N'Hỏi đáp về một số thắng cảnh….VN', N'', '9781234567463', N'Cuốn sách này cung cấp các câu hỏi và trả lời về những thắng cảnh nổi tiếng của Việt Nam, một kho tàng vẻ đẹp thiên nhiên và lịch sử.', 2009, 20, 1, 14),

(N'Hỏi đáp địa danh lịch sử VN', N'', '9781234567464', N'Cuốn sách giúp bạn khám phá các địa danh lịch sử nổi tiếng của Việt Nam qua các câu hỏi và câu trả lời thú vị.', 2009, 20, 1, 14),

(N'Hỏi đáp về một số di tích…VN', N'', '9781234567465', N'Cuốn sách cung cấp những câu hỏi và đáp án về các di tích lịch sử quan trọng của Việt Nam, nơi ghi dấu những sự kiện lịch sử đặc biệt.', 2009, 20, 1, 14),

(N'Hỏi đáp về những ngôi chùa …ở VN', N'', '9781234567466', N'Cuốn sách này giới thiệu các ngôi chùa nổi tiếng ở Việt Nam, những di sản văn hóa và lịch sử lâu đời của dân tộc.', 2009, 20, 1, 14),

(N'Hỏi đáp về đường Trường Sơn…đường HCM', N'', '9781234567467', N'Cuốn sách cung cấp các câu hỏi và đáp án về con đường huyền thoại Trường Sơn và đường Hồ Chí Minh trong thời kỳ chiến tranh.', 2009, 20, 1, 14);
