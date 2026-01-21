module models.commerce.channels.brickandmortarstores.retaildesignertilllayoutzone;

@safe:
import models.commerce;

// 
class DRetailDesignerTillLayoutZone : DEntity {
  mixin(EntityThis!("RetailDesignerTillLayoutZone"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "reference": StringAttribute, //
        "zoneId": StringAttribute, //
        "zoneName": StringAttribute, //
        "zoneType": StringAttribute, //
        "deviceType": StringAttribute, //
        "axRecId": StringAttribute, //
        "backingTable_RetailTillLayoutZoneRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retaildesignertilllayoutzones");
  }
}
mixin(EntityCalls!("RetailDesignerTillLayoutZone"));

version(test_model_commerce) {
  unittest {
    assert(RetailDesignerTillLayoutZone);
}}
