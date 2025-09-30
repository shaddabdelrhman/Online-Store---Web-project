-- Delete procedures for Users and Items

-- Delete User procedure
CREATE OR ALTER PROCEDURE DeleteUser
    @user_id INT
AS
BEGIN
    DELETE FROM Users WHERE user_id = @user_id
END
GO

-- Delete Item procedure
CREATE OR ALTER PROCEDURE DeleteItem
    @Id INT
AS
BEGIN
    DELETE FROM Items WHERE Id = @Id
END
GO 