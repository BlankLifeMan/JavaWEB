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

 Date: 20/12/2018 15:32:17
*/


-- ----------------------------
-- Table structure for User_Education_Experience_Table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Education_Experience_Table]') AND type IN ('U'))
	DROP TABLE [dbo].[User_Education_Experience_Table]
GO

CREATE TABLE [dbo].[User_Education_Experience_Table] (
  [User_Education_id] int  IDENTITY(1,1) NOT NULL,
  [School_name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Major_studied] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Admission_time] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Education] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [Related_skills] nvarchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [Achievements] nvarchar(60) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[User_Education_Experience_Table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户教育经历id',
'SCHEMA', N'dbo',
'TABLE', N'User_Education_Experience_Table',
'COLUMN', N'User_Education_id'
GO


-- ----------------------------
-- Records of [User_Education_Experience_Table]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User_Education_Experience_Table] ON
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'1', N'学院名称', N'', N'入学时间', N'学历', N'
                        ', N'
                        ', N'翟文强')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'2', NULL, NULL, NULL, NULL, NULL, NULL, N'0')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'3', N'qwe', N'qwe', N'we', N'qwe', N'
                        qwe', N'
                        we', NULL)
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'4', NULL, NULL, NULL, NULL, NULL, NULL, N'5')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'5', NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'9', NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强4')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'11', N'1', N'2', N'3', N'4', N'5                 ', N'6                 ', N'李漷方')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'12', NULL, NULL, NULL, NULL, NULL, NULL, N'qwewqewq')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'14', NULL, NULL, NULL, NULL, NULL, NULL, N'yyyyyy')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'1008', NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强7')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'6', NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'7', NULL, NULL, NULL, NULL, NULL, NULL, N'4')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'13', NULL, NULL, NULL, NULL, NULL, NULL, N'张三')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'10', NULL, NULL, NULL, NULL, NULL, NULL, N'翟文强6')
GO

INSERT INTO [dbo].[User_Education_Experience_Table] ([User_Education_id], [School_name], [Major_studied], [Admission_time], [Education], [Related_skills], [Achievements], [name]) VALUES (N'15', N'南工院', N'移动应用开发', N'2017-9-1', N'大专', N'
                        java，android', N'
                        无', N'123456')
GO

SET IDENTITY_INSERT [dbo].[User_Education_Experience_Table] OFF
GO

