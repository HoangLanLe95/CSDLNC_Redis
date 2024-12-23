USE [RedisDB]
GO

/****** Object:  Table [dbo].[BorrowRecords]    Script Date: 12/23/2024 10:16:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BorrowRecords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[BorrowDate] [datetime] NULL,
	[DueDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[IsReturned] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BorrowRecords] ADD  DEFAULT ((0)) FOR [IsReturned]
GO

ALTER TABLE [dbo].[BorrowRecords]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRecords_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO

ALTER TABLE [dbo].[BorrowRecords] CHECK CONSTRAINT [FK_BorrowRecords_Books]
GO

ALTER TABLE [dbo].[BorrowRecords]  WITH CHECK ADD  CONSTRAINT [FK_BorrowRecords_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[BorrowRecords] CHECK CONSTRAINT [FK_BorrowRecords_Users]
GO

