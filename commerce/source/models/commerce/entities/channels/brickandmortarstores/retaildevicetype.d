module models.commerce.channels.brickandmortarstores.retaildevicetype;

@safe:
import models.commerce;

// 
class DRetailDeviceTypeEntity : DEntity {
  mixin(EntityThis!("RetailDeviceTypeEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "designerForm": StringAttribute, 
        "type": StringAttribute, 
        "backingTable_RetailDeviceTypesRelationshipId": StringAttribute,       ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retaildevicetypes");
  }
}
mixin(EntityCalls!("RetailDeviceTypeEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailDeviceTypeEntity);
}}
