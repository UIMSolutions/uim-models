module models.commerce.channels.retails.attributes.group;

@safe:
import models.commerce;

// 
class DOPTRetailChannelAttributeGroup : DEntity {
  this() { super();
    this.addValues([
      "ttributeGroup": StringAttribute, // 
      "channel": StringAttribute, // 
      "attributeModifier": StringAttribute, // 
      "attributeGroupName": StringAttribute, // 
      "omOperatingUnitNumber": NumberAttribute, // 
      "omOperatingUnitId": UUIDAttribute, // 
      "attributeAppliesToModifier": StringAttribute, // 
      "relationship_RetailOnlineChannelEntityRelationshipId": UUIDAttribute, // 
      "backingTable_RetailChannelAttributeGroupRelationshipId": UUIDAttribute, // 
    ]);
  }

  override string entityClass() { return "optRetailChannelAttributeGroup"; }
  override string entityClasses() { return "optRetailChannelAttributeGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto OPTRetailChannelAttributeGroup() { return new DOPTRetailChannelAttributeGroup; } 
auto OPTRetailChannelAttributeGroup(Json json) { return new DOPTRetailChannelAttributeGroup(json); } 

version(test_library) { unittest {
    assert(APLFeedback);
    assert(OPTRetailChannelAttributeGroup);

  auto entity = OPTRetailChannelAttributeGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}