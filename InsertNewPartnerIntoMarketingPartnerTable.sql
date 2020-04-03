
/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.Marketing.Partners;

	INSERT INTO AgentStudio.Marketing.Partners
		(
			ApplicationGuid,
			Name,
			Code,
			UseForPaymentTrackingRecord,
			IsTakingPayment,
			IsReseller,
			IsEnterprise,
			IsActive,
			Guid,
			CreatedDate,
			CreatedBy
		)
		VALUES(
			'85E72FE5-DEF7-508D-C2D5-A318BD72DDF6',
			'Test Partner LLC',
			'testllc',
			1,
			1,
			1,
			0,
			1,
			'8611214E-FF93-1BC7-FC01-3C6956E70353',
			GETDATE(),
			2318398
		);

	SELECT *
	FROM AgentStudio.Marketing.Partners;

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