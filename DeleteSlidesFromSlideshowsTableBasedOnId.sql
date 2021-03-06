/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


/* DO USEFUL STUFF HERE */

SELECT TOP 1000 *
FROM AgentStudio.Slideshows.Slideshows;

DELETE FROM AgentStudio.Slideshows.Slideshows
WHERE Id IN( 53, 54, 55, 56 );

SELECT TOP 1000 *
FROM AgentStudio.Slideshows.Slideshows;



/* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
 ROLLBACK TRAN

/* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
-- COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH