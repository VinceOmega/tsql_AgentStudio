/****** Script for creating a table for subscription requests  ******/

/*
Name - CreateSubscriptionQueueTable
Description - Creates a table for storing the information during the Subscription Wizard Process
Original Author - Larry Stanfield
Original Publish Date - 6/20/2017

Revision History:

6/20/2017 - Larry Stanfield
Original Creation date, defined the fields and added to AgentStudio schema.


*/

/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


	/*** Creates a table withing the Support scheme for the subscription change queue ***/
	CREATE TABLE AgentStudio.Support.SubscriptionChangeQueue (
		Id 							int							NOT NULL IDENTITY (1,1) PRIMARY KEY,
		AppId 						int							NOT NULL,
		AppGuid						uniqueidentifier			NOT NULL,
		CurrentPromoCode			varchar(60)					NOT NULL,						
		CurrentPackageId			int							NOT NULL,
		CurrentFrequencyId			int							NOT NULL,
		PromoCode 					varchar(60)					NOT NULL,
		PromoCodeAcknowledgement 	bit							NOT NULL,
		PackageId					int							NOT NULL,
		PackageAcknowledgement 		bit							NOT NULL,
		FrequencyId 				int							NOT NULL,
		FrequencyAcknowledgement 	bit							NOT NULL,
		SummaryAcknowledgement		bit							NOT NULL,
		Comment 					varchar(max)				NULL,
		SelectedPromoCode			varchar(60)					NULL,
		SelectedPackage 			int							NULL,
		SelectedFrequency 			int							NULL,
		Complete 					bit							NULL,
		Guid						uniqueidentifier			NOT NULL,
		CreateDate					datetime					NOT NULL,	
		CreatedBy					int							NOT NULL,
		ModifiedDate				datetime					NULL,
		ModifiedBy					int							NULL,
		Ts							timestamp					NOT NULL
	);

	SELECT *
	FROM AgentStudio.Support.SubscriptionChangeQueue


     /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    --	ROLLBACK TRAN

		    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
    	COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH
