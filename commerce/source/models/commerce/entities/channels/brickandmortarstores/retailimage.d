module models.commerce.channels.brickandmortarstores.retailimage;

@safe:
import models.commerce;

// 
class DRetailImagesEntity : DEntity {
  mixin(EntityThis!("RetailImagesEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "pictureId": StringAttribute, //
        "picture": StringAttribute, //
        "backingTable_RetailImagesRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailimages");
  }
}
mixin(EntityCalls!("RetailImagesEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailImagesEntity);
}}
