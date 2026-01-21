module models.commerce.channels.brickandmortarstores.retailbuttongrid;

@safe:
import models.commerce;

// 
class DRetailButtonGridEntity : DEntity {
  mixin(EntityThis!("RetailButtonGridEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "buttonGridId": StringAttribute, //
        "defaultColor": StringAttribute, //
        "defaultFontSize": StringAttribute, //
        "defaultFontStyle": StringAttribute, //
        "font": StringAttribute, //
        "keyboardUsed": StringAttribute, //
        "spaceBetweenButtons": StringAttribute, //
        "backingTable_RetailButtonGridRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailbuttongridentity");
  }
}
mixin(EntityCalls!("RetailButtonGridEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailButtonGridEntity);
}}
