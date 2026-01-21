module models.applications.entities.account;

@safe:
import models.applications;

// Business that represents a customer or potential customer. The company that is billed in business transactions.
class DAccountEntity : DEntity {
  mixin(EntityThis!("AccountEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerAttribute, // Object Owner
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "accountId": AccountIdAttribute, // Unique identifier of the account.
        "accountCategoryCode": UUIDAttribute, // 
        "customerSizeCode": UUIDAttribute, // 
        "preferredContactMethodCode": IntegerAttribute, // Select the preferred method of contact.
        "preferredContactMethodCode_display": StringAttribute, // 
        "customerTypeCode": UUIDAttribute, // 
        "accountRatingCode": UUIDAttribute, // 
        "industryCode": UUIDAttribute, // 
        "territoryCode": UUIDAttribute, // 
        "accountClassificationCode": UUIDAttribute, // 
        "businessTypeCode": IntegerAttribute, // Select the legal designation or other business type of the account for contracts or reporting purposes.
        "businessTypeCode_display": StringAttribute, // 
        "traversedPath": StringAttribute, // For internal use only.
        "paymentTermsCode": IntegerAttribute, // Select the payment terms to indicate when the customer needs to pay the total amount.
        "paymentTermsCode_display": StringAttribute, // 
        "shippingMethodCode": IntegerAttribute, // Select a shipping method for deliveries sent to the account's address to designate the preferred carrier or other delivery option.
        "shippingMethodCode_display": StringAttribute, // 
        "primaryContactId": ContactIdAttribute, // Choose the primary contact for the account to provide quick access to contact details.
        "participatesInWorkflow": StringAttribute, // For system use only. Legacy Server CRM 3.0 workflow data.
        "accountNumber": NumberAttribute, // Type an ID number or code for the account to quickly search and identify the account in system views.
        "revenue": CurrencyAttribute, // Type the annual revenue for the account, used as an indicator in financial performance analysis.
        "numberOfEmployees": StringAttribute, // Type the number of employees that work at the account for use in marketing segmentation and demographic analysis.
        "SIC": StringAttribute, // Type the Standard Industrial Classification (SIC) code that indicates the account's primary industry of business, for use in marketing segmentation and demographic analysis.
        "ownershipCode": IntegerAttribute, // Select the account's ownership structure, such as public or private.
        "ownershipCode_display": StringAttribute, // 
        "marketCap": StringAttribute, // Type the market capitalization of the account to identify the company's equity, used as an indicator in financial performance analysis.
        "sharesOutstanding": StringAttribute, // Type the number of shares available to the public for the account. This number is used as an indicator in financial performance analysis.
        "tickerSymbol": StringAttribute, // Type the stock exchange symbol for the account to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money.
        "stockExchange": StringAttribute, // Type the stock exchange at which the account is listed to track their stock and financial performance of the company.
        "webSiteUrl": UrlAttribute, // Type the account's website URL to get quick details about the company profile.
        "ftpSiteUrl": UrlAttribute, // Type the URL for the account's FTP site to enable users to access data and share documents.
        "EMailAddress1": StringAttribute, // Type the primary email address for the account.
        "EMailAddress2": StringAttribute, // Type the secondary email address for the account.
        "EMailAddress3": StringAttribute, // Type an alternate email address for the account.
        "doNotPhone": StringAttribute, // Select whether the account allows phone calls. If Do Not Allow is selected, the account will be excluded from phone call activities distributed in marketing campaigns.
        "doNotFax": StringAttribute, // Select whether the account allows faxes. If Do Not Allow is selected, the account will be excluded from fax activities distributed in marketing campaigns.
        "telephone1": StringAttribute, // Type the main phone number for this account.
        "doNotEMail": StringAttribute, // Select whether the account allows direct email sent from Server.
        "telephone2": StringAttribute, // Type a second phone number for this account.
        "fax": StringAttribute, // Type the fax number for the account.
        "telephone3": StringAttribute, // Type a third phone number for this account.
        "doNotPostalMail": StringAttribute, // Select whether the account allows direct mail. If Do Not Allow is selected, the account will be excluded from letter activities distributed in marketing campaigns.
        "doNotBulkEMail": StringAttribute, // Select whether the account allows bulk email sent through campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but is excluded from email.
        "doNotBulkPostalMail": StringAttribute, // Select whether the account allows bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but will be excluded from the postal mail.
        "creditLimit": StringAttribute, // Type the credit limit of the account. This is a useful reference when you address invoice and accounting issues with the customer.
        "creditOnHold": StringAttribute, // Select whether the credit for the account is on hold. This is a useful reference while addressing the invoice and accounting issues with the customer.
        "parentAccountId": UUIDAttribute, // Choose the parent account associated with this account to show parent and child businesses in reporting and analytics.
        "aging30": StringAttribute, // For system use only.
        "aging60": StringAttribute, // For system use only.
        "aging90": StringAttribute, // For system use only.
        "address1AddressId": UUIDAttribute, // Unique identifier for address 1.
        "address1AddressTypeCode": IntegerAttribute, // Select the address type, such as primary or billing.
        "address1AddressTypeCode_display": StringAttribute, // 
        "address1Name": StringAttribute, // Type a descriptive name for the customer's address, such as Corporate Headquarters.
        "address1PrimaryContactName": StringAttribute, // Type the name of the primary contact person for the customer's address.
        "address1Line1": StringAttribute, // Type the first line of the customer's address to help identify the location.
        "address1Line2": StringAttribute, // Type the second line of the customer's address.
        "address1Line3": StringAttribute, // Type the third line of the customer's address.
        "address1City": StringAttribute, // Type the city for the customer's address to help identify the location.
        "address1StateOrProvince": StringAttribute, // Type the state or province of the customer's address.
        "address1County": StringAttribute, // Type the county for the customer's address.
        "address1Country": StringAttribute, // Type the country or region for the customer's address.
        "address1PostOfficeBox": StringAttribute, // Type the post office box number of the customer's address.
        "address1PostalCode": IntegerAttribute, // Type the ZIP Code or postal code for the address.
        "address1UTCOffset": StringAttribute, // Select the time zone for the address.
        "address1FreightTermsCode": IntegerAttribute, // Select the freight terms to make sure shipping charges are processed correctly.
        "address1FreightTermsCode_display": StringAttribute, // 
        "address1UPSZone": StringAttribute, // Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.
        "address1Latitude": StringAttribute, // Type the latitude value for the customer's address, for use in mapping and other applications.
        "address1Telephone1": StringAttribute, // Type the primary phone number for the customer's address.
        "address1Longitude": StringAttribute, // Type the longitude value for the customer's address, for use in mapping and other applications.
        "address1ShippingMethodCode": IntegerAttribute, // Select a shipping method for deliveries sent to this address.
        "address1ShippingMethodCode_display": StringAttribute, // 
        "address1Telephone2": StringAttribute, // Type a second phone number for the customer's address.
        "address1Telephone3": StringAttribute, // Type a third phone number for the customer's address.
        "address1Fax": StringAttribute, // Type the fax number associated with the customer's address.
        "address1Composite": StringAttribute, // Shows the complete address.
        "address2AddressId": UUIDAttribute, // Unique identifier for address 1.
        "address2AddressTypeCode": IntegerAttribute, // Select the address type, such as primary or billing.
        "address2AddressTypeCode_display": StringAttribute, // 
        "address2Name": StringAttribute, // Type a descriptive name for the customer's address, such as Corporate Headquarters.
        "address2PrimaryContactName": StringAttribute, // Type the name of the primary contact person for the customer's address.
        "address2Line1": StringAttribute, // Type the first line of the customer's address to help identify the location.
        "address2Line2": StringAttribute, // Type the second line of the customer's address.
        "address2Line3": StringAttribute, // Type the third line of the customer's address.
        "address2City": StringAttribute, // Type the city for the customer's address to help identify the location.
        "address2StateOrProvince": StringAttribute, // Type the state or province of the customer's address.
        "address2County": StringAttribute, // Type the county for the customer's address.
        "address2Country": StringAttribute, // Type the country or region for the customer's address.
        "address2PostOfficeBox": StringAttribute, // Type the post office box number of the customer's address.
        "address2PostalCode": IntegerAttribute, // Type the ZIP Code or postal code for the address.
        "address2UTCOffset": StringAttribute, // Select the time zone for the address.
        "address2FreightTermsCode": IntegerAttribute, // Select the freight terms to make sure shipping charges are processed correctly.
        "address2FreightTermsCode_display": StringAttribute, // 
        "address2UPSZone": StringAttribute, // Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.
        "address2Latitude": StringAttribute, // Type the latitude value for the customer's address, for use in mapping and other applications.
        "address2Telephone1": StringAttribute, // Type the primary phone number for the customer's address.
        "address2Longitude": StringAttribute, // Type the longitude value for the customer's address, for use in mapping and other applications.
        "address2ShippingMethodCode": IntegerAttribute, // Select a shipping method for deliveries sent to this address.
        "address2ShippingMethodCode_display": StringAttribute, // 
        "address2Telephone2": StringAttribute, // Type a second phone number for the customer's address.
        "address2Telephone3": StringAttribute, // Type a third phone number for the customer's address.
        "address2Fax": StringAttribute, // Type the fax number associated with the customer's address.
        "address2Composite": StringAttribute, // Shows the complete address.
        "preferredAppointmentDayCode": IntegerAttribute, // Select the preferred day of the week for service appointments.
        "preferredAppointmentDayCode_display": StringAttribute, // 
        "preferredSystemUserId": UserIdAttribute, // Choose the preferred service representative for reference when you schedule service activities for the account.
        "preferredAppointmentTimeCode": IntegerAttribute, // Select the preferred time of day for service appointments.
        "preferredAppointmentTimeCode_display": StringAttribute, // 
        "merged": StringAttribute, // Shows whether the account has been merged with another account.
        "doNotSendMM": StringAttribute, // Select whether the account accepts marketing materials, such as brochures or catalogs.
        "masterId": UUIDAttribute, // Shows the master account that the account was merged with.
        "lastUsedInCampaign": StringAttribute, // Shows the date when the account was last included in a marketing campaign or quick campaign.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "creditLimitBase": StringAttribute, // Shows the credit limit converted to the system's default base currency for reporting purposes.
        "aging30Base": StringAttribute, // The base currency equivalent of the aging 30 field.
        "revenueBase": StringAttribute, // Shows the annual revenue converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.
        "aging90Base": StringAttribute, // The base currency equivalent of the aging 90 field.
        "marketCapBase": StringAttribute, // Shows the market capitalization converted to the system's default base currency.
        "aging60Base": StringAttribute, // The base currency equivalent of the aging 60 field.
        "yomiName": StringAttribute, // Type the phonetic spelling of the company name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications.
        "stageId": UUIDAttribute, // Shows the ID of the stage.
        "processId": UUIDAttribute, // Shows the ID of the process.
        "entityImageId": UUIDAttribute, // For internal use only.
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, // Total time spent for emails (read and write) and meetings by me in relation to account record.
        "createdByExternalParty": StringAttribute, // Shows the external party who created the record.
        "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record.
        "primarySatoriId": UUIDAttribute, // Primary Satori ID for Account
        "primaryTwitterId": UUIDAttribute, // Primary Twitter ID for Account
        "slaId": UUIDAttribute, // Choose the service level agreement (SLA) that you want to apply to the Account record.
        "slaInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only.
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time.
        "followEmail": StringAttribute, // Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the account.
        "marketingOnly": StringAttribute, // Whether is only for marketing"])
      ])
      .registerPath("applications_accounts")
      .routingPath("/applications/accounts");
  }
}
mixin(EntityCalls!("AccountEntity"));

version(uim_entities) {
  unittest {
    assert(AccountEntity);
  
    auto entity = AccountEntity;
  // // auto repository = OOPRepository("mongodb://127.0.0.1:27018/?safe=true").connect;
  // auto repository = OOPFileRepository("./tests");
  /* repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found"); 

  repository.cleanupConnections; */
  }
}
