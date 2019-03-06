/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
MERGE INTO Doctor AS Target
USING (VALUES 
(1, 'Rafiq', 'Mohammad', '19/12/1974', 'MBBS'),
(2, 'Salm', 'Mohammad', '29/10/1954', 'MBBS'),
(3, 'Jobbar', 'Mohammad', '7/12/1967', 'FCPS')
)
AS Source (DoctorID, LastName, FirstName, BirthDate, Degree)
ON Target.DoctorID = Source.DoctorID
WHEN NOT MATCHED BY TARGET THEN
INSERT (LastName, FirstName, BirthDate, Degree)
VALUES (LastName, FirstName, BirthDate, Degree);


MERGE INTO Expertise AS Target
USING (VALUES 
(1, 'Medicine'),
(2, 'ENT'),
(3, 'Gastrology')
)
AS Source (ExpertiseID, Speciality)
ON Target.ExpertiseID = Source.ExpertiseID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Speciality)
VALUES (Speciality);

GO
