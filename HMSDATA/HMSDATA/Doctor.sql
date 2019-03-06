CREATE TABLE [dbo].[Doctor] (
    [DoctorID]      INT           IDENTITY (1, 1) NOT NULL,
    [LastName]       NVARCHAR (50) NULL,
    [FirstName]      NVARCHAR (50) NULL,
	[BirthDate] NVARCHAR(100) NOT NULL,
    [Degree] NVARCHAR(100)  NULL,
    PRIMARY KEY CLUSTERED ([DoctorID] ASC)
)