--Procedure 2: Create stored procedure to get Wildlife information based on Habitat ID
CREATE PROCEDURE GetWildlifeInfoByHabitatID
    @InputHabitatID INT,
    @OutputWildlifeID INT OUT,
    @OutputSpecies VARCHAR(50) OUT,
    @OutputType VARCHAR(50) OUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Declare variables to store the output values
    DECLARE @WildlifeID INT;
    DECLARE @Species VARCHAR(50);
    DECLARE @Type VARCHAR(50);

    -- Retrieve Wildlife information based on Habitat ID
    SELECT
        @WildlifeID = W.Wildlife_ID,
        @Species = W.Species,
        @Type = W.Wildlife_Type
    FROM
        HABITAT H
    INNER JOIN
        WILDLIFE_HABITAT WH ON H.Habitat_Id = WH.Habitat_Id
    INNER JOIN
        WILDLIFE W ON WH.Wildlife_Id = W.Wildlife_ID
    WHERE
        H.Habitat_Id = @InputHabitatID;

    -- Assign values to output parameters
    SET @OutputWildlifeID = @WildlifeID;
    SET @OutputSpecies = @Species;
    SET @OutputType = @Type;
END;


--************************COMMAND TO EXECUTE Procedure 2************************
--DECLARE @HabitatID INT = 1;
--DECLARE @WildlifeIDResult INT;
--DECLARE @SpeciesResult VARCHAR(50);
--DECLARE @TypeResult VARCHAR(50);

--EXEC GetWildlifeInfoByHabitatID
--    @InputHabitatID = @HabitatID,
--    @OutputWildlifeID = @WildlifeIDResult OUTPUT,
--    @OutputSpecies = @SpeciesResult OUTPUT,
--    @OutputType = @TypeResult OUTPUT;

---- Display the results
--PRINT 'Wildlife ID: ' + CAST(@WildlifeIDResult AS VARCHAR(10));
--PRINT 'Species: ' + @SpeciesResult;
--PRINT 'Type: ' + @TypeResult;
