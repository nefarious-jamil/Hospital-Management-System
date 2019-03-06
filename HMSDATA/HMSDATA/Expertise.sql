CREATE TABLE [dbo].[Expertise] (
    [ExpertiseID]      INT           IDENTITY (1, 1) NOT NULL,
    [Speciality] NVARCHAR (40) NOT NULL,
    PRIMARY KEY CLUSTERED ([ExpertiseID] ASC)
)