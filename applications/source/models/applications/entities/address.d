module models.applications.entities.address;

@safe:
import models.applications;

// Address and shipping information. Used to store additional addresses for an account or contact.
class DAddressEntity : DEntity {
  mixin(EntityThis!("AddressEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "parentId": UUIDAttribute, // Choose the customer's address.
        "parentIdTypeCode": IntegerAttribute, // The name of the entity linked by parentId
        "customerAddressId": UUIDAttribute, // Unique identifier of the customer address.
        "addressNumber": NumberAttribute, // Shows the number of the address, to indicate whether the address is the primary, secondary, or other address for the customer.
        "objectTypeCode": IntegerAttribute, // Shows the type code of the customer record to indicate whether the address belongs to a customer account or contact.
        "objectTypeCode_display": StringAttribute, // 
        "addressTypeCode": IntegerAttribute, // Select the address type, such as primary or billing.
        "addressTypeCode_display": StringAttribute, // 
        "primaryContactName": StringAttribute, // Type the name of the primary contact person for the customer's address.
        "line1": StringAttribute, // Type the first line of the customer's address to help identify the location.
        "line2": StringAttribute, // Type the second line of the customer's address.
        "line3": StringAttribute, // Type the third line of the customer's address.
        "city": StringAttribute, // Type the city for the customer's address to help identify the location.
        "stateOrProvince": StringAttribute, // Type the state or province of the customer's address.
        "county": StringAttribute, // Type the county for the customer's address.
        "country": StringAttribute, // Type the country or region for the customer's address.
        "postOfficeBox": StringAttribute, // Type the post office box number of the customer's address.
        "postalCode": IntegerAttribute, // Type the ZIP Code or postal code for the address.
        "utcOffset": StringAttribute, // Select the time zone for the address.
        "freightTermsCode": IntegerAttribute, // Select the freight terms to make sure shipping charges are processed correctly.
        "freightTermsCode_display": StringAttribute, // 
        "UPSZone": StringAttribute, // Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.
        "latitude": StringAttribute, // Type the latitude value for the customer's address, for use in mapping and other applications.
        "telephone1": StringAttribute, // Type the primary phone number for the customer's address.
        "longitude": StringAttribute, // Type the longitude value for the customer's address, for use in mapping and other applications.
        "shippingMethodCode": IntegerAttribute, // Select a shipping method for deliveries sent to this address.
        "shippingMethodCode_display": StringAttribute, // 
        "telephone2": StringAttribute, // Type a second phone number for the customer's address.
        "telephone3": StringAttribute, // Type a third phone number for the customer's address.
        "fax": StringAttribute, // Type the fax number associated with the customer's address.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "composite": StringAttribute, // Shows the complete address.
      ])
      .registerPath("applications_addresses")
      .routingPath("/applications/addresses");
  }
}
mixin(EntityCalls!("AddressEntity"));

version(test_model_applications) { unittest {
    
    assert(AddressEntity);
  
  auto entity = AddressEntity;
  // auto repository = OOPFileRepository("./tests");
 /*/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}