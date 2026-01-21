module models.applications.entities.task;

@safe:
import models.applications;

// Task that is attached to one or more objects, including other notes.
class DTaskEntity : DEntity {
  mixin(EntityThis!("TaskEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the task is open, completed, or canceled. Completed and canceled tasks are read-only and can't be edited.
        StatusCodeAttribute // Select the task's status.
      ])       
      .addValues([
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "activityId": UUIDAttribute, // Unique identifier of the activity.
        "activityTypeCode": IntegerAttribute, // Type of activity.
        "isBilled": BooleanAttribute, // Information regarding whether the fax activity was billed as part of resolving a case.
        "isRegularActivity": BooleanAttribute, // Information regarding whether the activity is a regular activity type or event type.
        "isWorkflowCreated": BooleanAttribute, // Information regarding whether the activity was created from a workflow rule.
        "priorityCode": IntegerAttribute, // Priority of the activity.
        "priorityCode_display": StringAttribute, // 
        "regardingObjectId": UUIDAttribute, // Unique identifier of the object with which the activity is associated.
        "regardingObjectTypeCode": IntegerAttribute, // The name of the entity linked by regardingObjectId
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity.
        "scheduledStart": StringAttribute, // Scheduled start time of the activity.
        "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted.
        "subject": StringAttribute, // Subject associated with the activity.
        "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes.
        "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes.
        "actualEnd": StringAttribute, // Actual end time of the activity.
        "actualStart": StringAttribute, // Actual start time of the activity.
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only.
        "percentComplete": StringAttribute, // Type the percentage complete value for the task to track tasks to completion.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "processId": UUIDAttribute, // Shows the ID of the process.
        "stageId": UUIDAttribute, // Shows the ID of the stage.
        "traversedPath": StringAttribute, // For internal use only.
        "crmTaskAssignedUniqueId": UUIDAttribute, // Assigned Task Unique Id
        "slaId": UUIDAttribute, // Choose the service level agreement (SLA) that you want to apply to the Task record.
        "slaInvokedId": UUIDAttribute, // Last SLA that was applied to this Task. This field is for internal use only.
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time.
      ])
      .registerPath("applications_tasks")
      .routingPath("/applications/tasks");
  }
}
mixin(EntityCalls!("TaskEntity"));

version(test_model_applications) { unittest {
    assert(TaskEntity);
  
    auto entity = TaskEntity;
  }
}
