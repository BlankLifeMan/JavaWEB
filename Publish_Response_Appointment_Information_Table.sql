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

 Date: 20/12/2018 15:30:27
*/


-- ----------------------------
-- Table structure for Publish_Response_Appointment_Information_Table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Publish_Response_Appointment_Information_Table]') AND type IN ('U'))
	DROP TABLE [dbo].[Publish_Response_Appointment_Information_Table]
GO

CREATE TABLE [dbo].[Publish_Response_Appointment_Information_Table] (
  [Appointment_information_name] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Participants_name] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Publish_Response_Appointment_Information_Table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'约会信息id',
'SCHEMA', N'dbo',
'TABLE', N'Publish_Response_Appointment_Information_Table',
'COLUMN', N'Appointment_information_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户个人信息name',
'SCHEMA', N'dbo',
'TABLE', N'Publish_Response_Appointment_Information_Table',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'响应人name',
'SCHEMA', N'dbo',
'TABLE', N'Publish_Response_Appointment_Information_Table',
'COLUMN', N'Participants_name'
GO


-- ----------------------------
-- Records of [Publish_Response_Appointment_Information_Table]
-- ----------------------------
INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'qweqw', N'翟文强', NULL)
GO

INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'qweqw', N'qweqwe', NULL)
GO

INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'1', N'翟文强', NULL)
GO

INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'2018-12-05', N'翟文强', NULL)
GO

INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'2018-12-05', N'翟文强7', NULL)
GO

INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'2018-12-20', N'123456', NULL)
GO

INSERT INTO [dbo].[Publish_Response_Appointment_Information_Table]  VALUES (N'2018-12-23', N'123456', NULL)
GO

