USE [WildlifeSanctuary]
GO





--------Trigger----------
---Update Visit's feedback if no feedback is provided 
   CREATE TRIGGER SetDefaultFeedback
ON VISITS
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO VISITS (Visit_Id, Sanctuary_Id, Tourist_Id, Date_of_Visit, Feedback)
    SELECT 
        Visit_Id, 
        Sanctuary_Id, 
        Tourist_Id, 
        Date_of_Visit, 
        ISNULL(Feedback, 'No Feedback Provided') AS Feedback
    FROM INSERTED;
END;





-- SHWETA'S Trigger 
CREATE TRIGGER LogSanctuaryAreaUpdate
ON SANCTUARY
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Area)
    BEGIN
        INSERT INTO SANCTUARY_AREA_LOG (Sanctuary_Id, Old_Area, New_Area, Date_of_Change)
        SELECT INSERTED.Sanctuary_Id, DELETED.Area, INSERTED.Area, GETDATE()
        FROM INSERTED
        INNER JOIN DELETED ON INSERTED.Sanctuary_Id = DELETED.Sanctuary_Id;
    END
END;
GO
--------
CREATE TRIGGER ValidateHabitat
ON HABITAT
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @isSuitable BIT;

    SELECT @isSuitable = dbo.IsHabitatSuitable(PH_Level, Air_Purity, Humidity, Temperature)
    FROM INSERTED;

    IF @isSuitable = 0
    BEGIN
        RAISERROR ('Habitat conditions are not suitable', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO


--------

