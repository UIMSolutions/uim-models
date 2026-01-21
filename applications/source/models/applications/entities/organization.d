module models.applications.entities.organization;

@safe:
import models.applications;

// Person with whom a business unit has a relationship, such as customer, supplier, and colleague.
class DOrganizationEntity : DEntity {
  mixin(EntityThis!("OrganizationEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
       ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Unique identifier of the organization.
        "userGroupId": UUIDAttribute, // Unique identifier of the default group of users in the organization.
        "privilegeUserGroupId": UUIDAttribute, // Unique identifier of the default privilege for users in the organization.
        "recurrenceExpansionJobBatchSize": StringAttribute, // Specifies the value for number of instances created in on demand job in one shot.
        "recurrenceExpansionJobBatchInterval": StringAttribute, // Specifies the interval (in seconds) for pausing expansion job.
        "fiscalPeriodType": StringAttribute, // Type of fiscal period used throughout Server CRM.
        "fiscalCalendarStart": StringAttribute, // Start date for the fiscal period that is to be used throughout Server CRM.
        "dateFormatCode": IntegerAttribute, // Information about how the date is displayed throughout Server CRM.
        "dateFormatCode_display": StringAttribute, // 
        "timeFormatCode": IntegerAttribute, // Information that specifies how the time is displayed throughout Server CRM.
        "timeFormatCode_display": StringAttribute, // 
        "currencySymbol": StringAttribute, // Symbol used for currency throughout Server.
        "weekStartDayCode": IntegerAttribute, // Designated first day of the week throughout Server.
        "weekStartDayCode_display": StringAttribute, // 
        "dateSeparator": StringAttribute, // Character used to separate the month, the day, and the year in dates throughout Server.
        "fullNameConventionCode": IntegerAttribute, // Order in which names are to be displayed throughout Server CRM.
        "fullNameConventionCode_display": StringAttribute, // 
        "negativeFormatCode": IntegerAttribute, // Information that specifies how negative numbers are displayed throughout Server CRM.
        "negativeFormatCode_display": StringAttribute, // 
        "numberFormat": StringAttribute, // Specification of how numbers are displayed throughout Server CRM.
        "isDisabled": BooleanAttribute, // Information that specifies whether the organization is disabled.
        "disabledReasOn": DatetimeAttribute, // Reason for disabling the organization.
        "kbPrefix": StringAttribute, // Prefix to use for all articles in Server.
        "currentKbNumber": NumberAttribute, // First article number to use. Deprecated. Use SetAutoNumberSeed message.
        "casePrefix": StringAttribute, // Prefix to use for all cases throughout Server.
        "currentCaseNumber": NumberAttribute, // First case number to use. Deprecated. Use SetAutoNumberSeed message.
        "contractPrefix": StringAttribute, // Prefix to use for all contracts throughout Server.
        "currentContractNumber": NumberAttribute, // First contract number to use. Deprecated. Use SetAutoNumberSeed message.
        "quotePrefix": StringAttribute, // Prefix to use for all quotes throughout Server.
        "currentQuoteNumber": NumberAttribute, // First quote number to use. Deprecated. Use SetAutoNumberSeed message.
        "orderPrefix": StringAttribute, // Prefix to use for all orders throughout Server.
        "currentOrderNumber": NumberAttribute, // First order number to use. Deprecated. Use SetAutoNumberSeed message.
        "invoicePrefix": StringAttribute, // Prefix to use for all invoice numbers throughout Server.
        "currentInvoiceNumber": NumberAttribute, // First invoice number to use. Deprecated. Use SetAutoNumberSeed message.
        "uniqueSpecifierLength": StringAttribute, // Number of characters appended to invoice, quote, and order numbers.
        "fiscalYearFormat": StringAttribute, // Information that specifies how the name of the fiscal year is displayed throughout Server CRM.
        "fiscalPeriodFormat": StringAttribute, // Information that specifies how the name of the fiscal period is displayed throughout Server CRM.
        "fiscalYearPeriodConnect": StringAttribute, // Information that specifies how the names of the fiscal year and the fiscal period should be connected when displayed together.
        "languageCode": IntegerAttribute, // Preferred language for the organization.
        "sortId": UUIDAttribute, // For internal use only.
        "dateFormatString": StringAttribute, // String showing how the date is displayed throughout Server CRM.
        "timeFormatString": StringAttribute, // Text for how time is displayed in Server.
        "pricingDecimalPrecisiOn": DatetimeAttribute, // Number of decimal places that can be used for prices.
        "showWeekNumber": NumberAttribute, // Information that specifies whether to display the week number in calendar displays throughout Server CRM.
        "nextTrackingNumber": NumberAttribute, // Next token to be placed on the subject line of an email message.
        "tagMaxAggressiveCycles": StringAttribute, // Maximum number of aggressive polling cycles executed for email auto-tagging when a new email is received.
        "systemUserId": UserIdAttribute, // Unique identifier of the system user for the organization.
        "createdId": UUIDAttribute, // Unique identifier of the user who created the organization.
        "grantAccessToNetworkService": StringAttribute, // For internal use only.
        "allowOutlookScheduledSyncs": StringAttribute, // Indicates whether scheduled synchronizations to Outlook are allowed.
        "allowMarketingEmailExecutiOn": DatetimeAttribute, // Indicates whether marketing emails execution is allowed.
        "sqlAccessGroupId": UUIDAttribute, // For internal use only.
        "currencyFormatCode": IntegerAttribute, // Information about how currency symbols are placed throughout Server CRM.
        "currencyFormatCode_display": StringAttribute, // 
        "fiscalSettingsUpdated": StringAttribute, // Information that specifies whether the fiscal settings have been updated.
        "reportingGroupId": UUIDAttribute, // For internal use only.
        "tokenExpiry": StringAttribute, // Duration used for token expiration.
        "shareToPreviousOwnerOnAssign": StringAttribute, // Information that specifies whether to share to previous owner on assign.
        "acknowledgementTemplateId": UUIDAttribute, // Unique identifier of the template to be used for acknowledgement when a user unsubscribes.
        "modifiedId": UUIDAttribute, // Unique identifier of the user who last modified the organization.
        "integrationUserId": UserIdAttribute, // Unique identifier of the integration user for the organization.
        "trackingTokenIdBase": StringAttribute, // Base number used to provide separate tracking token identifiers to users belonging to different deployments.
        "businessClosureCalendarId": UUIDAttribute, // Unique identifier of the business closure calendar of organization.
        "allowAutoUnsubscribeAcknowledgement": StringAttribute, // Indicates whether automatic unsubscribe acknowledgement email is allowed to send.
        "allowAutoUnsubscribe": StringAttribute, // Indicates whether automatic unsubscribe is allowed.
        "picture": StringAttribute, // For internal use only.
        "trackingPrefix": StringAttribute, // History list of tracking token prefixes.
        "minOutlookSyncInterval": StringAttribute, // Minimum allowed time between scheduled Outlook synchronizations.
        "bulkOperationPrefix": StringAttribute, // Prefix used for bulk operation numbering.
        "allowAutoResponseCreatiOn": DatetimeAttribute, // Indicates whether automatic response creation is allowed.
        "maximumTrackingNumber": NumberAttribute, // Maximum tracking number before recycling takes place.
        "campaignPrefix": StringAttribute, // Prefix used for campaign numbering.
        "sqlAccessGroupName": StringAttribute, // For internal use only.
        "currentCampaignNumber": NumberAttribute, // Current campaign number. Deprecated. Use SetAutoNumberSeed message.
        "fiscalYearDisplayCode": IntegerAttribute, // Information that specifies whether the fiscal year should be displayed based on the start date or the end date of the fiscal year.
        "siteMapXml": StringAttribute, // XML string that defines the navigation structure for the application.
        "isRegistered": BooleanAttribute, // For internal use only.
        "reportingGroupName": StringAttribute, // For internal use only.
        "currentBulkOperationNumber": NumberAttribute, // Current bulk operation number. Deprecated. Use SetAutoNumberSeed message.
        "schemaNamePrefix": StringAttribute, // Prefix used for custom entities and attributes.
        "ignoreInternalEmail": StringAttribute, // Indicates whether incoming email sent by internal Server users or queues should be tracked.
        "tagPollingPeriod": StringAttribute, // Normal polling frequency used for email receive auto-tagging in outlook.
        "trackingTokenIdDigits": StringAttribute, // Number of digits used to represent a tracking token identifier.
        "numberGroupFormat": StringAttribute, // Specifies how numbers are grouped in Server.
        "longDateFormatCode": IntegerAttribute, // Information that specifies how the Long Date format is displayed in Server.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "currentImportSequenceNumber": NumberAttribute, // Import sequence to use.
        "parsedTablePrefix": StringAttribute, // Prefix used for parsed tables.
        "v3CalloutConfigHash": StringAttribute, // Hash of the V3 callout configuration file.
        "isFiscalPeriodMonthBased": BooleanAttribute, // Indicates whether the fiscal period is displayed as the month number.
        "localeId": UUIDAttribute, // Unique identifier of the locale of the organization.
        "parsedTableColumnPrefix": StringAttribute, // Prefix used for parsed table columns.
        "supportUserId": UserIdAttribute, // Unique identifier of the support user for the organization.
        "AMDesignator": StringAttribute, // AM designator to use throughout Server CRM.
        "currencyDisplayOptiOn": DatetimeAttribute, // Indicates whether to display money fields with currency code or currency symbol.
        "currencyDisplayOption_display": StringAttribute, // 
        "minAddressBookSyncInterval": StringAttribute, // Normal polling frequency used for address book synchronization in Microsoft Office Outlook.
        "isDuplicateDetectionEnabledForOnlineCreateUpdate": BooleanAttribute, // Indicates whether duplicate detection during online create or update is enabled.
        "featureSet": StringAttribute, // Features to be enabled as an XML BLOB.
        "blockedAttachments": StringAttribute, // Prevent upload or download of certain attachment types that are considered dangerous.
        "isDuplicateDetectionEnabledForOfflineSync": BooleanAttribute, // Indicates whether duplicate detection of records during offline synchronization is enabled.
        "allowOfflineScheduledSyncs": StringAttribute, // Indicates whether background offline synchronization in Microsoft Office Outlook is allowed.
        "allowUnresolvedPartiesOnEmailSend": StringAttribute, // Indicates whether users are allowed to send email to unresolved parties (parties must still have an email address).
        "timeSeparator": StringAttribute, // Text for how the time separator is displayed throughout Server.
        "currentParsedTableNumber": NumberAttribute, // First parsed table number to use.
        "minOfflineSyncInterval": StringAttribute, // Normal polling frequency used for background offline synchronization in Microsoft Office Outlook.
        "allowWebExcelExport": StringAttribute, // Indicates whether Web-based export of grids to Microsoft Office Excel is allowed.
        "referenceSiteMapXml": StringAttribute, // XML string that defines the navigation structure for the application. This is the site map from the previously upgraded build and is used in a 3-way merge during upgrade.
        "isDuplicateDetectionEnabledForImport": BooleanAttribute, // Indicates whether duplicate detection of records during import is enabled.
        "calendarType": StringAttribute, // Calendar type for the system. Set to Gregorian US by default.
        "SQMEnabled": StringAttribute, // Setting for SQM data collection, 0 no, 1 yes enabled
        "negativeCurrencyFormatCode": IntegerAttribute, // Information that specifies how negative currency numbers are displayed throughout Server.
        "allowAddressBookSyncs": StringAttribute, // Indicates whether background address book synchronization in Microsoft Office Outlook is allowed.
        "ISVIntegrationCode": IntegerAttribute, // Indicates whether loading of Server in a browser window that does not have address, tool, and menu bars is enabled.
        "ISVIntegrationCode_display": StringAttribute, // 
        "decimalSymbol": StringAttribute, // Symbol used for decimal in Server.
        "maxUploadFileSize": StringAttribute, // Maximum allowed size of an attachment.
        "isAppMode": BooleanAttribute, // Indicates whether loading of Server in a browser window that does not have address, tool, and menu bars is enabled.
        "enablePricingOnCreate": StringAttribute, // Enable pricing calculations on a Create call.
        "isSOPIntegrationEnabled": BooleanAttribute, // Enable sales order processing integration.
        "PMDesignator": StringAttribute, // PM designator to use throughout Server.
        "currencyDecimalPrecisiOn": DatetimeAttribute, // Number of decimal places that can be used for currency.
        "maxAppointmentDurationDays": StringAttribute, // Maximum number of days an appointment can last.
        "emailSendPollingPeriod": StringAttribute, // Normal polling frequency used for sending email in Microsoft Office Outlook.
        "renderSecureIFrameForEmail": StringAttribute, // Flag to render the body of email in the Web form in an IFRAME with the security='restricted' attribute set. This is additional security but can cause a credentials prompt.
        "numberSeparator": StringAttribute, // Symbol used for number separation in Server.
        "privReportingGroupId": UUIDAttribute, // For internal use only.
        "baseCurrencyId": CurrencyIdAttribute, // Unique identifier of the base currency of the organization.
        "maxRecordsForExportToExcel": StringAttribute, // Maximum number of records that will be exported to a static Microsoft Office Excel worksheet when exporting from the grid.
        "privReportingGroupName": StringAttribute, // For internal use only.
        "yearStartWeekCode": IntegerAttribute, // Information that specifies how the first week of the year is specified in Server.
        "isPresenceEnabled": BooleanAttribute, // Information on whether IM presence is enabled.
        "isDuplicateDetectionEnabled": BooleanAttribute, // Indicates whether duplicate detection of records is enabled.
        "expireSubscriptionsInDays": StringAttribute, // Maximum number of days before deleting inactive subscriptions.
        "isAuditEnabled": BooleanAttribute, // Enable or disable auditing of changes.
        "baseCurrencyPrecisiOn": DatetimeAttribute, // Number of decimal places that can be used for the base currency.
        "baseCurrencySymbol": StringAttribute, // Symbol used for the base currency.
        "maxRecordsForLookupFilters": StringAttribute, // Maximum number of lookup and picklist records that can be selected by user for filtering.
        "allowEntityOnlyAudit": StringAttribute, // Indicates whether auditing of changes to entity is allowed when no attributes have changed.
        "defaultRecurrenceEndRangeType": StringAttribute, // Type of default recurrence end range date.
        "defaultRecurrenceEndRangeType_display": StringAttribute, // 
        "futureExpansionWindow": StringAttribute, // Specifies the maximum number of months in future for which the recurring activities can be created.
        "pastExpansionWindow": StringAttribute, // Specifies the maximum number of months in past for which the recurring activities can be created.
        "recurrenceExpansionSynchCreateMax": StringAttribute, // Specifies the maximum number of instances to be created synchronously after creating a recurring appointment.
        "recurrenceDefaultNumberOfOccurrences": StringAttribute, // Specifies the default value for number of occurrences field in the recurrence dialog.
        "getStartedPaneContentEnabled": StringAttribute, // Indicates whether Get Started content is enabled for this organization.
        "useReadForm": StringAttribute, // Indicates whether the read-optimized form should be enabled for this organization.
        "initialVersiOn": DatetimeAttribute, // Initial version of the organization.
        "sampleDataImportId": UUIDAttribute, // Unique identifier of the sample data import job.
        "reportScriptErrors": StringAttribute, // Picklist for selecting the organization preference for reporting scripting errors.
        "reportScriptErrors_display": StringAttribute, // 
        "requireApprovalForUserEmail": StringAttribute, // Indicates whether Send As Other User privilege is enabled.
        "requireApprovalForQueueEmail": StringAttribute, // Indicates whether Send As Other User privilege is enabled.
        "goalRollupExpiryTime": TimeAttribute, // Number of days after the goal's end date after which the rollup of the goal stops automatically.
        "goalRollupFrequency": StringAttribute, // Number of hours between automatic rollup jobs .
        "autoApplyDefaultonCaseCreate": StringAttribute, // Select whether to auto apply the default customer entitlement on case creation.
        "autoApplyDefaultonCaseUpdate": StringAttribute, // Select whether to auto apply the default customer entitlement on case update.
        "fiscalYearFormatPrefix": StringAttribute, // Prefix for the display of the fiscal year.
        "fiscalYearFormatPrefix_display": StringAttribute, // 
        "fiscalYearFormatSuffix": StringAttribute, // Suffix for the display of the fiscal year.
        "fiscalYearFormatSuffix_display": StringAttribute, // 
        "fiscalYearFormatYear": StringAttribute, // Format for the year.
        "fiscalYearFormatYear_display": StringAttribute, // 
        "discountCalculationMethod": StringAttribute, // Discount calculation method for the QOOI product.
        "discountCalculationMethod_display": StringAttribute, // 
        "fiscalPeriodFormatPeriod": StringAttribute, // Format in which the fiscal period will be displayed.
        "fiscalPeriodFormatPeriod_display": StringAttribute, // 
        "allowClientMessageBarAd": StringAttribute, // Indicates whether Outlook Client message bar advertisement is allowed.
        "allowUserFormModePreference": StringAttribute, // Indicates whether individuals can select their form mode preference in their personal options.
        "hashFilterKeywords": StringAttribute, // Filter Subject Keywords
        "hashMaxCount": StringAttribute, // Maximum number of subject keywords or recipients used for correlation
        "hashDeltaSubjectCount": StringAttribute, // Maximum difference allowed between subject keywords count of the email messaged to be correlated
        "hashMinAddressCount": StringAttribute, // Minimum number of recipients required to match for email messaged to be correlated
        "enableSmartMatching": StringAttribute, // Use Smart Matching.
        "pinpointLanguageCode": IntegerAttribute, // 
        "orgDbOrgSettings": StringAttribute, // Organization settings stored in Organization Database.
        "isUserAccessAuditEnabled": BooleanAttribute, // Enable or disable auditing of user access.
        "userAccessAuditingInterval": StringAttribute, // The interval at which user access is checked for auditing.
        "quickFindRecordLimitEnabled": StringAttribute, // Indicates whether a quick find record limit should be enabled for this organization (allows for faster Quick Find queries but prevents overly broad searches).
        "enableBingMapsIntegratiOn": DatetimeAttribute, // Enable Integration with Bing Maps
        "isDefaultCountryCodeCheckEnabled": BooleanAttribute, // Enable or disable country code selection.
        "defaultCountryCode": IntegerAttribute, // Text area to enter default country code.
        "useSkypeProtocol": StringAttribute, // Indicates default protocol selected for organization.
        "incomingEmailExchangeEmailRetrievalBatchSize": StringAttribute, // Setting for the Async Service Mailbox Queue. Defines the retrieval batch size of exchange server.
        "emailCorrelationEnabled": StringAttribute, // Flag to turn email correlation on or off.
        "yammerOAuthAccessTokenExpired": StringAttribute, // Denotes whether the OAuth access token for Yammer network has expired
        "defaultEmailSettings": StringAttribute, // XML string containing the default email settings that are applied when a user or queue is created.
        "yammerGroupId": UUIDAttribute, // Denotes the Yammer group ID
        "yammerNetworkPermalink": StringAttribute, // Denotes the Yammer network permalink
        "yammerPostMethod": StringAttribute, // Internal Use Only
        "yammerPostMethod_display": StringAttribute, // 
        "emailConnectionChannel": StringAttribute, // Select if you want to use the Email Router or server-side synchronization for email processing.
        "emailConnectionChannel_display": StringAttribute, // 
        "defaultEmailServerProfileId": UUIDAttribute, // Unique identifier of the default email server profile.
        "isAutoSaveEnabled": BooleanAttribute, // Information on whether auto save is enabled.
        "bingMapsApiKey": StringAttribute, // Api Key to be used in requests to Bing Maps services.
        "generateAlertsForErrors": StringAttribute, // Indicates whether alerts will be generated for errors.
        "generateAlertsForInformatiOn": DatetimeAttribute, // Indicates whether alerts will be generated for information.
        "generateAlertsForWarnings": StringAttribute, // Indicates whether alerts will be generated for warnings.
        "notifyMailboxOwnerOfEmailServerLevelAlerts": StringAttribute, // Indicates whether mailbox owners will be notified of email server profile level alerts.
        "maximumActiveBusinessProcessFlowsAllowedPerEntity": StringAttribute, // Maximum number of active business process flows allowed per entity
        "entityImageId": UUIDAttribute, // For internal use only.
        "allowUsersSeeAppdownloadMessage": StringAttribute, // Indicates whether the showing tablet application notification bars in a browser is allowed.
        "signupOutlookDownloadFWLink": StringAttribute, // CRM for Outlook Download URL
        "cascadeStatusUpdate": StringAttribute, // Flag to cascade Update on incident.
        "restrictStatusUpdate": StringAttribute, // Flag to restrict Update on incident.
        "suppressSLA": StringAttribute, // Indicates whether SLA is suppressed.
        "socialInsightsTermsAccepted": StringAttribute, // Flag for whether the organization has accepted the Social Insights terms of use.
        "socialInsightsInstance": StringAttribute, // Identifier for the Social Insights instance for the organization.
        "disableSocialCare": StringAttribute, // Indicates whether Social Care is disabled.
        "maxProductsInBundle": StringAttribute, // Restrict the maximum no of items in a bundle
        "useInbuiltRuleForDefaultPricelistSelectiOn": DatetimeAttribute, // Flag indicates whether to Use Inbuilt Rule For DefaultPricelist.
        "OOBPriceCalculationEnabled": StringAttribute, // Enable OOB pricing calculation logic for Opportunity, Quote, Order and Invoice entities.
        "isHierarchicalSecurityModelEnabled": BooleanAttribute, // Enable Hierarchical Security Model
        "maximumDynamicPropertiesAllowed": StringAttribute, // Restrict the maximum number of product properties for a product family/bundle
        "usePositionHierarchy": StringAttribute, // Use position hierarchy
        "maxDepthForHierarchicalSecurityModel": StringAttribute, // Maximum depth for hierarchy security propagation.
        "slaPauseStates": StringAttribute, // Contains the on hold case status values.
        "socialInsightsEnabled": StringAttribute, // Flag for whether the organization is using Social Insights.
        "isAppointmentAttachmentSyncEnabled": BooleanAttribute, // Enable or disable attachments sync for outlook and exchange.
        "isAssignedTasksSyncEnabled": BooleanAttribute, // Enable or disable assigned tasks sync for outlook and exchange.
        "isContactMailingAddressSyncEnabled": BooleanAttribute, // Enable or disable mailing address sync for outlook and exchange.
        "maxSupportedInternetExplorerVersiOn": DatetimeAttribute, // The maximum version of IE to run browser emulation for in Outlook client
        "globalHelpUrl": UrlAttribute, // URL for the web page global help.
        "globalHelpUrlEnabled": StringAttribute, // Indicates whether the customizable global help is enabled.
        "globalAppendUrlParametersEnabled": StringAttribute, // Indicates whether the append URL parameters is enabled.
        "KMSettings": StringAttribute, // XML string containing the Knowledge Management settings that are applied in Knowledge Management Wizard.
        "createProductsWithoutParentInActiveState": StringAttribute, // Enable Initial state of newly created products to be Active instead of Draft
        "isMailboxInactiveBackoffEnabled": BooleanAttribute, // Enable or disable mailbox keep alive for Server Side Sync.
        "isFullTextSearchEnabled": BooleanAttribute, // Indicates whether full-text search for Quick Find entities should be enabled for the organization.
        "enforceReadOnlyPlugins": StringAttribute, // Organization setting to enforce read only plugins.
        "sharePointDeploymentType": StringAttribute, // Indicates which SharePoint deployment type is configured for Server to Server. (Online or On-Premises)
        "sharePointDeploymentType_display": StringAttribute, // 
        "organizationState": StringAttribute, // Indicates the organization lifecycle state
        "organizationState_display": StringAttribute, // 
        "defaultThemeData": StringAttribute, // Default theme data for the organization.
        "isFolderBasedTrackingEnabled": BooleanAttribute, // Enable or disable folder based tracking for Server Side Sync.
        "webResourceHash": StringAttribute, // Hash value of web resources.
        "expireChangeTrackingInDays": StringAttribute, // Maximum number of days to keep change tracking deleted records
        "maxFolderBasedTrackingMappings": StringAttribute, // Maximum number of Folder Based Tracking mappings user can add
        "privacyStatementUrl": UrlAttribute, // Privacy Statement URL
        "pluginTraceLogSetting": StringAttribute, // Plug-in Trace Log Setting for the Organization.
        "pluginTraceLogSetting_display": StringAttribute, // 
        "isMailboxForcedUnlockingEnabled": BooleanAttribute, // Enable or disable forced unlocking for Server Side Sync mailboxes.
        "mailboxIntermittentIssueMinRange": StringAttribute, // Lower Threshold For Mailbox Intermittent Issue.
        "mailboxPermanentIssueMinRange": StringAttribute, // Lower Threshold For Mailbox Permanent Issue.
        "highContrastThemeData": StringAttribute, // High contrast theme data for the organization.
        "delegatedAdminUserId": UserIdAttribute, // Unique identifier of the delegated admin user for the organization.
        "isExternalSearchIndexEnabled": BooleanAttribute, // Select whether data can be synchronized with an external search index.
        "isMobileOfflineEnabled": BooleanAttribute, // Indicates whether the feature MobileOffline should be enabled for the organization.
        "isOfficeGraphEnabled": BooleanAttribute, // Indicates whether the feature OfficeGraph should be enabled for the organization.
        "isOneDriveEnabled": BooleanAttribute, // Indicates whether the feature One Drive should be enabled for the organization.
        "externalPartyEntitySettings": StringAttribute, // XML string containing the ExternalPartyEnabled entities settings.
        "externalPartyCorrelationKeys": StringAttribute, // XML string containing the ExternalPartyEnabled entities correlation keys for association of existing External Party instance entities to newly created IsExternalPartyEnabled entities.For internal use only
        "maxVerboseLoggingMailbox": StringAttribute, // Maximum number of mailboxes that can be toggled for verbose logging
        "maxVerboseLoggingSyncCycles": StringAttribute, // Maximum number of sync cycles for which verbose logging will be enabled by default
        "mobileOfflineSyncInterval": StringAttribute, // Sync interval for mobile offline.
        "officeGraphDelveUrl": UrlAttribute, // The url to open the Delve for the organization.
        "mobileOfflineMinLicenseTrial": StringAttribute, // Minimum number of user license required for mobile offline service by trial organization
        "mobileOfflineMinLicenseProd": StringAttribute, // Minimum number of user license required for mobile offline service by production/preview organization
        "daysSinceRecordLastModifiedMaxValue": StringAttribute, // The maximum value for the Mobile Offline setting Days since record last modified
        "taskBasedFlowEnabled": StringAttribute, // Select whether to turn on task flows for the organization.
        "showKBArticleDeprecationNotificatiOn": DatetimeAttribute, // Select whether to display a KB article deprecation notification to the user.
        "azureSchedulerJobCollectionName": StringAttribute, // For internal use only.
        "cortanaProactiveExperienceEnabled": StringAttribute, // Indicates whether the feature CortanaProactiveExperience Flow processes should be enabled for the organization.
        "officeAppsAutoDeploymentEnabled": StringAttribute, // Indicates whether the Office Apps auto deployment is enabled for the organization.
        "appDesignerExperienceEnabled": StringAttribute, // Indicates whether the appDesignerExperience is enabled for the organization.
        "enableImmersiveSkypeIntegratiOn": DatetimeAttribute, // Enable Integration with Immersive Skype
        "autoApplySLA": StringAttribute, // Indicates whether to Auto-apply SLA on case record update after SLA was manually applied.
        "isEmailServerProfileContentFilteringEnabled": BooleanAttribute, // Enable Email Server Profile content filtering
        "isDelegateAccessEnabled": BooleanAttribute, // Enable Delegation Access content
        "displayNavigationTour": StringAttribute, // Indicates whether or not navigation tour is displayed.
        "useLegacyRendering": StringAttribute, // Select whether to use legacy form rendering.
        "defaultMobileOfflineProfileId": UUIDAttribute, // Unique identifier of the default mobile offline profile.
        "kaPrefix": StringAttribute, // Type the prefix to use for all knowledge articles in Server.
        "currentKaNumber": NumberAttribute, // Enter the first number to use for knowledge articles. Deprecated. Use SetAutoNumberSeed message.
        "currentCategoryNumber": NumberAttribute, // Enter the first number to use for Categories. Deprecated. Use SetAutoNumberSeed message.
        "categoryPrefix": StringAttribute, // Type the prefix to use for all categories in Server.
        "maximumEntitiesWithActiveSLA": StringAttribute, // Maximum number of active SLA allowed per entity in online
        "maximumSLAKPIPerEntityWithActiveSLA": StringAttribute, // Maximum number of SLA KPI per active SLA allowed for entity in online
        "isConflictDetectionEnabledForMobileClient": BooleanAttribute, // Information that specifies whether conflict detection for mobile client is enabled.
        "isDelveActionHubIntegrationEnabled": BooleanAttribute, // Indicates whether the feature Action Hub should be enabled for the organization.
        "orgInsightsEnabled": StringAttribute, // Select whether to turn on OrgInsights for the organization.
        "productRecommendationsEnabled": StringAttribute, // Select whether to turn on product recommendations for the organization.
        "textAnalyticsEnabled": StringAttribute, // Select whether to turn on text analytics for the organization.
        "maxConditionsForMobileOfflineFilters": StringAttribute, // Maximum number of conditions allowed for mobile offline filters
        "isFolderAutoCreatedonSP": BooleanAttribute, // Select whether folders should be automatically created on SharePoint.
        "powerBiFeatureEnabled": StringAttribute, // Indicates whether the Power BI feature should be enabled for the organization.
        "isActionCardEnabled": BooleanAttribute, // Indicates whether the feature Action Card should be enabled for the organization.
        "isEmailMonitoringAllowed": BooleanAttribute, // Allow tracking recipient activity on sent emails.
        "isActivityAnalysisEnabled": BooleanAttribute, // Indicates whether the feature Relationship Analytics should be enabled for the organization.
        "isAutoDataCaptureEnabled": BooleanAttribute, // Indicates whether the feature Auto Capture should be enabled for the organization.
        "externalBaseUrl": UrlAttribute, // Specify the base URL to use to look for external document suggestions.
        "isPreviewEnabledForActionCard": BooleanAttribute, // Indicates whether the Preview feature for Action Card should be enabled for the organization.
        "isPreviewForEmailMonitoringAllowed": BooleanAttribute, // Is Preview For Email Monitoring Allowed.
        "unresolveEmailAddressIfMultipleMatch": StringAttribute, // Indicates whether email address should be unresolved if multiple matches are found
        "riErrorStatus": StringAttribute, // Error status of Relationship Insights provisioning.
        "widgetProperties": StringAttribute, // For Internal use only.
        "enableMicrosoftFlowIntegratiOn": DatetimeAttribute, // Enable Integration with Microsoft Flow
        "isEnabledForAllRoles": BooleanAttribute, // Indicates whether appmodule is enabled for all roles
        "isPreviewForAutoCaptureEnabled": BooleanAttribute, // Indicates whether the feature Auto Capture should be enabled for the organization at Preview Settings.
        "defaultCrmCustomName": StringAttribute, // Name of the default crm custom.
        "ACIWebEndpointUrl": UrlAttribute, // ACI Web Endpoint URL.
        "enableLPAuthoring": StringAttribute, // Select to enable learning path auhtoring.
        "isResourceBookingExchangeSyncEnabled": BooleanAttribute, // Indicates if the synchronization of user resource booking with Exchange is enabled at organization level.
        "isMobileClientOnDemandSyncEnabled": BooleanAttribute, // Information that specifies whether mobile client on demand sync is enabled.
        "postMessageWhitelistDomains": StringAttribute, // For internal use only.
        "isRelationshipInsightsEnabled": BooleanAttribute, // Indicates whether the feature Relationship Insights should be enabled for the organization.
        "resolveSimilarUnresolvedEmailAddress": StringAttribute, // Apply same email address to all unresolved matches when you manually resolve it for one
        "isTextWrapEnabled": BooleanAttribute, // Information on whether text wrap is enabled.
        "sessionTimeoutEnabled": StringAttribute, // Information that specifies whether session timeout is enabled
        "sessionTimeoutInMins": StringAttribute, // Session timeout in minutes
        "sessionTimeoutReminderInMins": StringAttribute, // Session timeout reminder in minutes
        "microsoftFlowEnvironment": StringAttribute, // Environment selected for Integration with Microsoft Flow
        "inactivityTimeoutEnabled": StringAttribute, // Information that specifies whether Inactivity timeout is enabled
        "inactivityTimeoutInMins": StringAttribute, // Inactivity timeout in minutes
        "inactivityTimeoutReminderInMins": StringAttribute, // Inactivity timeout reminder in minutes
        "syncOptInSelectiOn": DatetimeAttribute, // Indicates the selection to use the dynamics 365 azure sync framework or server side sync.
        "syncOptInSelectionStatus": StringAttribute, // Indicates the status of the opt-in or opt-out operation for dynamics 365 azure sync.
        "syncOptInSelectionStatus_display": StringAttribute, // 
        "isActionSupportFeatureEnabled": BooleanAttribute, // Information that specifies whether Action Support Feature is enabled
        "isBPFEntityCustomizationFeatureEnabled": BooleanAttribute, // Information that specifies whether BPF Entity Customization Feature is enabled
        "boundDashboardDefaultCardExpanded": StringAttribute, // Display cards in expanded state for interactive dashboard
        "maxActionStepsInBPF": StringAttribute, // Maximum number of actionsteps allowed in a BPF
        "serveStaticResourcesFromAzureCDN": StringAttribute, // Serve Static Content From CDN
        "isExternalFileStorageEnabled": BooleanAttribute, // Indicates whether the organization's files are being stored in Azure.
        "clientFeatureSet": StringAttribute, // Client Features to be enabled as an XML BLOB.
        "isReadAuditEnabled": BooleanAttribute, // Enable or disable auditing of read operations.
        "isNotesAnalysisEnabled": BooleanAttribute, // Indicates whether the feature Notes Analysis should be enabled for the organization.
        "allowLegacyDialogsEmbedding": StringAttribute, // Enable embedding of certain legacy dialogs in Unified Interface browser client
        "appointmentRichEditorExperience": StringAttribute, // Information on whether rich editing experience for Appointment is enabled.
      ])
      .registerPath("applications_organizations")
      .routingPath("/applications/organizations");
  }
}
mixin(EntityCalls!("OrganizationEntity"));

version(test_model_applications) { unittest {
    
    assert(OrganizationEntity);

  auto entity = OrganizationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}