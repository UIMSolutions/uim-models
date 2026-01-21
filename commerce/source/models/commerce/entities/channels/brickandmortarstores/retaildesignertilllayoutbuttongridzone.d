module models.commerce.channels.brickandmortarstores.retaildesignertilllayoutbuttongridzone;

@safe:
import models.commerce;

// 
class DRetailDesignerTillLayoutButtonGridZone : DEntity {
  mixin(EntityThis!("RetailDesignerTillLayoutButtonGridZone"));
  
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
      .registerPath("commerce_channelmanagement_brickandmortarstore_retaildesignertilllayoutbuttongridzones");
  }
}
mixin(EntityCalls!("RetailDesignerTillLayoutButtonGridZone"));

version(test_model_commerce) {
  unittest {
    assert(RetailDesignerTillLayoutButtonGridZone);
}}
