module models.applications.entities.pricelists.pricelist;

@safe:
import models.applications;

// Entity that defines pricing levels.
// name = Name of the price list.
class DPriceListEntity : DEntity {
  mixin(EntityThis!("PriceListEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Unique identifier for the organization
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "beginDate": DateAttribute, // Date on which the price list becomes effective.
        "description": StringAttribute, // Description of the price list.
        "endDate": DateAttribute, // Date that is the last day the price list is valid.
        "freightTermsCode": StringAttribute, // Freight terms for the price list.
        "freightTermsCode_display": StringAttribute, // 
        "paymentMethodCode": StringAttribute, // Payment terms to use with the price list.
        "paymentMethodCode_display": StringAttribute, // 
        "shippingMethodCode": StringAttribute, // Method of shipment for products in the price list.
        "shippingMethodCode_display": StringAttribute, // 
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "transactionCurrencyId": UUIDAttribute, // Unique identifier of the currency associated with the price level.
        "copiedFromPriceLevel": StringAttribute, // Shows the price level that this price level was copied from.
        "entity": StringAttribute, // Select the entity for this price level.
        "entity_display": StringAttribute, // 
        "module": StringAttribute, // Select the context for this price level i.e whether it is sales prices, cost prices or purchase prices
        "module_display": StringAttribute, // 
        "timeUnit": StringAttribute, // Select the default unit of role based time on this price list
      ])
      .registerPath("applications_accounts")
      .routingPath("/applications");
  }
}
mixin(EntityCalls!("PriceListEntity"));

version(test_model_applications) { unittest {
    
    assert(PriceListEntity);

    auto entity = PriceListEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}