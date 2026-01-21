module models.applications.entities.user;

@safe:
import models.applications;

// Person with access to the system / application and who owns objects in the system / application database.
class DUserEntity : DEntity {
  mixin(EntityThis!("UserEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Unique identifier of the delegate user who created the systemuser
        ModifiedOnBehalfByAttribute, // Unique identifier of the delegate user who last modified the systemuser
      ])
      .addValues([
        "systemUserId": UserIdAttribute, // Unique identifier for the user
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the user
        "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit with which the user is associated
        "parentSystemUserId": UserIdAttribute, // Unique identifier of the manager of the user
        "firstName": StringAttribute, // First name of the user
        "salutatiOn": DatetimeAttribute, // Salutation for correspondence with the user
        "middleName": StringAttribute, // Middle name of the user
        "lastName": StringAttribute, // Last name of the user
        "personalEMailAddress": StringAttribute, // Personal email address of the user
        "fullName": StringAttribute, // Full name of the user
        "nickName": StringAttribute, // Nickname of the user
        "title": StringAttribute, // Title of the user
        "internalEMailAddress": StringAttribute, // Internal email address for the user
        "jobTitle": StringAttribute, // Job title of the user
        "mobileAlertEMail": StringAttribute, // Mobile alert email address for the user
        "preferredEmailCode": IntegerAttribute, // Preferred email address for the user
        "preferredEmailCode_display": StringAttribute, // 
        "homePhone": StringAttribute, // Home phone number for the user
        "mobilePhone": StringAttribute, // Mobile phone number for the user
        "preferredPhoneCode": IntegerAttribute, // Preferred phone number for the user
        "preferredPhoneCode_display": StringAttribute, // 
        "preferredAddressCode": IntegerAttribute, // Preferred address for the user
        "preferredAddressCode_display": StringAttribute, // 
        "photoUrl": UrlAttribute, // URL for the Website on which a photo of the user is located
        "domainName": StringAttribute, // Active Directory domain of which the user is a member
        "passportLo": StringAttribute, // For internal use only
        "passportHi": StringAttribute, // For internal use only
        "disabledReasOn": DatetimeAttribute, // Reason for disabling the user
        "employeeId": UUIDAttribute, // Employee identifier for the user
        "isDisabled": BooleanAttribute, // Information about whether the user is enabled
        "governmentId": UUIDAttribute, // Government identifier for the user
        "address1AddressId": UUIDAttribute, // Unique identifier for address 1
        "address1AddressTypeCode": IntegerAttribute, // Type of address for address 1, such as billing, shipping, or primary address
        "address1AddressTypeCode_display": StringAttribute, // 
        "address1Name": StringAttribute, // Name to enter for address 1
        "address1Line1": StringAttribute, // First line for entering address 1 information
        "address1Line2": StringAttribute, // Second line for entering address 1 information
        "address1Line3": StringAttribute, // Third line for entering address 1 information
        "address1City": StringAttribute, // City name for address 1
        "address1StateOrProvince": StringAttribute, // State or province for address 1
        "address1County": StringAttribute, // County name for address 1
        "address1Country": StringAttribute, // Country/region name in address 1
        "address1PostOfficeBox": StringAttribute, // Post office box number for address 1
        "address1PostalCode": IntegerAttribute, // ZIP Code or postal code for address 1
        "address1UTCOffset": StringAttribute, // utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time
        "address1UPSZone": StringAttribute, // United Parcel Service (UPS) zone for address 1
        "address1Latitude": StringAttribute, // Latitude for address 1
        "address1Telephone1": StringAttribute, // First telephone number associated with address 1
        "address1Longitude": StringAttribute, // Longitude for address 1
        "address1ShippingMethodCode": IntegerAttribute, // Method of shipment for address 1
        "address1ShippingMethodCode_display": StringAttribute, // 
        "address1Telephone2": StringAttribute, // Second telephone number associated with address 1
        "address1Telephone3": StringAttribute, // Third telephone number associated with address 1
        "address1Fax": StringAttribute, // Fax number for address 1
        "address2AddressId": UUIDAttribute, // Unique identifier for address 2
        "address2AddressTypeCode": IntegerAttribute, // Type of address for address 2, such as billing, shipping, or primary address
        "address2AddressTypeCode_display": StringAttribute, // 
        "address2Name": StringAttribute, // Name to enter for address 2
        "address2Line1": StringAttribute, // First line for entering address 2 information
        "address2Line2": StringAttribute, // Second line for entering address 2 information
        "address2Line3": StringAttribute, // Third line for entering address 2 information
        "address2City": StringAttribute, // City name for address 2
        "address2StateOrProvince": StringAttribute, // State or province for address 2
        "address2County": StringAttribute, // County name for address 2
        "address2Country": StringAttribute, // Country/region name in address 2
        "address2PostOfficeBox": StringAttribute, // Post office box number for address 2
        "address2PostalCode": IntegerAttribute, // ZIP Code or postal code for address 2
        "address2UTCOffset": StringAttribute, // utc offset for address 2. This is the difference between local time and standard Coordinated Universal Time
        "address2UPSZone": StringAttribute, // United Parcel Service (UPS) zone for address 2
        "address2Latitude": StringAttribute, // Latitude for address 2
        "address2Telephone1": StringAttribute, // First telephone number associated with address 2
        "address2Longitude": StringAttribute, // Longitude for address 2
        "address2ShippingMethodCode": IntegerAttribute, // Method of shipment for address 2
        "address2ShippingMethodCode_display": StringAttribute, // 
        "address2Telephone2": StringAttribute, // Second telephone number associated with address 2
        "address2Telephone3": StringAttribute, // Third telephone number associated with address 2
        "address2Fax": StringAttribute, // Fax number for address 2
        "skills": StringAttribute, // Skill set of the user
        "displayInServiceViews": StringAttribute, // Whether to display the user in service views
        "calendarId": UUIDAttribute, // Fiscal calendar associated with the user
        "setupUser": StringAttribute, // Check if user is a setup user
        "windowsLiveId": UUIDAttribute, // Windows Live ID
        "incomingEmailDeliveryMethod": StringAttribute, // Incoming email delivery method for the user
        "incomingEmailDeliveryMethod_display": StringAttribute, // 
        "outgoingEmailDeliveryMethod": StringAttribute, // Outgoing email delivery method for the user
        "outgoingEmailDeliveryMethod_display": StringAttribute, // 
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record
        "accessMode": StringAttribute, // Type of user
        "accessMode_display": StringAttribute, // 
        "inviteStatusCode": IntegerAttribute, // User invitation status
        "inviteStatusCode_display": StringAttribute, // 
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only
        "yomiFullName": StringAttribute, // Pronunciation of the full name of the user, written in phonetic hiragana or katakana characters
        "yomiLastName": StringAttribute, // Pronunciation of the last name of the user, written in phonetic hiragana or katakana characters
        "yomiMiddleName": StringAttribute, // Pronunciation of the middle name of the user, written in phonetic hiragana or katakana characters
        "yomiFirstName": StringAttribute, // Pronunciation of the first name of the user, written in phonetic hiragana or katakana characters
        "isIntegrationUser": BooleanAttribute, // Check if user is an integration user
        "defaultFiltersPopulated": StringAttribute, // Indicates if default outlook filters have been populated
        "queueId": UUIDAttribute, // Unique identifier of the default queue for the user
        "emailRouterAccessApproval": StringAttribute, // Shows the status of the primary email address
        "emailRouterAccessApproval_display": StringAttribute, // 
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the systemuser
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the systemuser with respect to the base currency
        "CALType": StringAttribute, // License type of user
        "CALType_display": StringAttribute, // 
        "isLicensed": BooleanAttribute, // Information about whether the user is licensed
        "isSyncWithDirectory": BooleanAttribute, // Information about whether the user is synced with the directory
        "yammerEmailAddress": StringAttribute, // User's Yammer login email address
        "yammerUserId": UserIdAttribute, // User's Yammer ID
        "defaultMailbox": StringAttribute, // Select the mailbox associated with this user
        "userLicenseType": StringAttribute, // Shows the type of user license
        "entityImageId": UUIDAttribute, // For internal use only
        "address2Composite": StringAttribute, // Shows the complete secondary address
        "address1Composite": StringAttribute, // Shows the complete primary address
        "processId": UUIDAttribute, // Shows the ID of the process
        "stageId": UUIDAttribute, // Shows the ID of the stage
        "isEmailAddressApprovedByO365Admin": BooleanAttribute, // Shows the status of approval of the email address by O365 Admin
        "positionId": UUIDAttribute, // User's position in hierarchical security model
        "traversedPath": StringAttribute, // For internal use only
        "sharePointEmailAddress": StringAttribute, // SharePoint Work Email Address
        "mobileOfflineProfileId": UUIDAttribute, // Items contained with a particular SystemUser
        "defaultOdbFolderName": StringAttribute, // Type a default folder name for the user's OneDrive For Business location
        "applicationId": UUIDAttribute, // The identifier for the application. This is used to access data in another application
        "applicationIdUri": StringAttribute, // The URI used as a unique logical identifier for the external app. This can be used to validate the application
        "azureActiveDirectoryObjectId": UUIDAttribute, // This is the application directory object Id
        "identityId": UUIDAttribute, // For internal use only
        "territoryId": UUIDAttribute, // Unique identifier of the territory to which the user is assigned
      ])
      .registerPath("applications_users")
      .routingPath("/applications/users");
  }
}
mixin(EntityCalls!("UserEntity"));

version(test_model_applications) { unittest {
    
    assert(UserEntity);
  
  auto entity = UserEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}