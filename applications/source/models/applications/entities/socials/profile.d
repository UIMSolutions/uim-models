module models.applications.entities.socials.profile;

@safe:
import models.applications;

// This entity is used to store social profile information of its associated account and contacts on different social channels.
class DSocialProfileEntity : DEntity {
  mixin(EntityThis!("SocialProfileEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerAttribute, // Owner Id
        StateCodeAttribute, // Status of the Social Profile
        StatusCodeAttribute // Reason for the status of the Social Profile
      ])
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "socialProfileId": UUIDAttribute, // Unique Identifier of the social profile name.
        "profileName": StringAttribute, // Shows the name of the social profile on the corresponding social channel.
        "profileFullName": StringAttribute, // Shows the display name of the customer on this social profile.
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact.
        "blocked": StringAttribute, // Identifies if the social profile has been blocked.
        "community": StringAttribute, // Identifies where the social profile originated from, such as Twitter, or Facebook.
        "community_display": StringAttribute, // 
        "influenceScore": StringAttribute, // Shows the score that determines the online social influence of the social profile.
        "profileLink": StringAttribute, // Shows the customer that this social profile belongs to.
        "uniqueProfileId": UUIDAttribute, // Unique ID of the Profile ID
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
      ])
      .registerPath("applications_socialprofiles")
      .routingPath("/applications/socialprofiles");
  }
}
mixin(EntityCalls!("SocialProfileEntity"));

version(test_model_applications) { unittest {
    
    assert(SocialProfileEntity);
  
  auto entity = SocialProfileEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}