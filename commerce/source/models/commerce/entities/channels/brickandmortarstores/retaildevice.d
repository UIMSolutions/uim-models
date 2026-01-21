module models.commerce.channels.brickandmortarstores.retaildevice;

@safe:
import models.commerce;

// 
class DRetailDeviceEntity : DEntity {
  mixin(EntityThis!("RetailDeviceEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activatedDateTime": StringAttribute, 
        "activationStaffId": StringAttribute, 
        "activationStatus": StringAttribute, 
        "deactivateComments": StringAttribute, 
        "deactivatedDateTime": StringAttribute, 
        "deactivationStaffId": StringAttribute, 
        "deviceId": StringAttribute, 
        "terminal": StringAttribute, 
        "type": StringAttribute, 
        "physicalDeviceId": StringAttribute, 
        "retailDeviceType": StringAttribute, 
        "activationGuid": StringAttribute, 
        "allowMassActivation": StringAttribute, 
        "mergedSelfServicePackageReference": StringAttribute, 
        "backingTable_RetailDeviceRelationshipId": StringAttribute, 
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retaildevices");
  }
}
mixin(EntityCalls!("RetailDeviceEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailDeviceEntity);
}}
