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

 Date: 20/12/2018 15:32:30
*/


-- ----------------------------
-- Table structure for User_Personal_Information_Table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Personal_Information_Table]') AND type IN ('U'))
	DROP TABLE [dbo].[User_Personal_Information_Table]
GO

CREATE TABLE [dbo].[User_Personal_Information_Table] (
  [User_Personal_id] int  IDENTITY(1,1) NOT NULL,
  [Full_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Personal_website] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Document_type] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Certificates_ID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Gender] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birth_date] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Qq] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Personal_profile] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[User_Personal_Information_Table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户个人信息id',
'SCHEMA', N'dbo',
'TABLE', N'User_Personal_Information_Table',
'COLUMN', N'User_Personal_id'
GO


-- ----------------------------
-- Records of [User_Personal_Information_Table]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User_Personal_Information_Table] ON
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'25', N'zhaiwenqiang', N'qwqwqw', N'qwqw', N'qwqw', N'男', N'wqw', N'', N'                                                
                        
                        ', N'翟文强')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'26', N'q', N'q', N'q', N'q', N'q', N'q', N'q', N'q', NULL)
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强6')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'33', N'1', N'2', N'3', N'4', N'男', N'5', N'6', N'                        
7         ', N'李漷方')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'qwewqewq')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'37', N'123456', N'www.baidu.com', N'学生证', N'1702773111', N'男', N'1999-07-12', N'123456789', N'                                                
                        123456
                        ', N'123456')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'1030', N'翟文强', N'www.baidu.com', N'学生证', N'1702773102', N'男', N'1999-07-12', N'1430495506', N'                        
          无              ', N'翟文强7')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强4')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'yyyyyy')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Personal_Information_Table] ([User_Personal_id], [Full_name], [Personal_website], [Document_type], [Certificates_ID], [Gender], [Birth_date], [Qq], [Personal_profile], [name]) VALUES (N'35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'张三')
GO

SET IDENTITY_INSERT [dbo].[User_Personal_Information_Table] OFF
GO

