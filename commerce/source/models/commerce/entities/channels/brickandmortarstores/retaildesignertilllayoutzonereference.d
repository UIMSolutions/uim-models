module models.commerce.channels.brickandmortarstores.retaildesignertilllayoutzonereference;

@safe:
import models.commerce;

// 
class DRetailDesignerTillLayoutZoneReference : DEntity {
  mixin(EntityThis!("RetailDesignerTillLayoutZoneReference"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "instanceRelationType": StringAttribute, //
        "layoutId": StringAttribute, //
        "zone": StringAttribute, //
        "axRecId": StringAttribute, //
        "backingTable_RetailTillLayoutZoneReferenceRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retaildesignertilllayoutzonereference");
  }
}
mixin(EntityCalls!("RetailDesignerTillLayoutZoneReference"));

version(test_model_commerce) {
  unittest {
    assert(RetailDesignerTillLayoutZoneReference);
}}
