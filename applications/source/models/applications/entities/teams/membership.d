module models.applications.entities.teams.membership;

@safe:
import models.applications;

// TeamMembership that is attached to one or more objects, including other notes.
  class DTeamMembershipEntity : DEntity {
  mixin(EntityThis!("TeamMembershipEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "systemUserId":UUIDAttribute, // 
        "teamId":UUIDAttribute, // 
      ])
      .registerPath("applications_teammemberships")
      .routingPath("/applications/teammemberships");
  }
}
mixin(EntityCalls!("TeamMembershipEntity"));

version(test_model_applications) { unittest {
    
    assert(TeamMembershipEntity);
  
  auto entity = TeamMembershipEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}