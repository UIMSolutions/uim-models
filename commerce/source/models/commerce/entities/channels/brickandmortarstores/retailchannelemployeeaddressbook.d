module models.commerce.channels.brickandmortarstores.retailchannelemployeeaddressbook;

@safe:
import models.commerce;

// 
class DRetailChannelEmployeeAddressBookEntity : DEntity {
  mixin(EntityThis!("RetailChannelEmployeeAddressBookEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "addressBook": StringAttribute, //
        "addressBookName": StringAttribute, //
        "retailChannelId": StringAttribute, //
        "relationship_RetailStoreEntityRelationshipId": StringAttribute, //
        "backingTable_RetailStoreAddressBookRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailchannelemployeeaddressbookentity");
  }
}
mixin(EntityCalls!("RetailChannelEmployeeAddressBookEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailChannelEmployeeAddressBookEntity);
}}
