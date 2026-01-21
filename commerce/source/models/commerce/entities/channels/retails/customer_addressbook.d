module models.commerce.channels.retails.customer_addressbook;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCustomerAddressBook : DEntity {
  mixin(EntityThis!("OPTRetailChannelCustomerAddressBook"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "AddressBook": StringAttribute, // 
        "AddressBookName": StringAttribute, // 
        "RetailChannelId": UUIDAttribute, // 
        "Relationship_RetailStoreEntityRelationshipId": UUIDAttribute, // 
        "Relationship_RetailOnlineChannelEntityRelationshipId": UUIDAttribute, // 
        "backingTable_RetailStoreAddressBookRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("commerce_retailchannelcustomeraddressbooks");
  }
}
mixin(EntityCalls!("OPTRetailChannelCustomerAddressBook"));

version(test_model_commerce) {
  unittest {
    assert(OPTRetailChannelCustomerAddressBook);

  auto entity = OPTRetailChannelCustomerAddressBook;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
