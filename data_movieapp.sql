CREATE DATABASE [DB_MOVIEAPP]
GO
USE [DB_MOVIEAPP]
GO
/****** Object:  Table [dbo].[MV_MOVIE]    Script Date: 15/11/2022 3:27:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MV_MOVIE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](1200) NULL,
	[Avartar] [nvarchar](500) NULL,
	[ReleaseDate] [datetime] NULL,
	[RunningTime] [int] NULL,
	[IsDelete] [bit] NULL,
	[DeleteDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MV_NumberUsersLike]    Script Date: 15/11/2022 3:27:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MV_NumberUsersLike](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdMovie] [int] NOT NULL,
	[IsLike] [bit] NULL,
	[LikeDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_USERS]    Script Date: 15/11/2022 3:27:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_USERS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[IsDisabled] [bit] NULL,
	[IsDelete] [bit] NULL,
	[DeleteDate] [datetime] NULL,
 CONSTRAINT [PK__PS_USERS__3214EC0762885500] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MV_MOVIE] ON 

INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (2, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (3, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (4, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (5, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (6, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (7, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (8, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (9, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (10, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (11, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (12, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (13, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (14, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (15, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (16, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (17, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (18, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (19, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (20, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (21, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (22, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (23, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (24, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (25, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (26, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (27, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (28, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (29, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (30, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (31, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (32, N'BLACK ADAM', N'Dwayne Johnson sẽ góp mặt trong tác phẩm hành động - phiêu lưu mới của New Line Cinema, mang tên BLACK ADAM. Đây là bộ phim đầu tiên trên màn ảnh rộng khai thác câu chuyện của siêu anh hùng DC này, dưới sự sáng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm tù với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải phóng khỏi nấm mồ chết chóc của mình, mang tới thế giới hiện đại một kiểu nhận thức về công lý hoàn toàn mới', N'/Images/BLACKADAM.jpg', CAST(N'2022-10-21T00:00:00.000' AS DateTime), 125, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (33, N'CHIẾN BINH BÁO ĐEN 2: WAKANDA BẤT DIỆT', N'Nữ hoàng Ramonda, Shuri, M’Baku, Okoye và Dora Milaje chiến đấu để bảo vệ quốc gia của họ khỏi sự can thiệp của các thế lực thế giới sau cái chết của Vua T’Challa. Khi người Wakanda cố gắng nắm bắt chương tiếp theo của họ, các anh hùng phải hợp tác với nhau với sự giúp đỡ của War Dog Nakia và Everett Ross và tạo ra một con đường mới cho vương quốc Wakanda.', N'/Images/WAKANDA2.jpg', CAST(N'2022-11-10T00:00:00.000' AS DateTime), 161, NULL, NULL)
INSERT [dbo].[MV_MOVIE] ([Id], [Title], [Description], [Avartar], [ReleaseDate], [RunningTime], [IsDelete], [DeleteDate]) VALUES (34, N'ĐẶC VỤ XUYÊN QUỐC GIA', N'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung', N'/Images/datvuxuyenquocgia.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[MV_MOVIE] OFF
GO
SET IDENTITY_INSERT [dbo].[MV_NumberUsersLike] ON 

INSERT [dbo].[MV_NumberUsersLike] ([Id], [IdUser], [IdMovie], [IsLike], [LikeDate]) VALUES (1, 2, 3, 0, CAST(N'2022-11-14T19:32:58.450' AS DateTime))
INSERT [dbo].[MV_NumberUsersLike] ([Id], [IdUser], [IdMovie], [IsLike], [LikeDate]) VALUES (2, 2, 2, 1, CAST(N'2022-11-14T19:37:38.533' AS DateTime))
INSERT [dbo].[MV_NumberUsersLike] ([Id], [IdUser], [IdMovie], [IsLike], [LikeDate]) VALUES (3, 5, 2, 1, CAST(N'2022-11-14T19:37:25.587' AS DateTime))
INSERT [dbo].[MV_NumberUsersLike] ([Id], [IdUser], [IdMovie], [IsLike], [LikeDate]) VALUES (4, 5, 3, 1, CAST(N'2022-11-14T19:37:06.197' AS DateTime))
SET IDENTITY_INSERT [dbo].[MV_NumberUsersLike] OFF
GO
SET IDENTITY_INSERT [dbo].[PS_USERS] ON 

INSERT [dbo].[PS_USERS] ([Id], [UserName], [Password], [Email], [IsDisabled], [IsDelete], [DeleteDate]) VALUES (1, N'drisbui', N'123@123', N'drisbui@gmail.com', 1, NULL, NULL)
INSERT [dbo].[PS_USERS] ([Id], [UserName], [Password], [Email], [IsDisabled], [IsDelete], [DeleteDate]) VALUES (2, N'drisbui1', N'111111', N'drisbui1@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[PS_USERS] ([Id], [UserName], [Password], [Email], [IsDisabled], [IsDelete], [DeleteDate]) VALUES (3, N'hoaiThuong', N'123456', N'abc@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[PS_USERS] ([Id], [UserName], [Password], [Email], [IsDisabled], [IsDelete], [DeleteDate]) VALUES (4, N'MinhHoang', N'123456', N'abcd@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[PS_USERS] ([Id], [UserName], [Password], [Email], [IsDisabled], [IsDelete], [DeleteDate]) VALUES (5, N'hoangha', N'123456', N'abcdf@gmail.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PS_USERS] OFF
GO
ALTER TABLE [dbo].[MV_NumberUsersLike]  WITH CHECK ADD  CONSTRAINT [FK_MovieLike] FOREIGN KEY([IdMovie])
REFERENCES [dbo].[MV_MOVIE] ([Id])
GO
ALTER TABLE [dbo].[MV_NumberUsersLike] CHECK CONSTRAINT [FK_MovieLike]
GO
ALTER TABLE [dbo].[MV_NumberUsersLike]  WITH CHECK ADD  CONSTRAINT [FK_UserLike] FOREIGN KEY([IdUser])
REFERENCES [dbo].[PS_USERS] ([Id])
GO
ALTER TABLE [dbo].[MV_NumberUsersLike] CHECK CONSTRAINT [FK_UserLike]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetListMovie]    Script Date: 15/11/2022 3:27:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GetListMovie]
    @Id INT = NULL,
	@KeySearch NVARCHAR(500),
	@ReleaseDateTo DATETIME,
	@ReleaseDateFrom DATETIME,
    @PageNumber INT = 1,
    @RowspPage INT = 10,
    @SortName VARCHAR(20) = 'ReleaseDate',
    @SortDirection VARCHAR(4) = 'DESC'
AS
BEGIN
    DECLARE @SttTu INT = (@PageNumber - 1) * @RowspPage + 1,
            @SttDen INT = @PageNumber * @RowspPage,
            @Total INT = 0;
	SET @ReleaseDateTo = CAST(@ReleaseDateTo + ' 00:00:00' AS DATETIME);
	SET @ReleaseDateFrom = CAST(@ReleaseDateFrom + ' 12:00:00' AS DATETIME);
    
	DECLARE @query NVARCHAR(MAX);
    SET @query
        = N'SELECT tmp.ID, STTRow = ROW_NUMBER() OVER (ORDER BY tmp.' + @SortName + N' ' + @SortDirection
          + N') FROM( 					  SELECT DISTINCT mv.Id'  + (CASE WHEN @SortName <> 'Id' THEN ' ,mv.' + @SortName + ' '
                                                 ELSE ' ' END ) + N'FROM dbo.[MV_MOVIE] mv	'
          + N' WHERE IsNULL(mv.IsDelete, 0) = 0 ' 
		  + CASE WHEN @Id IS NOT NULL THEN ' AND mv.Id = @Id ' ELSE '' END 
		  + CASE WHEN @KeySearch IS NOT NULL THEN ' AND mv.Title like N''%'+@KeySearch+'%'' ' ELSE '' END 
		  + CASE WHEN @ReleaseDateTo IS NOT NULL THEN ' AND mv.ReleaseDate >=  @ReleaseDateTo ' ELSE '' END 
		  + CASE WHEN @ReleaseDateFrom IS NOT NULL THEN ' AND mv.ReleaseDate <=  @ReleaseDateFrom ' ELSE '' END 
		  
		  + N' ) AS tmp';
    /*Get list ID*/

    DECLARE @tbID TABLE
    (
        Id INT,
        STTRow INT
    );
    INSERT INTO @tbID
    EXECUTE sp_executesql @query, 
						N'@Id INT,
						@KeySearch NVARCHAR(500),
						@ReleaseDateTo DATETIME,
						@ReleaseDateFrom DATETIME', 
						@Id,
						@KeySearch,
						@ReleaseDateTo ,
						@ReleaseDateFrom;
    SET @Total =(SELECT COUNT(Id) FROM @tbID);
	IF(@PageNumber > 0 AND @RowspPage > 0)
		DELETE @tbID WHERE STTRow < @SttTu OR STTRow > @SttDen
	
    SELECT 
          
           mv.Id,  
		   mv.Title,
           mv.ReleaseDate,
           mv.RunningTime,          
           mv.Avartar,
           mv.Description,
           Total = @Total
    FROM dbo.MV_MOVIE mv
        INNER JOIN @tbID tb ON mv.Id = tb.Id
		

END;
GO
