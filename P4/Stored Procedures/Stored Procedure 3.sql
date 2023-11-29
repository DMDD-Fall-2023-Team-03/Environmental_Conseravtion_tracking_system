-- Procedure 3: Create stored procedure to add a new tourist
CREATE PROCEDURE AddNewTourist
    @TouristName VARCHAR(255),
    @PhoneNumber VARCHAR(20),
    @Email VARCHAR(255),
    @GuideID INT,
    @SanctuaryID INT,
    @OutputMessage VARCHAR(100) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the Guide ID and Sanctuary ID exist
    IF NOT EXISTS (SELECT 1 FROM GUIDE WHERE Guide_ID = @GuideID)
        OR NOT EXISTS (SELECT 1 FROM SANCTUARY WHERE Sanctuary_Id = @SanctuaryID)
    BEGIN
        SET @OutputMessage = 'Error: Invalid Guide ID or Sanctuary ID.';
        RETURN;
    END;

    -- Check if the phone number is valid (numeric and 10 digits)
    IF LEN(@PhoneNumber) <> 10 OR ISNUMERIC(@PhoneNumber) = 0
    BEGIN
        SET @OutputMessage = 'Error: Invalid phone number.';
        RETURN;
    END;

    -- Check if the email is valid
    IF NOT @Email LIKE '%_@__%.%'
    BEGIN
        SET @OutputMessage = 'Error: Invalid email address.';
        RETURN;
    END;

    -- Insert the new tourist into the TOURIST table
    INSERT INTO TOURIST (Tourist_Id, Guide_Id, Sanctuary_Id, Tourist_Name, Phone_Number, Email)
    VALUES (
        (SELECT ISNULL(MAX(Tourist_Id), 0) + 1 FROM TOURIST),
        @GuideID,
        @SanctuaryID,
        @TouristName,
        @PhoneNumber,
        @Email
    );

    SET @OutputMessage = 'Tourist created successfully.';
END;

--************************COMMAND TO EXECUTE Procedure 3************************
--DECLARE @TouristName VARCHAR(255) = 'John Doe New';
--DECLARE @PhoneNumber VARCHAR(20) = '1234567890';
--DECLARE @Email VARCHAR(255) = 'john.doe@hotmail.com';
--DECLARE @GuideID INT = 5; -- Replace with the actual Guide ID
--DECLARE @SanctuaryID INT = 1; -- Replace with the actual Sanctuary ID
--DECLARE @OutputMessage VARCHAR(100);
--EXEC AddNewTourist
--    @TouristName = @TouristName,
--    @PhoneNumber = @PhoneNumber,
--    @Email = @Email,
--    @GuideID = @GuideID,
--    @SanctuaryID = @SanctuaryID,
--    @OutputMessage = @OutputMessage OUTPUT;
----Display the output message
--PRINT @OutputMessage;

--select * from TOURIST where Tourist_Name='John Doe New'

