module models.commerce.channels.brickandmortarstores.retailformlayout;

@safe:
import models.commerce;

// 
class DRetailFormLayoutEntity : DEntity {
  mixin(EntityThis!("RetailFormLayoutEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "formLayoutId": StringAttribute, //
        "footerXML": StringAttribute, //
        "headerXML": StringAttribute, //
        "layoutType": StringAttribute, //
        "linesXML": StringAttribute, //
        "printAsSlip": StringAttribute, //
        "printBehaviour": StringAttribute, //
        "promptQuestion": StringAttribute, //
        "title": StringAttribute, //
        "upperCase": StringAttribute, //
        "backingTable_RetailFormLayoutRelationshipId": StringAttribute, //      
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailformlayouts");
  }
}
mixin(EntityCalls!("RetailFormLayoutEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailFormLayoutEntity);
}}
