-- Delete Item procedure
CREATE OR ALTER PROCEDURE DeleteItem
    @Id INT
AS
BEGIN
    DELETE FROM Items WHERE Id = @Id
END
GO 