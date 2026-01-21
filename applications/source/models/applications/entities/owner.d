module models.applications.entities.owner;

@safe:
import models.applications;

// Group of undeleted system users and undeleted teams. Owners can be used to control access to specific objects.
class DOwnerEntity : DEntity {
  mixin(EntityThis!("OwnerEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ownerIdType": StringAttribute, // 
        "yomiName": StringAttribute, // Pronunciation of the name of the owner, written in phonetic hiragana or katakana characters.
      ])
      .registerPath("applications_owners")
      .routingPath("/applications/owners");
  }
}
mixin(EntityCalls!("OwnerEntity"));

version(test_model_applications) { unittest {
    
    assert(OwnerEntity);
  
  auto entity = OwnerEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}