module models.commerce.channels.brickandmortarstores.retailitemlabel;

@safe:
import models.commerce;

// 
class DRetailImagesEntity : DEntity {
  mixin(EntityThis!("RetailItemLabelEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "comparisonPriceOnShelfLabel": StringAttribute, // 
        "dimensionNumber": StringAttribute, // 
        "itemBarCode": StringAttribute, // 
        "itemId": StringAttribute, // 
        "labelType": StringAttribute, // 
        "primaryKey": StringAttribute, // 
        "printed": StringAttribute, // 
        "quantity": StringAttribute, // 
        "reportName": StringAttribute, // 
        "storeNumber": StringAttribute, // 
        "text1": StringAttribute, // 
        "text2": StringAttribute, // 
        "type": StringAttribute, // 
        "unitOfMeasureSymbol": StringAttribute, // 
        "validOnDate": StringAttribute, // 
        "variantId": StringAttribute, // 
        "size": StringAttribute, // 
        "color": StringAttribute, // 
        "style": StringAttribute, // 
        "configId": StringAttribute, // 
        "price": StringAttribute, // 
        "relationship_EcoResReleasedProductV2EntityRelationshipId": StringAttribute, // 
        "backingTable_RetailInventItemLabelRelationshipId": StringAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, // 
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailitemlabels");
  }
}
mixin(EntityCalls!("RetailImagesEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailImagesEntity);
}}
