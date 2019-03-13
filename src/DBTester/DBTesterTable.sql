/*
   Wednesday, October 12, 20163:01:09 PM
   User: 
   Server: (local)
   Database: DBTester
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.DBTesterTable
	(
	TestID int NOT NULL IDENTITY (1, 1),
	Text nvarchar(MAX) NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.DBTesterTable ADD CONSTRAINT
	PK_DBTesterTable PRIMARY KEY CLUSTERED 
	(
	TestID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.DBTesterTable SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.DBTesterTable', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.DBTesterTable', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.DBTesterTable', 'Object', 'CONTROL') as Contr_Per 