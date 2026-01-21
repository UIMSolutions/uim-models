module models.applications.entities.goals.metric;

@safe:
import models.applications;

// GoalMetric that is attached to one or more objects, including other notes.
class DGoalMetricEntity : DEntity {
  mixin(EntityThis!("GoalMetricEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Unique identifier of the organization.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "amountDataType": StringAttribute, // Data type of the amount.
        "amountDataType_display": StringAttribute, // 
        "isAmount": BooleanAttribute, // Information that indicates whether the metric type is Count or Amount.
        "isStretchTracked": BooleanAttribute, // Indicates whether the goal metric tracks stretch targets.
      ])
      .registerPath("applications_goals.metrics")
      .routingPath("/applications/goalmetrics");
  }
}
mixin(EntityCalls!("GoalMetricEntity"));

version(test_model_applications) { unittest {
    
    assert(GoalMetricEntity);
  
  auto entity = GoalMetricEntity;
  // auto repository = OOPFileRepository("./tests");
  /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}