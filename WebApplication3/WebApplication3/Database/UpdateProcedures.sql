-- Update procedures for Users and Items

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

-- Update Item procedure
CREATE OR ALTER PROCEDURE UpdateItem
    @Id          INT,
    @name        VARCHAR(50),
    @price       VARCHAR(50),
    @img_src     VARCHAR(50),
    @description VARCHAR(50)
AS
BEGIN
    UPDATE Items
    SET name = @name,
        price = @price,
        img_src = @img_src,
        description = @description
    WHERE Id = @Id
END
GO 