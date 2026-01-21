module models.applications.entities.appointment;

@safe:
import models.applications;

// Commitment representing a time interval with start/end times and duration.
class DAppointmentEntity : DEntity {
  mixin(EntityThis!("AppointmentEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the appointment is open, completed, or canceled. Completed and canceled appointments are read-only and can't be edited.
        StatusCodeAttribute // Select the appointment's status.
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
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only.
        "instanceTypeCode": IntegerAttribute, // Type of instance of a recurring series.
        "instanceTypeCode_display": StringAttribute, // 
        "isMapiPrivate": BooleanAttribute, // For internal use only.
        "organizer": StringAttribute, // The user who is in charge of coordinating or leading the activity.
        "requiredAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are required to attend the activity.
        "optionalAttendees": StringAttribute, // The account, contact, lead, user, or other equipment resources that are not needed at the activity, but can optionally attend.
        "isAllDayEvent": BooleanAttribute, // Select whether the appointment is an all-day event to make sure that the required resources are scheduled for the full day.
        "globalObjectId": UUIDAttribute, // Shows the ID of the appointment in Microsoft Office Outlook. The ID is used to synchronize the appointment between Server and the correct Exchange account.
        "outlookOwnerApptId": UUIDAttribute, // Unique identifier of the Microsoft Office Outlook appointment owner that correlates to the PR_OWNER_APPT_ID MAPI property.
        "location": DatetimeAttribute, // Type the location where the appointment will take place, such as a conference room or customer office.
        "traversedPath": StringAttribute, // For internal use only.
        "modifiedFieldsMask": StringAttribute, // For internal use only.
        "seriesId": UUIDAttribute, // Shows the ID of the recurring series of an instance.
        "originalStartDate": DateAttribute, // The original start date of the appointment.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "processId": UUIDAttribute, // Shows the ID of the process.
        "stageId": UUIDAttribute, // Shows the ID of the stage.
        "attachmentErrors": StringAttribute, // Select the error code to identify issues with the outlook item recipients or attachments, such as blocked attachments.
        "attachmentErrors_display": StringAttribute, // 
        "attachmentCount": StringAttribute, // Shows the number of attachments on the appointment.
        "slaId": UUIDAttribute, // Choose the service level agreement (SLA) that you want to apply to the appointment record.
        "slaInvokedId": UUIDAttribute, // Last SLA that was applied to this appointment. This field is for internal use only.
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time.
        "isUnsafe": BooleanAttribute, // For internal use only.
        "isDraft": BooleanAttribute, // Information regarding whether the appointment is a draft.
      ])
      .registerPath("applications_appointments")
      .routingPath("/applications/appointments");
  }
}
mixin(EntityCalls!("AppointmentEntity"));

version(test_model_applications) { unittest {
    
    assert(AppointmentEntity);
  
  auto entity = AppointmentEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}