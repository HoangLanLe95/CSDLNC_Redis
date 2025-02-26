INSERT INTO Roles (Name, Description, CreatedAt, UpdatedAt) VALUES ('Admin', 'Quản trị viên hệ thống', '2024-11-20 14:16:06', '2024-11-20 14:16:06');
INSERT INTO Roles (Name, Description, CreatedAt, UpdatedAt) VALUES ('Độc giả', 'Người dùng thông thường', '2024-11-20 14:16:06', '2024-11-20 14:16:06');
INSERT INTO Roles (Name, Description, CreatedAt, UpdatedAt) VALUES ('Thủ thư', 'Nhân viên thủ thư', '2024-11-20 14:16:06', '2024-11-20 14:16:06');

INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('string', 'string', 'string', 'string', '1', '1', '2024-11-20 14:16:19', '2024-11-26 16:18:56');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('456 Nguyễn Huệ', 'Hồ Chí Minh', 'Quận 1', '700000', '1', '0', '2024-11-20 14:16:19', '2024-11-20 14:16:19');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('789 Đồng Khởi', 'Hà Nội', 'Hoàn Kiếm', '100000', '2', '1', '2024-11-20 14:16:19', '2024-11-20 14:16:19');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('Số 02, hẻm 123, đường 3/2', 'Cần Thơ', 'đường 3/2', '123', '21', '1', '2024-11-26 15:42:24', '2024-11-26 15:42:43');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('Số 01', 'Cần Thơ', 'Cái Răng', '123', '21', '0', '2024-11-26 15:43:12', '2024-11-26 15:43:12');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('Số 01', 'Cần Thơ', 'Cái Răng', '123', '22', '0', '2024-11-26 15:50:40', '2024-11-26 16:23:47');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('Số 02345', 'Cần Thơ', 'Cái Răng', '123', '22', '0', '2024-11-26 16:12:09', '2024-11-26 16:12:17');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('Số 01', 'Cần Thơ', 'Cái Răng', '123', '22', '0', '2024-11-26 16:27:26', '2024-11-26 16:27:26');
INSERT INTO Addresses (Street, City, District, PostalCode, UserId, IsDefault, CreatedAt, UpdatedAt) VALUES ('Số 02345', 'Cần Thơ', 'Cái Răng', '123', '22', '1', '2024-11-26 16:27:40', '2024-11-26 16:27:40');

INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('User02_Admin', 'User02@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Trần Thị User1', 'user1@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:24');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lê Văn Manager', 'manager@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-12-14 03:34:02');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('usertest_add', 'usertest_add@example.com', 'password', 2, 1, '2024-11-26 15:15:04', '2024-12-14 03:34:09');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('User01_user', '111@gmail.com', 'password', 2, 1, '2024-11-26 15:18:58', '2024-11-26 15:27:04');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('User03', 'User03@gmail.com', 'password', 2, 1, '2024-11-26 15:41:40', '2024-12-14 03:34:14');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('User04(1)', 'User04@gmail.com', 'password', 2, 1, '2024-11-26 15:50:18', '2024-12-14 03:34:27');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nguyễn Văn A', 'nguyenvana@gmail.com', 'password', 2, 1, '2024-11-26 17:16:24', '2024-11-26 17:16:24');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Hades_The_Warrior', 'hades@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Luna_StarSeeker', 'luna@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Aurora_Queen', 'aurora@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Titan_Jack', 'titan_jack@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sophie_Goldstar', 'sophie_goldstar@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Echo_Blaze', 'echo_blaze@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nova_Storm', 'nova_storm@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Phoenix_Flame', 'phoenix_flame@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Zephyr_Windrider', 'zephyr@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Raven_Darkwing', 'raven_darkwing@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lysandra_The_Seer', 'lysandra@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Artemis_Lightbearer', 'artemis@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Vera_Windwalker', 'vera_windwalker@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Falcon_Shadow', 'falcon_shadow@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('John Doe', 'john.doe@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jane Smith', 'jane.smith@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Michael Johnson', 'michael.johnson@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Emily Davis', 'emily.davis@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('David Wilson', 'david.wilson@example.com', 'password123', 2, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sophia Brown', 'sophia.brown@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('James Lee', 'james.lee@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Isabella Martinez', 'isabella.martinez@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Liam Anderson', 'liam.anderson@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Olivia Thomas', 'olivia.thomas@example.com', 'password123', 3, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ethan Taylor', 'ethan.taylor@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mason Harris', 'mason.harris@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ava Clark', 'ava.clark@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Logan Lewis', 'logan.lewis@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Charlotte Walker', 'charlotte.walker@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Amelia Hall', 'amelia.hall@example.com', 'password123', 1, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Henry Allen', 'henry.allen@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mila Young', 'mila.young@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Harper King', 'harper.king@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jackson Scott', 'jackson.scott@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lucas Adams', 'lucas.adams@example.com', 'password123', 3, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Chloe Nelson', 'chloe.nelson@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Benjamin Carter', 'benjamin.carter@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lily Mitchell', 'lily.mitchell@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Samuel Perez', 'samuel.perez@example.com', 'password123', 2, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Aria Roberts', 'aria.roberts@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Zoe Turner', 'zoe.turner@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ella Phillips', 'ella.phillips@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jack Campbell', 'jack.campbell@example.com', 'password123', 1, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sophia Evans', 'sophia.evans@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ryan Edwards', 'ryan.edwards@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Aiden Collins', 'aiden.collins@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ella Stewart', 'ella.stewart@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Maya Morris', 'maya.morris@example.com', 'password123', 2, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mason Rogers', 'mason.rogers@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Gabriella Cooper', 'gabriella.cooper@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nathan Ward', 'nathan.ward@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Victoria Brooks', 'victoria.brooks@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Evelyn Foster', 'evelyn.foster@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sebastian Graham', 'sebastian.graham@example.com', 'password123', 2, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Landon Diaz', 'landon.diaz@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mila Griffin', 'mila.griffin@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Chase Bennett', 'chase.bennett@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nora Shaw', 'nora.shaw@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Joshua Wood', 'joshua.wood@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Victoria Lee', 'victoria.lee@example.com', 'password123', 2, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Hudson Morgan', 'hudson.morgan@example.com', 'password123', 1, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Savannah Wright', 'savannah.wright@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Carter King', 'carter.king@example.com', 'password123', 2, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Madison Carter', 'madison.carter@example.com', 'password123', 1, 0, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Matthew Mitchell', 'matthew.mitchell@example.com', 'password123', 3, 1, '2024-12-14 02:05:55', '2024-12-14 02:05:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nguyễn Van A', 'nguyenvana@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Tr?n Th? B', 'tranthib@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lê Hoàng C', 'lehoangc@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Phạm Hồng D', 'phamhongd@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Vu Minh E', 'vuminhe@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ngô Thanh F', 'ngothanhf@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Hoàng Thị G', 'hoangthig@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lý Quốc H', 'lyquoch@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Bùi Văn I', 'buivani@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ðặng Thu J', 'dangthuj@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('James Smith', 'jamessmith@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Emily Johnson', 'emilyjohnson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Michael Brown', 'michaelbrown@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jessica Davis', 'jessicadavis@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('David Wilson', 'davidwilson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sarah Moore', 'sarahmoore@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('William Taylor', 'williamtaylor@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sophia Anderson', 'sophiaanderson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Henry Thomas', 'henrythomas@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mia Jackson', 'miajackson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lâm Hảii Nam', 'lamhainam@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Truong Ngọc Anh', 'truongngocanh@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ðoàn Phúc Long', 'doanphuclong@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nguy?n Hoàng Mai', 'nguyenhoangmai@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Phan Van Kh?i', 'phanvankhai@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Đỗ Thị Mỹ', 'dothilan@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Huỳnh Minh Tú', 'huynhminhtu@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Trịnh Thu Thủy', 'trinhtthuy@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Hồ Văn Bình', 'hovanbinh@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Phạm Khánh Ngọc', 'phamkngoc@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jessica White', 'jessicawhite@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Benjamin Lee', 'benjaminlee@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Emma Harris', 'emmaharris@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jack Martin', 'jackmartin@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lily Thompson', 'lilythompson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Daniel Garcia', 'danielgarcia@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Isabella Martinez', 'isabellamartinez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ethan Robinson', 'ethanrobinson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ava Clark', 'avaclark@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Noah Rodriguez', 'noahrodriguez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Charlotte Lewis', 'charlottelewis@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lucas Walker', 'lucaswalker@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ella Hall', 'ellahall@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Liam Allen', 'liamallen@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Chloe Young', 'chloeyoung@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Matthew King', 'matthewking@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Grace Wright', 'gracewright@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Oliver Scott', 'oliverscott@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Amelia Green', 'ameliagreen@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:39:55', '2024-12-14 09:39:55');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Nguyễn Thị Tâm', 'nguyenthitam@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Trần Minh Tú', 'tranminhtu@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lê Tiến Dũng', 'letiendung@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Phạm Ngọc Hoa', 'phamngoclan@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Vũ Kim Anh', 'vukimanh@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ngô Ðang Khoa', 'ngodangkhoa@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Hoàng Lý Bình', 'hoanglybinh@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lý Mai Anh', 'lymaianh@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Bùi H?nh Phúc', 'buihanhphuc@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ð?ng Thi?n Nhân', 'dangthiennhan@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Aiden Moore', 'aidenmoore@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Charlotte Lee', 'charlottelee@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Elijah Perez', 'elijahperez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sophia Harris', 'sophiaharris@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('James Wilson', 'jameswilson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Benjamin Walker', 'benjaminwalker@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mia Moore', 'miamoore@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jack White', 'jackwhite@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Noah Taylor', 'noahtaylor@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Liam Anderson', 'liamanderson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Amelia Clark', 'ameliaclark@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lucas Martinez', 'lucasmartinez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Emma Rodriguez', 'emmarodriguez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Henry Gonzalez', 'henrygonzalez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Isabella Perez', 'isabellaperez@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('David Miller', 'davidmiller@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Ethan Moore', 'ethanmoore@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mason Clark', 'masonclark@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Grace Robinson', 'gracerobinson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Oliver Walker', 'oliverwalker@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Harper Scott', 'harperscott@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Avery Green', 'averygreen@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sebastian Adams', 'sebastianadams@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Aria Nelson', 'arianelson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Zoe Mitchell', 'zoemitchell@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jacob Thomas', 'jacobthomas@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Aidan Moore', 'aidanmoore@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Charlotte Jackson', 'charlottejackson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jackson White', 'jacksonwhite@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Mila Harris', 'milaharris@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Jaxon King', 'jaxonking@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Lila Thompson', 'lilathompson@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Logan Green', 'logangreen@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Sofia Roberts', 'sofiaroberts@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Chase Lee', 'chaslee@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Maddox Carter', 'maddoxcarter@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES ('Peyton Young', 'peytonyoung@example.com', 'hashed_password_here', 2, 1, '2024-12-14 09:41:00', '2024-12-14 09:41:00');

INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) 
VALUES 
('Võ Thị Thanh Thảo', 'vothithanhthao@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Lày A Cẩu', 'laya@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Bùi Mạnh Quốc Huy', 'buimanhquochuy@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Lê Thị Mai', 'lethimai@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Trần Kim Ngọc', 'trankimngoc@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Lai Như Quỳnh', 'lainhuquynh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Đặng Ngọc Thanh Loan', 'dangngocthanhloan@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Lê Thị Đào', 'lethidao@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Phạm Đoàn Minh Hiếu', 'phamdoanminhieu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Cao Ngọc Phương Trinh', 'caongocphuongtrinh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Đỗ Thị Thùy Dương', 'dothithuyduong@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Nguyễn Thị Phương', 'nguyenthiphuong@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Nguyễn Thị Minh Hằng', 'nguyenthiminhhang@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Nguyễn Thị Thanh Tuyền', 'nguyenthithantuyen@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Cao Kim Thảo Trinh', 'caokimthaotrinh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Huỳnh Thị Thùy Dương', 'huynhthithuyduong@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Trần Duy Lâm', 'tranduylam@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Nguyễn Thị Thanh Hồng', 'nguyenthithanhhong@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Nguyễn Thị Thúy Hằng (65)', 'nguyenthithuyhang65@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Trịnh Thị Hải Yến', 'trinhthihaiyen@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
('Kịt Trà Mi', 'kittrami@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');

INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES 
(N'Phan Đức Anh', 'phan.duc.anh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Ngọc Quỳnh Anh', 'pham.ngoc.quynh.anh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Lê Hoàng Anh', 'nguyen.le.hoang.anh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phan Thị Phương Anh', 'phan.thi.phuong.anh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Quốc Bảo', 'huynh.quoc.bao@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thái Bảo', 'nguyen.thai.bao@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thị Ngọc Châu', 'nguyen.thi.ngoc.chau@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đoàn Tấn Dũng', 'doan.tan.dung@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Phan Hạnh Duyên', 'tran.phan.hanh.duyen@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Huỳnh Thanh Hà', 'nguyen.huynh.thanh.ha@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thị Gia Hân', 'nguyen.thi.gia.han@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Nguyên Thùy Hằng', 'tran.nguyen.thuy.hang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Quốc Hiếu', 'nguyen.quoc.hieu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Ngô Gia Hoàng', 'ngo.gia.hoang@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đỗ Bình Nguyên Khang', 'do.binh.nguyen.khang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phan Mai Bảo Lam', 'phan.mai.bao.lam@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Ngô Võ Thành Nam', 'ngo.vo.thanh.nam@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Kim Ngọc', 'tran.kim.ngoc@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trương Huỳnh Ngọc Hân', 'truong.huynh.ngoc.han@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Đỗ Thiên Phát', 'nguyen.do.thien.phat@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Sỹ Anh Quân', 'pham.sy.anh.quan@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Đức Quỳnh', 'nguyen.duc.quynh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Tấn Tài', 'nguyen.tan.tai@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thành Tài', 'nguyen.thanh.tai@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hoàng Thắng', 'nguyen.hoang.thang@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Đăng Quốc Thịnh', 'le.dang.quoc.thinh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Võ Quốc Thịnh', 'vo.quoc.thinh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đỗ Bùi Phương Thu', 'do.bui.phuong.thu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Huy Vũ', 'nguyen.huy.vu@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Lê Tường Vy', 'nguyen.le.tuong.vy@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Thảo Vy', 'tran.thao.vy@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đỗ Tường Vy', 'do.tuong.vy@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hải Đăng', 'nguyen.hai.dang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trương Hoàng Ân', 'truong.hoang.an@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Quỳnh Anh', 'tran.quynh.anh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Huỳnh Anh', 'le.huynh.anh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lương Tiến Công', 'luong.tien.cong@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Bùi Lê Duy', 'bui.le.duy@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Khánh Duy', 'nguyen.khánh.duy@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Trương Vy Hạ', 'huynh.truong.vy.ha@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Quách Đỗ Văn Hà', 'quach.do.van.ha@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Gia Huy', 'tran.gia.huy@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Nguyễn Phúc Khang', 'hoang.nguyen.phuc.khang@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Huỳnh Khang', 'nguyen.huynh.khang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Anh Khoa', 'nguyen.anh.khoa@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Đăng Khoa', 'nguyen.dang.khoa@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Cao Khánh Linh', 'cao.khanh.linh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phan Thị Phương Linh', 'phan.thi.phuong.linh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Tấn Lộc', 'nguyen.tan.loc@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Ngô Thanh Mến', 'pham.ngo.thanh.men@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đinh Trần Tuấn Minh', 'dinh.tran.tuan.minh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Bùi Lâm Bảo Ngân', 'bui.lam.bao.ngan@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Nguyễn Phương Nghi', 'tran.nguyen.phuong.nghi@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Gia Nghĩa', 'le.gia.nghia@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đặng Bích Ngọc', 'dang.bich.ngoc@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Bùi Hoàng Khánh Ngọc', 'bui.hoang.khanh.ngoc@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Châu Trần Phương Ngọc', 'chau.tran.phuong.ngoc@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Ngọc Tuyết Nhi', 'nguyen.ngoc.tuyet.nhi@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Thị Huỳnh Như', 'pham.thi.huynh.nhu@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Gia Phúc', 'nguyen.gia.phuc@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Lê Lan Phương', 'tran.le.lan.phuong@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Trần Phương Quỳnh', 'nguyen.tran.phuong.quynh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thị Mai Quỳnh', 'nguyen.thi.mai.quynh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Dương Toàn Thắng', 'nguyen.duong.toan.thang@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Ngọc Minh Thi', 'le.ngoc.minh.thi@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Ngọc Minh Thơ', 'le.ngoc.minh.tho@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Lê Ánh Thư', 'tran.le.anh.thu@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Đỗ Minh Tiến', 'nguyen.do.minh.tien@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Minh Triết', 'tran.minh.triet@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Mai Phú Trọng', 'mai.phu.trong@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Minh Đức', 'hoang.minh.duc@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Ngọc Bảo Anh', 'tran.ngoc.bao.anh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Ngô Hoàng Tuấn Anh', 'ngo.hoang.tuan.anh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Thị Khánh Bang', 'tran.thi.khanh.bang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12')
(N'Trương Hoàng Gia Bảo', 'truong.hoang.gia.bao@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Huỳnh Gia Bảo', 'nguyen.huynh.gia.bao@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Tăng Gia Bảo', 'tang.gia.bao@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thùy Dung', 'nguyen.thuy.dung@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đoàn Thanh Duy', 'doan.thanh.duy@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Minh Hùng', 'hoang.minh.hung@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đỗ Gia Hưng', 'do.gia.hung@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phan Hoàng Nam Khánh', 'phan.hoang.nam.khanh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Văn Thiên Khoa', 'nguyen.van.thien.khoa@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đặng Nhã Lil', 'dang.nha.lil@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Minh Ngọc', 'tran.minh.ngoc@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hồng Ngọc', 'nguyen.hong.ngoc@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Thảo Nhi', 'tran.thao.nhi@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trương Tấn Phúc', 'truong.tan.phuc@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phan Phú Quý', 'phan.phu.quy@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đỗ Đức Sang', 'do.duc.sang@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Tôn Thành', 'nguyen.ton.thanh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hoàng Phúc Thiên', 'nguyen.hoang.phuc.thien@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Ngọc Anh Thư', 'nguyen.ngoc.anh.thu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Thu Hà', 'tran.thu.ha@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hoài Thuận', 'nguyen.hoai.thuan@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Nhật Trường', 'nguyen.nhat.truong@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Ngô Quang Tuấn', 'ngo.quang.tuan@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Võ Minh Đăng', 'vo.minh.dang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Việt Anh', 'pham.viet.anh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Mai Hà Thiên Bảo', 'mai.ha.thien.bao@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Dương Khánh Duy', 'huynh.duong.khanh.duy@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trịnh Quang Hà', 'trinh.quang.ha@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Phan Gia Hân', 'tran.phan.gia.han@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Quốc Hưng', 'le.quoc.hung@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Cù Thị Ngọc Huyền', 'cu.thi.ngoc.huyen@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Hoàng Khang', 'le.hoang.khang@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trương Nguyễn Đăng Khoa', 'truong.nguyen.dang.khoa@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Thiên Kim', 'le.thien.kim@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Phúc Linh', 'huynh.phuc.linh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Hoàng Long', 'tran.hoang.long@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hoàng Long', 'nguyen.hoang.long@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trịnh Thảo My', 'trinh.thao.my@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Hoàng Nguyên', 'le.hoang.nguyen@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Ngọc Nhi', 'le.ngoc.nhi@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Phước Sỹ Phú', 'hoang.phuoc.sy.phu@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Trần Hạnh Phúc', 'pham.tran.hanh.phuc@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hoàng Quân', 'nguyen.hoang.quan@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Đăng Quốc Tài', 'tran.dang.quoc.tai@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Dương Phúc Thành', 'nguyen.duong.phuc.thanh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Quang Thành', 'le.quang.thanh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Thị Kim Thanh', 'hoang.thi.kim.thanh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Ngọc Phúc Thịnh', 'nguyen.ngoc.phuc.thinh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Nguyên Thanh Thơ', 'hoang.nguyen.thanh.tho@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Trần Minh Thư', 'nguyen.tran.minh.thu@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đỗ Lê Anh Thư', 'do.le.anh.thu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Minh Triết', 'hoang.minh.triet@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Như Tuấn', 'le.nhu.tuan@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Thanh Uyên', 'tran.thanh.uyen@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Sĩ Định', 'pham.si.dinh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thị Lan Anh', 'nguyen.thi.lan.anh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Ngọc Châu', 'pham.ngoc.chau@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Quang Dũng', 'nguyen.quang.dung@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Quang Hùng Dũng', 'le.quang.hung.dung@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Ngọc Dũng', 'huynh.ngoc.dung@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Hải Dương', 'tran.hai.duong@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Phạm Huỳnh Thùy Dương', 'pham.huynh.thuy.duong@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12') ,
(N'Vũ Đình Hiếu', 'vu.dinh.hieu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Phùng Mai Hoàng', 'tran.phung.mai.hoang@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hữu Khải', 'nguyen.huu.khai@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Huỳnh Minh Khang', 'nguyen.huynh.minh.khang@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Đinh Quốc Khánh', 'dinh.quoc.khanh@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hoàng Lê Phương Linh', 'hoang.le.phuong.linh@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Nhật Minh', 'nguyen.nhat.minh@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lương Bích My', 'luong.bich.my@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Võ Ngọc Trà My', 'vo.ngoc.tra.my@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Thị Trà My', 'nguyen.thi.tra.my@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Trang Trung Nghĩa', 'nguyen.trang.trung.nghia@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Lê Khánh Ngọc', 'huynh.le.khanh.ngoc@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Huỳnh Tâm Như', 'huynh.tam.nhu@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Ninh Thế Phong', 'ninh.the.phong@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Hồng Sơn', 'nguyen.hong.son@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Võ Nguyễn Hữu Thắng', 'vo.nguyen.huu.thang@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Anh Thư', 'tran.anh.thu@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Minh Thuận', 'nguyen.minh.thuan@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Thị Quỳnh Trân', 'tran.thi.quynh.tran@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Đăng Triết', 'le.dang.triet@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trần Quốc Trung', 'tran.quoc.trung@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Trương Quốc Vương', 'truong.quoc.vuong@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Hà Thảo Vy', 'ha.thao.vy@example.com', 'hashed_password_here', 2, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Nguyễn Ngọc Như Ý', 'nguyen.ngoc.nhu.y@example.com', 'hashed_password_here', 3, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12'),
(N'Lê Thị Thu Đông', 'le.thi.thu.dong@example.com', 'hashed_password_here', 1, 1, '2024-11-20 14:16:13', '2024-11-26 17:10:12');


INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES
(N'Lê Thị Ngọc Anh', 'LêThịNgọcAnh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thái Duy', 'NguyễnTháiDuy@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hữu Bằng', 'NguyễnHữuBằng@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Gia Bảo', 'TrầnGiaBảo@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Tống Thái Bình', 'NguyễnTốngTháiBình@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Dương Chôm', 'PhạmDươngChôm@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đoàn Nguyễn Mỹ Hằng', 'ĐoànNguyễnMỹHằng@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Huy Hào', 'NguyễnHuyHào@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Trần Minh Hiếu', 'NguyễnTrầnMinhHiếu@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Giang Văn Hoàn', 'GiangVănHoàn@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Nguyễn Khánh Hưng', 'PhạmNguyễnKhánhHưng@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Ngọc Lan Hương', 'LêNgọcLanHương@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Đức Huy', 'TrầnĐứcHuy@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Thị Thiên Kim', 'TrầnThịThiênKim@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thị Hồng Lượng', 'NguyễnThịHồngLượng@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Thái Nam', 'TrầnTháiNam@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Hoàng Ngân', 'TrầnHoàngNgân@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Anh Ngọc', 'TrầnAnhNgọc@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Cao Khôi Nguyên', 'CaoKhôiNguyên@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phan Thành Nhân', 'PhanThànhNhân@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Trung Phong', 'NguyễnTrungPhong@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Huỳnh Gia Phú', 'HuỳnhGiaPhú@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Dương Thị Ngọc Thảo', 'DươngThịNgọcThảo@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Lê Thùy Trinh', 'NguyễnLêThùyTrinh@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đỗ Vũ Đức Trung', 'ĐỗVũĐứcTrung@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lý Diệu Xuân Vy', 'LýDiệuXuânVy@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Hoàng Bảo Vy', 'HoàngBảoVy@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Văn Đạt', 'NguyễnVănĐạt@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Trần Minh Đức', 'NguyễnTrầnMinhĐức@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES
(N'Hồ Nhã Băng', 'HoNhaBang@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Sỹ Bảo', 'TranSyBao@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Trần Bảo Châu', 'NguyenTranBaoChau@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Nhật Duy', 'TranNhatDuy@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hoàng Gia', 'NguyenHoangGia@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hoàng Hùng', 'NguyenHoangHung@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Khánh Hưng', 'PhamKhanhHung@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Won Anh Huy', 'WonAnhHuy@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lee Ji Hwan', 'LeeJiHwan@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Võ Anh Kiệt', 'VoAnhKiet@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Anh Hoàng Long', 'NguyenAnhHoangLong@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Quốc Minh', 'NguyenQuocMinh@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Vũ Hoàng Nam', 'LeVuHoangNam@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Kim Ngân', 'TranKimNgan@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hà Khánh Ngọc', 'NguyenHaKhanhNgoc@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đỗ Tây Nguyễn', 'DoTayNguyen@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Huỳnh Minh Nhựt', 'NguyenHuynhMinhNhut@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Châu Huỳnh Minh Quý', 'ChauHuynhMinhQuy@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Mai An Thịnh', 'NguyenMaiAnThinh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Nguyễn Thảo Tiên', 'LeNguyenThaoTien@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thị Ánh Tuyết', 'NguyenThiAnhTuyet@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hoàng Anh Vũ', 'NguyenHoangAnhVu@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hùng Vỹ', 'NguyenHungVy@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thành Đạt', 'NguyenThanhDat@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES
(N'Tống Bá Danh', 'TongBaDanh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Văn Đức Dũng', 'LeVanDucDung@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Dương Diệu Hiền', 'NguyenDuongDieuHien@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Chấn Hưng', 'NguyenChanHung@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đỗ Đồng Hưng', 'DoDongHung@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Minh Hưng', 'TranMinhHung@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Ngọc Bảo Kha', 'LeNgocBaoKha@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Võ Thế Khang', 'VoTheKhang@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đặng Xuân Khánh', 'DangXuanKhanh@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Vĩnh Khoa', 'NguyenVinhKhoa@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trương Phạm Quỳnh Mai', 'TruongPhamQuynhMai@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Gia Mẫn', 'PhamGiaMan@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Đình Bình Minh', 'NguyenDinhBinhMinh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Việt Gia Minh', 'LeVietGiaMinh@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Bình Minh', 'PhamBinhMinh@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Trí Minh', 'LeTriMinh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đặng Trí Nguyên', 'DangTriNguyen@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Phúc Nguyên', 'NguyenPhucNguyen@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Hoàng Nhân', 'LeHoangNhan@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Huỳnh Lê Uyên Nhi', 'HuynhLeUyennhi@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Nguyễn Hoàng Phúc', 'LeNguyenHoangPhuc@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Lê Như Phúc', 'NguyenLeNhuPhuc@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Sên Liên Anh Quân', 'SenLienAnhQuan@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Lê Bảo Quyên', 'NguyenLeBaoQuyen@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Ngọc Minh Thanh', 'NguyenNgocMinhThanh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Gia Thiện', 'LeGiaThien@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hải Triều', 'NguyenHaiTrieu@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Minh Trọng', 'LeMinhTrong@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Xuân Trọng', 'PhamXuanTrong@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Trần Na Vy', 'NguyenTranNaVy@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Đình Tiến Đạt', 'TranDinhTienDat@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Vòng Chang Cao Điền', 'VongChangCaoDien@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00');
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES
(N'Hoàng Tùng Anh', 'HoangTungAnh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Võ Trần Tường Anh', 'VoTranTuongAnh@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Hồ Quỳnh Anh', 'HoQuynhAnh@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Vương Quốc Bảo', 'VuongQuocBao@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Linh Chi', 'NguyenLinhChi@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Thị Anh Dương', 'TranThiAnhDuong@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lâm Thị Thùy Dương', 'LamThiThuyDuong@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hoài Duy', 'NguyenHoaiDuy@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Dương Phúc Hậu', 'DuongPhucHau@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Seo Chi Hơn', 'SeoChiHon@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lý Ngọc Huy', 'LyNgocHuy@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Đăng Khoa', 'NguyenDangKhoa@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Thành Kiên', 'TranThanhKien@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Ngọc Lễ', 'TranNgocLe@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Lã Gia Mẫn', 'NguyenLaGiaMan@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Khánh Nguyên', 'NguyenKhanhNguyen@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đinh Thị Nhi', 'DinhThiNhi@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Hồ Thị Ái Nhi', 'HoThiAiNhi@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Đình Phát', 'TranDinhPhat@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đặng Hoàng Ngọc Phát', 'DangHoangNgocPhat@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thế Phiệt', 'NguyenThePhiet@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Gia Phúc', 'TranGiaPhuc@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thiên Phúc', 'NguyenThienPhuc@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phan Phù Tài', 'PhanPhuTai@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đinh Thị Kim Thư', 'DinhThiKimThu@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Bảo Trân', 'TranBaoTran@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phan Bảo Trúc', 'PhanBaoTruc@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Võ Lê Hà Anh Tú', 'VoLeHaAnhTu@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Mạnh Tường', 'TranManhTuong@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phùng Lan Vy', 'PhungLanVy@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Tiến Đạt', 'NguyenTienDat@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lương Tiến Đạt', 'LuongTienDat@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phạm Tấn Đạt', 'PhamTanDat@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00') ;
INSERT INTO Users (Name, Email, Password, RoleId, IsActive, CreatedAt, UpdatedAt) VALUES
(N'Phạm Việt Anh', 'PhamVietAnh@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Thị Thùy Dương', 'TranThiThuyDuong@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Quốc Duy', 'TranQuocDuy@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Khánh Hà', 'NguyenKhanhHa@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Hoàng Đức', 'NguyenHoangDuc@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'), 
(N'Nguyễn Minh Khôi', 'NguyenMinhKhoi@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Tuấn Kiệt', 'TranTuanKiet@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Lã Gia Kỳ', 'NguyenLaGiaKy@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Hoàng Lâm', 'LeHoangLam@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thanh Long', 'NguyenThanhLong@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Nguyên Gia Long', 'TranNguyenGiaLong@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lưu Kim Long', 'LuuKimLong@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lý Bảo Long', 'LyBaoLong@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Đại Nam', 'NguyenDaiNam@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Phan Thị Kim Ngân', 'PhanThiKimNgan@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Bùi Đại Phúc', 'BuiDaiPhuc@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Minh Phúc', 'NguyenMinhPhuc@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Đặng Đoàn Minh Quân', 'DangDoanMinhQuan@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Lê Tân', 'LeTan@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Bùi Ngọc Thanh Thảo', 'BuiNgocThanhThao@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Lê Châu Thiên', 'TranLeChauThien@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Ngọc Minh Thiện', 'NguyenNgocMinhThien@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Thục Uyên', 'NguyenThucUyen@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Enriquez Trần Emy Vân', 'EnriquezTranEmyVan@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Nguyễn Trương Bảo Vinh', 'NguyenTruongBaoVinh@example.com', 'hashed_password_here', 2, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Trần Huỳnh Khánh Vương', 'TranHuynhKhanhVuong@example.com', 'hashed_password_here', 3, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00'),
(N'Vũ Nguyễn Duy Đạt', 'VuNguyenDuyDat@example.com', 'hashed_password_here', 1, 1, '2024-12-24 14:00:00', '2024-12-24 14:00:00');
