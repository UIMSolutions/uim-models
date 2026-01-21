module models.applications.entities.recurringappointment;

@safe:
import models.applications;

// The Master appointment of a recurring appointment series.
class DRecurringAppointmentEntity : DEntity {
  mixin(EntityThis!("RecurringAppointmentEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the recurring appointment is open, scheduled, completed, or canceled. Completed and canceled appointments are read-only and can't be edited.
        StatusCodeAttribute // Select the recurring appointment's status.
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
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.
        "instanceTypeCode": IntegerAttribute, // Type of instance of a recurring series.
        "instanceTypeCode_display": StringAttribute, // 
        "isMapiPrivate": BooleanAttribute, // For internal use only.
        "organizer": StringAttribute, // The user who is in charge of coordinating or leading the activity.
        "requiredAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are required to attend the activity.
        "optionalAttendees": StringAttribute, // The account, contact, lead, user, or other equipment resources that are not needed at the activity, but can optionally attend.
        "isWeekDayPattern": BooleanAttribute, // Indicates whether the weekly recurrence pattern is a daily weekday pattern. Valid for weekly recurrence pattern only.
        "ruleId": UUIDAttribute, // Unique identifier of the recurrence rule that is associated with the recurring appointment series.
        "isNthYearly": BooleanAttribute, // Indicates whether the recurring appointment series should occur after every N years. Valid for yearly recurrence pattern only.
        "groupId": UUIDAttribute, // Unique identifier of the recurring appointment series for which the recurrence information was updated.
        "lastExpandedInstanceDate": DateAttribute, // Date of last expanded instance of a recurring appointment series.
        "effectiveEndDate": DateAttribute, // Actual end date of the recurring appointment series based on the specified end date and recurrence pattern.
        "patternStartDate": DateAttribute, // Start date of the recurrence range.
        "isRegenerate": BooleanAttribute, // For internal use only.
        "firstDayOfWeek": StringAttribute, // First day of week for the recurrence pattern.
        "outlookOwnerApptId": UUIDAttribute, // Unique identifier of the Microsoft Office Outlook recurring appointment series owner that correlates to the PR_OWNER_APPT_ID MAPI property.
        "recurrencePatternType": StringAttribute, // Select the pattern type for the recurring appointment to indicate whether the appointment occurs daily, weekly, monthly, or yearly.
        "recurrencePatternType_display": StringAttribute, // 
        "nextExpansionInstanceDate": DateAttribute, // Date of the next expanded instance of a recurring appointment series.
        "expansionStateCode": IntegerAttribute, // State code to indicate whether the recurring appointment series is expanded fully or partially.
        "expansionStateCode_display": StringAttribute, // 
        "patternEndDate": DateAttribute, // End date of the recurrence range.
        "globalObjectId": UUIDAttribute, // Unique Outlook identifier to correlate recurring appointment series across Exchange mailboxes.
        "effectiveStartDate": DateAttribute, // Actual start date of the recurring appointment series based on the specified start date and recurrence pattern.
        "dayOfMonth": StringAttribute, // The day of the month on which the recurring appointment occurs.
        "startTime": TimeAttribute, // Start time of the recurring appointment series.
        "occurrences": StringAttribute, // Number of appointment occurrences in a recurring appointment series.
        "isAllDayEvent": BooleanAttribute, // Select whether the recurring appointment is an all-day event to make sure that the required resources are scheduled for the full day.
        "seriesStatus": StringAttribute, // Indicates whether the recurring appointment series is active or inactive.
        "isNthMonthly": BooleanAttribute, // Indicates whether the recurring appointment series should occur after every N months. Valid for monthly recurrence pattern only.
        "endTime": TimeAttribute, // End time of the associated activity.
        "daysOfWeekMask": StringAttribute, // Bitmask that represents the days of the week on which the recurring appointment occurs.
        "instance": StringAttribute, // Specifies the recurring appointment series to occur on every Nth day of a month. Valid for monthly and yearly recurrence patterns only.
        "instance_display": StringAttribute, // 
        "deletedExceptionsList": StringAttribute, // List of deleted instances of the recurring appointment series.
        "interval": StringAttribute, // Number of units of a given recurrence type between occurrences.
        "duratiOn": DatetimeAttribute, // Duration of the recurring appointment series in minutes.
        "monthOfYear": StringAttribute, // Indicates the month of the year for the recurrence pattern.
        "monthOfYear_display": StringAttribute, // 
        "locatiOn": DatetimeAttribute, // Type the location where the recurring appointment will take place, such as a conference room or customer office.
        "patternEndType": StringAttribute, // Select the type of end date for the recurring appointment, such as no end date or the number of occurrences.
        "patternEndType_display": StringAttribute, // 
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "processId": UUIDAttribute, // Shows the ID of the process.
        "stageId": UUIDAttribute, // Shows the ID of the stage.
        "traversedPath": StringAttribute, // For internal use only.
        "isUnsafe": BooleanAttribute, // For internal use only.
      ])
      .registerPath("applications_recurringappointments")
      .routingPath("/applications/recurringappointments");
  }
}
mixin(EntityCalls!("RecurringAppointmentEntity"));

version(test_model_applications) { unittest {
    
    assert(RecurringAppointmentEntity);

  auto entity = RecurringAppointmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}