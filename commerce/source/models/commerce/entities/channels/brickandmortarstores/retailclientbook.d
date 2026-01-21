module models.commerce.channels.brickandmortarstores.retailclientbook;

@safe:
import models.commerce;

// 
class DRetailClientBookEntity : DEntity {
  mixin(EntityThis!("RetailClientBookEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "BackingTable_RetailClientBookRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailclientbooks");
  }
}
mixin(EntityCalls!("RetailClientBookEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailClientBookEntity);
}}
