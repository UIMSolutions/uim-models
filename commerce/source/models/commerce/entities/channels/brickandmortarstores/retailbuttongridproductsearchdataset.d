module models.commerce.channels.brickandmortarstores.retailbuttongridproductsearchdataset;

@safe:
import models.commerce;

// 
class DRetailButtonGridProductSearchDataSet : DEntity {
  mixin(EntityThis!("RetailButtonGridProductSearchDataSet"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ItemId": StringAttribute, //
        "SearchName": StringAttribute, //
        "LanguageId": StringAttribute, //
        "BackingTable_InventTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_RetailButtonGridProductSearchDataSet");
  }
}
mixin(EntityCalls!("RetailButtonGridProductSearchDataSet"));

version(test_model_commerce) {
  unittest {
    assert(RetailButtonGridProductSearchDataSet);
}}
