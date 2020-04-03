/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

  /* Serenity Travel About Us Fix */

  DECLARE @BlueprintGuid                  uniqueidentifier  = NEWID( );
  DECLARE @TitleGuid                      uniqueidentifier  = NEWID( );
  DECLARE @BodyGuid                       uniqueidentifier  = NEWID( );
  DECLARE @PageGuid                       uniqueidentifier  = 'C5C2BD1E-E042-D4B2-C7A6-EA87AE5DE01E';
  DECLARE @DefaultPageTemplateZone        uniqueidentifier  = '332558B1-921B-2C41-111E-A4CBD051EBB8';
  DECLARE @DefaultWebPart                 uniqueidentifer   = '59321E2C-D44C-5BC2-6878-744C6B23D387';
  DECLARE @SiteOwnerGUID                  uniqueidentifer   = '3CB91D94-1173-43D1-B86A-FDE05B84808C';

  /* DO USEFUL STUFF HERE */

	INSERT INTO dbo.page_blueprint (
      BlueprintGuid,
      PageGuid,
      ZoneGuid,
      WebpartGuid,
      SortOrder
    )
	VALUES (
      NEWID( ),
      @BlueprintGuidCT,
      @PageGuid,
      @DefaultPageTemplateZone,
      999
    )

    INSERT INTO dbo.associable_data (
        AssociableDataGuid,
        JoinType,
        JoinGuid,
        DataType,
        DataValue,
        SortOrder,
        CreatedDate,
        CreatedBy,
        LastModified,
        ModifiedBy
      ) VALUES (
        @TitleGuid,
        'BlueprintGuid',
        @BlueprintGuid,
        'ContentTitle',
        'About Us',
        1,
        GETDATE( ),
        @SiteOwnerGUID,
        GETDATE( ),
        @SiteOwnerGUID
      ),
      (
        @BodyGuid,
        'BlueprintGuid',
        @BlueprintGuid,
        'ContentBody',
        'Enter your content here',
        2,
        GETDATE( ),
        @SiteOwnerGUID,
        GETDATE( ),
        @SiteOwnerGUID
      )

    /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
  --   COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH
