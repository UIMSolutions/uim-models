module models.commerce.channels.retails.attributes.value;

@safe:
import models.commerce;

// 
class DOPTRetailChannelAttributeValue : DEntity {
  mixin(EntityThis!("OPTRetailChannelAttributeValue"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "RetailChannelId": UUIDAttribute, //  
        "AttributeGroupName": StringAttribute, //  
        "AttributeName": StringAttribute, //  
        "AttributeTypeName": StringAttribute, //  
        "TextValue": StringAttribute, //  
        "CurrencyCode": StringAttribute, //  
        "CurrencyValue": StringAttribute, //  
        "DateTimeValue": StringAttribute, //  
        "DecimalValue": StringAttribute, //  
        "IntegerValue": StringAttribute, //  
        "BooleanValue": StringAttribute, //  
        "backingTable_RetailChannelTableRelationshipId": UUIDAttribute, //  
      ])
      .registerPath("commerce_retailchannelattributevalues");
  }
}
mixin(EntityCalls!("OPTRetailChannelAttributeValue"));

version(test_library) { unittest {
    assert(APLFeedback);
    assert(OPTRetailChannelAttributeValue);

  auto entity = OPTRetailChannelAttributeValue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}