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

 Date: 20/12/2018 15:31:59
*/


-- ----------------------------
-- Table structure for Appointment_information_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Appointment_information_table]') AND type IN ('U'))
	DROP TABLE [dbo].[Appointment_information_table]
GO

CREATE TABLE [dbo].[Appointment_information_table] (
  [Appointment_information_id] int  IDENTITY(1,1) NOT NULL,
  [Appointment_place] nvarchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [Appointment_time] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [Appointment_theme] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Appointment_pay] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Appointment_sketch] nvarchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Appointment_information_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'约会信息id',
'SCHEMA', N'dbo',
'TABLE', N'Appointment_information_table',
'COLUMN', N'Appointment_information_id'
GO


-- ----------------------------
-- Records of [Appointment_information_table]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Appointment_information_table] ON
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'1', N'asasasa', N'sasas', N'自定义 :       aaaaa', N'1', N'sasasas', NULL)
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'2', N'南工院', N'2018-12-05', N'游戏吃饭', N'0', N'好', N'翟文强')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'3', N'212121', N'121212', N'游戏无   ', N'0', N'2121212', N'翟文强')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'4', N'qweqw', N'qweqw', N'游泳qweqw    ', N'0', N'wqeq', N'翟文强')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'7', N'123', N'2018-12-05', N'游泳   12312121   ', NULL, N'123123', N'翟文强')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'8', N'南工院', N'2018-12-20', N'唱歌       123456', N'0', N'1233455', N'123456')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'9', N'南工院', N'2018-12-23', N'唱歌      12344 ', N'0', N'xadwc', N'123456')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'1002', N'123213', N'2018-12-05', N'游戏123123', N'0', N'21321321', N'翟文强7')
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'5', N'qew', N'qweq', N'游戏       qwqw', N'0', N'qwwe', NULL)
GO

INSERT INTO [dbo].[Appointment_information_table] ([Appointment_information_id], [Appointment_place], [Appointment_time], [Appointment_theme], [Appointment_pay], [Appointment_sketch], [name]) VALUES (N'6', N'万千瓦', N'1', N'游泳       请问请问', N'0', N'请问', N'翟文强')
GO

SET IDENTITY_INSERT [dbo].[Appointment_information_table] OFF
GO

