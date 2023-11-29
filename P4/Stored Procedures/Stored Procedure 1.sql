-- Procedure 1: Create stored procedure to get Flora information based on Habitat ID
CREATE PROCEDURE GetFloraInfoByHabitatID
    @InputHabitatID INT,
    @OutputFloraID INT OUT,
    @OutputFloraSpecies VARCHAR(255) OUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Declare variables to store the output values
    DECLARE @FloraID INT;
    DECLARE @FloraSpecies VARCHAR(255);

    -- Retrieve Flora information based on Habitat ID
    SELECT
        @FloraID = F.Flora_Id,
        @FloraSpecies = F.Species
    FROM
        HABITAT H
    INNER JOIN
        FLORA_HABITAT FH ON H.Habitat_Id = FH.Habitat_Id
    INNER JOIN
        FLORA F ON FH.Flora_Id = F.Flora_Id
    WHERE
        H.Habitat_Id = @InputHabitatID;

    -- Assign values to output parameters
    SET @OutputFloraID = @FloraID;
    SET @OutputFloraSpecies = @FloraSpecies;
END;


--************************COMMAND TO EXECUTE Procedure 1************************
--DECLARE @HabitatID INT = 2;
--DECLARE @FloraIDResult INT;
--DECLARE @FloraSpeciesResult VARCHAR(255);

--EXEC GetFloraInfoByHabitatID
--    @InputHabitatID = @HabitatID,
--    @OutputFloraID = @FloraIDResult OUTPUT,
--    @OutputFloraSpecies = @FloraSpeciesResult OUTPUT;

---- Display the results
--PRINT 'Flora ID: ' + CAST(@FloraIDResult AS VARCHAR(10));
--PRINT 'Flora Species: ' + @FloraSpeciesResult;