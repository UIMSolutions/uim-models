module models.applications.elements.owner;

@safe:
import models.applications;


/* Old: 
"ownerId": UUIDAttribute, // The owner Id
"ownerIdType": StringAttribute, // The type of owner, either User or Team.
"owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
"owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
"owningTeamId": TeamIdAttribute, // Unique identifier for the team that owns the record.

New:
  Owner.id
  Owner.idType
  Owner.businessUnitId
  Owner.userId
  Owner.teamId
 */
class DOwnerElement : DElement {
  mixin(ElementThis!("OwnerElement"));  

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
        "id": UUIDAttribute, // The id of owner, either User or Team
        "idType": StringAttribute, // The type of owner, either User or Team
        "businessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "userId": UserIdAttribute, // Unique identifier of the user that owns the activity
        "teamId": TeamIdAttribute, // Unique identifier for the team that owns the record
      ]);
  }
}
mixin(ElementCalls!("OwnerElement"));  

version(test_models_applications) version(test_models_applications) { unittest {  
    assert(OwnerElement);

    writeln(OwnerElement);
}}
