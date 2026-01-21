module models.commerce.channels.brickandmortarstores.retaildesignertilllayoutimagezone;

@safe:
import models.commerce;

// 
class DRetailDesignerTillLayoutImageZone : DEntity {
  mixin(EntityThis!("RetailDesignerTillLayoutImageZone"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "InstanceRelationType": StringAttribute, //
        "LayoutId": StringAttribute, //
        "PictureId": StringAttribute, //
        "Zone": StringAttribute, //
        "AxRecId": StringAttribute, //
        "BackingTable_RetailTillLayoutImageZoneRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retaildesignertilllayoutimagezones");
  }
}
mixin(EntityCalls!("RetailDesignerTillLayoutImageZone"));

version(test_model_commerce) {
  unittest {
    assert(RetailDesignerTillLayoutImageZone);
}}
