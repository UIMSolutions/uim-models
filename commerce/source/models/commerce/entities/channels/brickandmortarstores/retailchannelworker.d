module models.commerce.channels.brickandmortarstores.retailchannelworker;

@safe:
import models.commerce;

// 
class DRetailChannelWorkerEntity : DEntity {
  mixin(EntityThis!("RetailChannelWorkerEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "PersonnelNumber": StringAttribute, //
        "RetailChannelId": StringAttribute, //
        "IsActive": StringAttribute, //
        "BackingTable_RetailChannelWorkerExplodedRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailchannelworkers");
  }
}
mixin(EntityCalls!("RetailChannelWorkerEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailChannelWorkerEntity);
}}
