module models.commerce.channels.brickandmortarstores.retailbuttongridbutton;

@safe:
import models.commerce;

// 
class DRetailButtonGridButtonsEntity : DEntity {
  mixin(EntityThis!("RetailButtonGridButtonsEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "action": StringAttribute, //
        "actionProperty": StringAttribute, //
        "backColor": StringAttribute, //
        "backColor2": StringAttribute, //
        "borderColor": StringAttribute, //
        "buttonGridId": StringAttribute, //
        "col": StringAttribute, //
        "colour": StringAttribute, //
        "colSpan": StringAttribute, //
        "displayText": StringAttribute, //
        "fontColor": StringAttribute, //
        "fontSize": StringAttribute, //
        "fontStyle": StringAttribute, //
        "gradientMode": StringAttribute, //
        "imageAlignment": StringAttribute, //
        "newImageAlignment": StringAttribute, //
        "newTextAlignment": StringAttribute, //
        "pictureId": StringAttribute, //
        "rowNum": StringAttribute, //
        "rowSpan": StringAttribute, //
        "useCustomLookAndFeel": StringAttribute, //
        "enableCustomFontForPOS": StringAttribute, //
        "hideButtonText": StringAttribute, //
        "tooltip": StringAttribute, //
        "enableLiveContent": StringAttribute, //
        "notificationContentAlignment": StringAttribute, //
        "backingTable_RetailButtonGridButtonsRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailbuttongridbuttons");
  }
}
mixin(EntityCalls!("RetailButtonGridButtonsEntity"));

version(test_model_commerce) {
  unittest {
    assert(OPTRetailChannelCurrency);

  auto entity = OPTRetailChannelCurrency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
