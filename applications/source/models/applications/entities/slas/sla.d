module models.applications.entities.slas.sla;

@safe:
import models.applications;

// Contains information about the tracked service-level KPIs for cases that belong to different customers.
class DSLAEntity : DEntity {
  mixin(EntityThis!("SLAEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the entity
        StatusCodeAttribute // Reason for the status of the entity
      ])
      .addValues([ // individual values
        "businessHoursId": UUIDAttribute, // Choose the business hours for calculating SLA item timelines.
        "objectTypeCode": IntegerAttribute, //Choose the entity type that the SLA is defined.
        "objectTypeCode_display": StringAttribute, // 
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UUIDAttribute, // Unique identifier for the user that owns the record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "changedAttributeList": StringAttribute, // Type additional information to describe the SLA
        "applicableFrom": StringAttribute, // Select the field that specifies the date and time from which the SLA items will be calculated for the case record. For example, if you select the Case Created On field, SLA calculation will begin from the time the case is created.
        "isDefault": BooleanAttribute, // Tells whether this SLA is the default one.
        "exchangeRate": StringAttribute, // Exchange rate between the currency associated with the SLA record and the base currency.
        "transactionCurrencyId": UUIDAttribute, // Unique identifier of the currency associated with the SLA record.
        "solutionId": UUIDAttribute, // Unique identifier of the associated solution.
        "componentState": StringAttribute, // For internal use only.
        "componentState_display": StringAttribute, // 
        "overwriteTime": TimeAttribute, // For internal use only.
        "isManaged": BooleanAttribute, // For internal use only.
        "slaIdUnique": StringAttribute, // For internal use only.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "applicableFromPickList": StringAttribute, // Select the field that specifies the date and time from which the SLA items will be calculated. For example, if you select the Case Created On field, SLA calculation will begin from the time the case is created.
        "applicableFromPickList_display": StringAttribute, // 
        "workflowId": UUIDAttribute, // Workflow associated with the SLA.
        "allowPauseResume": StringAttribute, // Select whether this SLA will allow pausing and resuming during the time calculation.
        "SLAType": StringAttribute, // Select the type of service level agreement (SLA).
        "SLAType_display": StringAttribute, // 
        "primaryEntityOTC": StringAttribute, // Shows the primary entity that the SLA has been created for.
      ])
      .registerPath("applications_slas")
      .routingPath("/applications/slas");
  }
}
mixin(EntityCalls!("SLAEntity"));

version(test_model_applications) { unittest {
    assert(SLAEntity);
  
    auto entity = SLAEntity;
  }
}