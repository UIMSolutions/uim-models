module models.commerce.channels.retails.category_attribute;

@safe:
import models.commerce;

// 
class DOPTRetailChannelCategoryAttribute : DEntity {
  mixin(EntityThis!("OPTRetailChannelCategoryAttribute"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "RetailChannelId": UUIDAttribute, // 
        "ProductCategoryHierarchyName": StringAttribute, // 
        "ProductCategoryName": StringAttribute, // 
        "AttributeName": StringAttribute, // 
        "AttributeTypeName": StringAttribute, // 
        "Relationship_ChannelRelationshipId": UUIDAttribute, // 
        "Relationship_ProductCategoryRelationshipId": UUIDAttribute, // 
        "Relationship_AttributeRelationshipId": UUIDAttribute, // 
        "backingTable_RetailChannelCategoryAttributeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("commerce_retailchannelcategoryattributes");
  }
}
mixin(EntityCalls!("OPTRetailChannelCategoryAttribute"));

version(test_library) { unittest {
    assert(OPTRetailChannelCategoryAttribute);

  auto entity = OPTRetailChannelCategoryAttribute;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
