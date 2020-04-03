SELECT TOP 1000 s.AppGUID, s.AppID, s.SiteName, s.SiteOwnerGUID, s.SiteOwnerID, s.ThemeGUID, s.HomePageGUID,
s.IsActive, s.IsDeleted, s.ReceivedWelcome, s.DefaultSEOMetaTitle, s.DefaultSEOMetaKeywords, s.DefaultSEOMetaDescription,
s.CreateDate, s.PackageGUID, s.SubscriptionGUID, s.ExpirationDate, s.CreatorGUID, s.AuthNetProfileID, s.CancellationFeedback,
s.HasPayee, s.IsCancelled, s.CancelledDate, s.CanExpire, s.FrequencyId, s.PackageId, s.ThemeId, s.InTrial,
s.AgreesToTerms, s.CreatedDate, s.CreatedBy, s.FailedReqsMC, s.FailedReqsAS, s.IsTestSite, s.IsDemoSite, s.IsDeveloperSite,
s.InvoiceablePackage, s.InvoiceableAddons, s.PartnerId, h.TxGUID, h.TxID, h.TxType, h.TxAmount, h.AuthOnly, h.AppExpirationDate,
h.CCType, h.CCLast4, h.CCExpirationDate, h.BillingFirstName, h.BillingLastName, h.BillingAddress, h.BillingCity, h.BillingState,
h.BillingPostalCode, h.BillingPhone, h.BillingEmail, h.PromoCodeUsed, h.PromoCodeSavings, h.IPAddress, h.CreatedDate, h.Id,
h.ItemizedRecords, h.Guid, h.CreatedBy, h.Ts, h.SubscriptionRecords, h.PromoCodeId, h.PackageId, h.FrequencyId, h.IsFree,
c.Rules, s.InTrial, a.DomainName, a.IsPrimary, a.IsDefault, p.Name as PartnerName, p.Code as PartnerCode, p.IsReseller, p.IsTakingPayment,
p.IsEnterprise, p.IsActive
FROM AgentStudio.dbo.Sites s
INNER JOIN AgentStudio.Billing.History h ON h.AppGUID = s.AppGUID
INNER JOIN AgentStudio.Sites.Config c ON c.AppGUID = s.AppGUID
INNER JOIN AgentStudio.dbo.site_aliases a ON a.AppGUID = s.AppGUID
INNER JOIN AgentStudio.Marketing.Partners p ON p.Id = s.PartnerId
WHERE h.AuthOnly		= 1
AND h.TxAmount			= 0.01
AND s.IsCancelled		= 0
AND	s.IsDeleted			= 0
AND	s.IsDeveloperSite	= 0
AND	s.IsTestSite		= 0
AND	( s.ExpirationDate <= DATEADD( day, -6, GETDATE() )
	OR s.ExpirationDate BETWEEN DATEADD( day, -5, GETDATE() ) AND GETDATE() 
)
