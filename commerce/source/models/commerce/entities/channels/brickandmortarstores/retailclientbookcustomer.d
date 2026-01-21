module models.commerce.channels.brickandmortarstores.retailclientbookcustomer;

@safe:
import models.commerce;

// 
class DRetailClientBookCustomerEntity : DEntity {
  mixin(EntityThis!("RetailClientBookCustomerEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "customerAccountNumber": StringAttribute, //
        "clientBookId": StringAttribute, //
        "backingTable_RetailClientBookCustomerRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailclientbookcustomers");
  }
}
mixin(EntityCalls!("RetailClientBookCustomerEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailClientBookCustomerEntity);
}}
