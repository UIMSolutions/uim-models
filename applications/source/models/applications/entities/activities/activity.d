module models.applications.entities.activities.activity;

@safe:
import models.applications;

// Task performed, or to be performed, by a user. An activity is any action for which an entry can be made on a calendar.
class DActivityEntity : DEntity {
  mixin(EntityThis!("ActivityEntity"));
  
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
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "activityId": UUIDAttribute, // Unique identifier of the activity.
        "activityTypeCode": IntegerAttribute, // Type of activity.
        "isBilled": BooleanAttribute, // Information regarding whether the activity was billed as part of resolving a case.
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
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only.
        "instanceTypeCode": IntegerAttribute, // Type of instance of a recurring series.
        "instanceTypeCode_display": StringAttribute, // 
        "isMapiPrivate": BooleanAttribute, // For internal use only.
        "seriesId": UUIDAttribute, // Uniqueidentifier specifying the id of recurring series of an instance.
        "sentOn": DatetimeAttribute, // Date and time when the activity was sent.
        "senderMailboxId": UUIDAttribute, // Unique identifier of the mailbox associated with the sender of the email message.
        "deliveryPriorityCode": IntegerAttribute, // Priority of delivery of the activity to the email server.
        "deliveryPriorityCode_display": StringAttribute, // 
        "community": StringAttribute, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only.
        "community_display": StringAttribute, // 
        "leftVoiceMail": StringAttribute, // Left the voice mail
        "deliveryLastAttemptedOn": DatetimeAttribute, // Date and time when the delivery of the activity was last attempted.
        "exchangeItemId": UUIDAttribute, // The message id of activity which is returned from Exchange Server.
        "exchangeWebLink": StringAttribute, // Shows the web link of Activity of type email.
        "postponeActivityProcessingUntil": StringAttribute, // For internal use only.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the activitypointer.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the activitypointer with respect to the base currency.
        "allActivityParties": StringAttribute, // All activity parties associated with this activity.
        "traversedPath": StringAttribute, // For internal use only.
        "processId": UUIDAttribute, // Unique identifier of the Process.
        "stageId": UUIDAttribute, // Unique identifier of the Stage.
        "slaId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the case record.
        "slaInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only.
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time.
      ])
      .registerPath("applications_activities")
      .routingPath("/applications/activities");
  }
}
mixin(EntityCalls!("ActivityEntity"));

version(test_model_applications) { unittest {
    
    assert(ActivityEntity);

    auto entity = ActivityEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  writeln("Activity Namespace = ", DActivityEntity.namespace);
  }
}
