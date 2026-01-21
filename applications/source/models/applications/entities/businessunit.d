module models.applications.entities.businessunit;

@safe:
import models.applications;

// Business, division, or department in the Server database.
class DBusinessUnitEntity : DEntity {
  mixin(EntityThis!("BusinessUnitEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
       ])
      .addValues([ // individual values
        "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the business unit.
        "divisionName": StringAttribute, // Name of the division to which the business unit belongs.
        "fileAsName": StringAttribute, // Alternative name under which the business unit can be filed.
        "tickerSymbol": StringAttribute, // Stock exchange ticker symbol for the business unit.
        "stockExchange": StringAttribute, // Stock exchange on which the business is listed.
        "utcOffset": StringAttribute, // utc offset for the business unit. This is the difference between local time and standard Coordinated Universal Time.
        "creditLimit": StringAttribute, // Credit limit for the business unit.
        "costCenter": StringAttribute, // Name of the business unit cost center.
        "webSiteUrl": UrlAttribute, // Website URL for the business unit.
        "ftpSiteUrl": UrlAttribute, // FTP site URL for the business unit.
        "emailAddress": StringAttribute, // Email address for the business unit.
        "inheritanceMask": StringAttribute, // Inheritance mask for the business unit.
        "workflowSuspended": StringAttribute, // Information about whether workflow or sales process rules have been suspended.
        "parentBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the parent business unit.
        "isDisabled": BooleanAttribute, // Information about whether the business unit is enabled or disabled.
        "disabledReasOn": DatetimeAttribute, // Reason for disabling the business unit.
        "address1AddressId": UUIDAttribute, // Unique identifier for address 1.
        "address1AddressTypeCode": IntegerAttribute, // Type of address for address 1, such as billing, shipping, or primary address.
        "address1AddressTypeCode_display": StringAttribute, // 
        "address1Name": StringAttribute, // Name to enter for address 1.
        "address1Line1": StringAttribute, // First line for entering address 1 information.
        "address1Line2": StringAttribute, // Second line for entering address 1 information.
        "address1Line3": StringAttribute, // Third line for entering address 1 information.
        "address1City": StringAttribute, // City name for address 1.
        "address1StateOrProvince": StringAttribute, // State or province for address 1.
        "address1County": StringAttribute, // County name for address 1.
        "address1Country": StringAttribute, // Country/region name for address 1.
        "address1PostOfficeBox": StringAttribute, // Post office box number for address 1.
        "address1PostalCode": IntegerAttribute, // ZIP Code or postal code for address 1.
        "address1UTCOffset": StringAttribute, // utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time.
        "address1UPSZone": StringAttribute, // United Parcel Service (UPS) zone for address 1.
        "address1Latitude": StringAttribute, // Latitude for address 1.
        "address1Telephone1": StringAttribute, // First telephone number associated with address 1.
        "address1Longitude": StringAttribute, // Longitude for address 1.
        "address1ShippingMethodCode": IntegerAttribute, // Method of shipment for address 1.
        "address1ShippingMethodCode_display": StringAttribute, // 
        "address1Telephone2": StringAttribute, // Second telephone number associated with address 1.
        "address1Telephone3": StringAttribute, // Third telephone number associated with address 1.
        "address1Fax": StringAttribute, // Fax number for address 1.
        "address2AddressId": UUIDAttribute, // Unique identifier for address 2.
        "address2AddressTypeCode": IntegerAttribute, // Type of address for address 2, such as billing, shipping, or primary address.
        "address2AddressTypeCode_display": StringAttribute, // 
        "address2Name": StringAttribute, // Name to enter for address 2.
        "address2Line1": StringAttribute, // First line for entering address 2 information.
        "address2Line2": StringAttribute, // Second line for entering address 2 information.
        "address2Line3": StringAttribute, // Third line for entering address 2 information.
        "address2City": StringAttribute, // City name for address 2.
        "address2StateOrProvince": StringAttribute, // State or province for address 2.
        "address2County": StringAttribute, // County name for address 2.
        "address2Country": StringAttribute, // Country/region name for address 2.
        "address2PostOfficeBox": StringAttribute, // Post office box number for address 2.
        "address2PostalCode": IntegerAttribute, // ZIP Code or postal code for address 2.
        "address2UTCOffset": StringAttribute, // utc offset for address 2. This is the difference between local time and standard Coordinated Universal Time.
        "address2UPSZone": StringAttribute, // United Parcel Service (UPS) zone for address 2.
        "address2Latitude": StringAttribute, // Latitude for address 2.
        "address2Telephone1": StringAttribute, // First telephone number associated with address 2.
        "address2Longitude": StringAttribute, // Longitude for address 2.
        "address2ShippingMethodCode": IntegerAttribute, // Method of shipment for address 2.
        "address2ShippingMethodCode_display": StringAttribute, // 
        "address2Telephone2": StringAttribute, // Second telephone number associated with address 2.
        "address2Telephone3": StringAttribute, // Third telephone number associated with address 2.
        "address2Fax": StringAttribute, // Fax number for address 2.
        "picture": StringAttribute, // Picture or diagram of the business unit.
        "calendarId": UUIDAttribute, // Fiscal calendar associated with the business unit.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the businessunit.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the businessunit with respect to the base currency.
      ])
      .registerPath("applications_businessunits")
      .routingPath("/applications/businessunits");
  }
}
mixin(EntityCalls!("BusinessUnitEntity"));

version(test_model_applications) { unittest {
    
    assert(BusinessUnitEntity);

  auto entity = BusinessUnitEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}