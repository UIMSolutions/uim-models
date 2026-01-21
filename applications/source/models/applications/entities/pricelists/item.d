module models.applications.entities.pricelists.item;

@safe:
import models.applications;

// Information about how to price a product in the specified price level, including pricing method, rounding option, and discount type based on a specified product unit.
class DPriceListItemEntity : DEntity {
  mixin(EntityThis!("PriceListItemEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
       ])
      .addValues([ // individual values
        "productPriceLevelId": UUIDAttribute, // Unique identifier of the price list.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity.
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located.
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.
        "amount": StringAttribute, // Monetary amount for the price list.
        "transactionCurrencyId": UUIDAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "amountBase": StringAttribute, // Value of the Amount in base currency.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the price list.
        "percentage": PercentageAttribute, // Percentage for the price list.
        "priceLevelId": UUIDAttribute, // Unique identifier of the price level associated with this price list.
        "pricingMethodCode": StringAttribute, // Pricing method applied to the price list.
        "pricingMethodCode_display": StringAttribute, // 
        "productId": UUIDAttribute, // Product associated with the price list.
        "productNumber": NumberAttribute, // User-defined product number.
        "quantitySellingCode": StringAttribute, // Quantity of the product that must be sold for a given price level.
        "quantitySellingCode_display": StringAttribute, // 
        "roundingOptionAmount": StringAttribute, // Rounding option amount for the price list.
        "roundingOptionAmountBase": StringAttribute, // Value of the Rounding Amount in base currency.
        "roundingOptionCode": StringAttribute, // Option for rounding the price list.
        "roundingOptionCode_display": StringAttribute, // 
        "roundingPolicyCode": StringAttribute, // Policy for rounding the price list.
        "roundingPolicyCode_display": StringAttribute, // 
        "uoMId": UUIDAttribute, // Unique identifier of the unit for the price list.
        "uoMScheduleId": UUIDAttribute, // Unique identifier of the unit schedule for the price list.
      ])
      .registerPath("applications_pricelists.items")
      .routingPath("/applications");
  }
}
mixin(EntityCalls!("PriceListItemEntity"));

version(test_model_applications) { unittest {
    
    assert(PriceListItemEntity);
  
  auto entity = PriceListItemEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}