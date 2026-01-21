module models.applications.entities.teams.team;

@safe:
import models.applications;

// Collection of system users that routinely collaborate. Teams can be used to simplify record sharing and provide team members with common access to organization data when team members belong to different Business Units.
class DTeamEntity : DEntity {
  mixin(EntityThis!("TeamEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
      ])
      .addValues([ // individual values
        "teamId": TeamIdAttribute, // , // Unique identifier for the team.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the team.
        "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit with which the team is associated.
        "emailAddress": StringAttribute, // Email address for the team.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "administratorId": UUIDAttribute, // Unique identifier of the user primary responsible for the team.
        "isDefault": BooleanAttribute, // Information about whether the team is a default business unit team.
        "yomiName": StringAttribute, // Pronunciation of the full name of the team, written in phonetic hiragana or katakana characters.
        "traversedPath": StringAttribute, // For internal use only.
        "queueId": UUIDAttribute, // Unique identifier of the default queue for the team.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the team.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the team with respect to the base currency.
        "teamType": StringAttribute, // Select the team type.
        "teamType_display": StringAttribute, // 
        "teamTemplateId": UUIDAttribute, // Shows the team template that is associated with the team.
        "regardingObjectId": UUIDAttribute, // Choose the record that the team relates to.
        "systemManaged": StringAttribute, // Select whether the team will be managed by the system.
        "stageId": UUIDAttribute, // Shows the ID of the stage.
        "processId": UUIDAttribute, // Shows the ID of the process.
      ])
      .registerPath("applications_teams")
      .routingPath("/applications/teams");
  }
}
mixin(EntityCalls!("TeamEntity"));

version(test_model_applications) { unittest {
    
    assert(TeamEntity);

  auto entity = TeamEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}