-- Update User procedure
CREATE OR ALTER PROCEDURE UpdateUser
    @user_id   INT,
    @user_name VARCHAR(50),
    @email     VARCHAR(50),
    @password  VARCHAR(50)
AS
BEGIN
    UPDATE Users
    SET user_name = @user_name,
        email     = @email,
        password  = @password
    WHERE user_id = @user_id
END
GO
