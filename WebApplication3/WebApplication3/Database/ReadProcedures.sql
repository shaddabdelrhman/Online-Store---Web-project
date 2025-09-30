-- Read procedures for Users and Items

-- Get All Users procedure
CREATE OR ALTER PROCEDURE GetAllUsers
AS
BEGIN
    SELECT * FROM Users
END
GO

-- Get All Items procedure
CREATE OR ALTER PROCEDURE GetAllItems
AS
BEGIN
    SELECT * FROM Items
END
GO 