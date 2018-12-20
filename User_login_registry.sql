/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : SQL Server
 Source Server Version : 13004224
 Source Catalog        : SomethingAmazing
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 13004224
 File Encoding         : 65001

 Date: 20/12/2018 15:32:23
*/


-- ----------------------------
-- Table structure for User_login_registry
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User_login_registry]') AND type IN ('U'))
	DROP TABLE [dbo].[User_login_registry]
GO

CREATE TABLE [dbo].[User_login_registry] (
  [Cell_phone_number] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [User_name] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Password] nvarchar(18) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [mailbox] nvarchar(25) COLLATE Chinese_PRC_CI_AS  NULL,
  [img] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [User_login_id] int  IDENTITY(1,1) NOT NULL
)
GO

ALTER TABLE [dbo].[User_login_registry] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [User_login_registry]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User_login_registry] ON
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'123456', N'123456', N'18852009220', N'2802cea3-e877-4ff2-85f2-2bf7fe77c3cc_009b4c62e302a54e55de2d6fc44a9e3f.png', N'29')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'qwewqewq', N'123456', N'18852009081', NULL, N'23')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'yyyyyy', N'111111', N'15082482918', NULL, N'27')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'李漷方', N'123456', N'18852009081', N'ff09943c-4fed-459c-89c0-68fbab2c5f66_软件工程_二手市场.png', N'21')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强', N'123456', N'18852008092', N'e9dccbb4-ba9d-4e25-8742-b67f5431e630_009b4c62e302a54e55de2d6fc44a9e3f.png', N'6')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强1', N'123456', N'18875647364', NULL, N'11')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强2', N'1234567', N'18876543285', NULL, N'13')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强3', N'123456', N'18874635264', NULL, N'15')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强4', N'123456', N'18853657465', NULL, N'17')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强6', N'123456', N'18875849586', NULL, N'19')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'翟文强7', N'123456', N'18852009081', N'ec59d888-85a0-4c1a-9c11-e54c686ba936_009b4c62e302a54e55de2d6fc44a9e3f.png', N'1006')
GO

INSERT INTO [dbo].[User_login_registry] ([Cell_phone_number], [User_name], [Password], [mailbox], [img], [User_login_id]) VALUES (NULL, N'张三', N'123456', N'18852009081', NULL, N'25')
GO

SET IDENTITY_INSERT [dbo].[User_login_registry] OFF
GO


-- ----------------------------
-- Primary Key structure for table User_login_registry
-- ----------------------------
ALTER TABLE [dbo].[User_login_registry] ADD CONSTRAINT [PK__User_log__3213E83F4AA11B03] PRIMARY KEY CLUSTERED ([User_name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

