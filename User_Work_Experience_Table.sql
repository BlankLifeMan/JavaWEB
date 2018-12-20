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

 Date: 20/12/2018 15:32:38
*/


-- ----------------------------
-- Table structure for User_Work_Experience_Table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Work_Experience_Table]') AND type IN ('U'))
	DROP TABLE [dbo].[User_Work_Experience_Table]
GO

CREATE TABLE [dbo].[User_Work_Experience_Table] (
  [User_Work_id] int  IDENTITY(1,1) NOT NULL,
  [Corporate_name] varchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [Position_title] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [Work_city] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Working_hours] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Related_technology] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Position_describe] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[User_Work_Experience_Table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户工作经历id',
'SCHEMA', N'dbo',
'TABLE', N'User_Work_Experience_Table',
'COLUMN', N'User_Work_id'
GO


-- ----------------------------
-- Records of [User_Work_Experience_Table]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User_Work_Experience_Table] ON
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'1', N'公司名称', N'职位头衔', N'江苏', N'工作时间', N'
                        ', N'
                        ', N'翟文强')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'2', NULL, NULL, NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'3', NULL, NULL, NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'4', N'qwq', N'wqw', N'wqw', N'wqwq', N'
                       qwq ', N'
                 wqw       ', NULL)
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'5', NULL, NULL, NULL, NULL, NULL, NULL, N'5')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'10', NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强4')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'12', N'1', N'2', N'3', N'4', N'5', N'6
                        ', N'李漷方')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'13', NULL, NULL, NULL, NULL, NULL, NULL, N'qwewqewq')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'15', NULL, NULL, NULL, NULL, NULL, NULL, N'yyyyyy')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'1009', NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强7')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'6', NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'7', NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'8', NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'14', NULL, NULL, NULL, NULL, NULL, NULL, N'张三')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'11', NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强6')
GO

INSERT INTO [dbo].[User_Work_Experience_Table] ([User_Work_id], [Corporate_name], [Position_title], [Work_city], [Working_hours], [Related_technology], [Position_describe], [name]) VALUES (N'16', N'qwer', N'qwer', N'南京', N'2年', N'
                        开高达gjfeae让肌肤孤儿李我【
】nuisfhvnoihcnoaaUC返回恶好吃vnaeoijcpaou，d年代初大V哦vivnpaijdijm 哦啊跑出口处【怕生下来，cdvbuuadopa''jmokc等会那vdpicm[ps,
不能绝对是ipiad''jm晕倒平安动名词
运打死哦派送票都是出口，
', N'
                        开高达', N'123456')
GO

SET IDENTITY_INSERT [dbo].[User_Work_Experience_Table] OFF
GO

