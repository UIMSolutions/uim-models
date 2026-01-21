module models.applications.entities.territory;

@safe:
import models.applications;

// Territory represents sales regions.
class DTerritoryEntity : DEntity {
  mixin(EntityThis!("TerritoryEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Unique identifier for the organization	applicationCommon
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "managerId": UUIDAttribute, // Unique identifier of the manager of the territory.
        "entityImageId": UUIDAttribute, // applicationCommon
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the territory with respect to the base currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the territory.
      ])
      .registerPath("applications_territories")
      .routingPath("/applications/territories");
  }
}
mixin(EntityCalls!("TerritoryEntity"));

version(test_model_applications) { unittest {
    assert(TerritoryEntity);
  
    auto entity = TerritoryEntity;
  }
}