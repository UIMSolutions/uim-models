module models.applications.entities.connections.connection;

@safe:
import models.applications;

// Role describing a relationship between a two records.
class DConnectionEntity : DEntity {
  mixin(EntityThis!("ConnectionEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Status of the connection role.
        StatusCodeAttribute // Reason for the status of the connection role.
      ])
      .addValues([
        "connectionRoleId": UUIDAttribute, // Unique identifier of the connection role.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "category": StringAttribute, // Categories for connection roles.
        "category_display": StringAttribute, // 
        "organizationId": UUIDAttribute, // Unique identifier of the organization that this connection role belongs to.
        "solutionId": UUIDAttribute, // Unique identifier of the associated solution.
        "componentState": StringAttribute, // State of the component.
        "componentState_display": StringAttribute, // 
        "overwriteTime": TimeAttribute, // Date and time when the record was last overwritten.
        "connectionRoleIdUnique": StringAttribute, // Unique identifier of the published or unpublished connection role record.
        "isManaged": BooleanAttribute, // Indicates whether the solution component is part of a managed solution.
        "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized.
        "introducedVersiOn": DatetimeAttribute, // Version in which the form is introduced.
      ])
      .registerPath("applications_connections")
      .routingPath("/applications/connections");
  }
}
mixin(EntityCalls!("ConnectionEntity"));

version(test_model_applications) { unittest {    
    assert(ConnectionEntity);
  
    auto entity = ConnectionEntity;
  }
}
