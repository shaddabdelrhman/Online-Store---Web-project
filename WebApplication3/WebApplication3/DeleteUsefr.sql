﻿-- Delete User procedure
CREATE OR ALTER PROCEDURE DeleteUser
    @user_id INT
AS
BEGIN
    DELETE FROM Users WHERE user_id = @user_id
END
GO