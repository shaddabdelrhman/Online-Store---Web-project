-- Create Users table if it doesn't exist
IF OBJECT_ID('Users', 'U') IS NULL
BEGIN
    CREATE TABLE Users (
        UserId INT IDENTITY(1,1) PRIMARY KEY,
        user_name VARCHAR(50),
        email VARCHAR(50),
        password VARCHAR(50),
        CreatedAt DATETIME DEFAULT GETDATE()
    )
END
GO

-- Create Items table if it doesn't exist
IF OBJECT_ID('Items', 'U') IS NULL
BEGIN
    CREATE TABLE Items (
        ItemId INT IDENTITY(1,1) PRIMARY KEY,
        name VARCHAR(50),
        price VARCHAR(50),
        img_src VARCHAR(50),
        description VARCHAR(50),
        CreatedAt DATETIME DEFAULT GETDATE()
    )
END
GO

-- Create the CreateUser stored procedure
CREATE OR ALTER PROCEDURE CreateUser
    @user_name VARCHAR(50),
    @email     VARCHAR(50),
    @password  VARCHAR(50)
AS
BEGIN
    INSERT INTO Users (user_name, email, password)
    VALUES (@user_name, @email, @password)
END
GO

-- Create the CreateItem stored procedure
CREATE OR ALTER PROCEDURE CreateItem
    @name        VARCHAR(50),
    @price       VARCHAR(50),
    @img_src     VARCHAR(50),
    @description VARCHAR(50)
AS
BEGIN
    INSERT INTO Items (name, price, img_src, description)
    VALUES (@name, @price, @img_src, @description)
END
GO 