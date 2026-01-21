module models.applications.entities.activities.fax;

@safe:
import models.applications;

// Activity that tracks call outcome and number of pages for a fax and optionally stores an electronic copy of the document.  
class DFaxEntity : DEntity {
  mixin(EntityThis!("FaxEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute,
        StateCodeAttribute, // Shows whether the fax activity is open, completed, or canceled. Completed and canceled fax activities are read-only and can't be edited.
        StatusCodeAttribute // Select the fax's status.
      ])
      .addValues([
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity.
        "scheduledStart": StringAttribute, // Scheduled start time of the activity.
        "subject": StringAttribute, // Subject associated with the activity.
        "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes.
        "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes.
        "actualEnd": StringAttribute, // Actual end time of the activity.
        "actualStart": StringAttribute, // Actual start time of the activity.
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.
        "to": StringAttribute, // The account, contact, lead, queue, or user recipients for the activity.
        "from": StringAttribute, // The sender of the activity.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
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
        "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted.
        "directionCode": IntegerAttribute, // Select the direction of the activity as incoming or outbound.
        "coverPageName": StringAttribute, // Type the name of the cover page to use when sending the fax.
        "billingCode": IntegerAttribute, // Type the billing code for the fax to make sure the fax is charged to the correct sender or customer account.
        "numberOfPages": StringAttribute, // Type the number of pages included in the fax.
        "faxNumber": NumberAttribute, // Type the recipient's fax number.
        "tsId": UUIDAttribute, // Type the Transmitting Subscriber ID (TSID) associated with a send action. This is typically a combination of the recipient's fax or phone number and company name.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "processId": UUIDAttribute, // Shows the ID of the process.
        "stageId": UUIDAttribute, // Shows the ID of the stage.
        "traversedPath": StringAttribute, // For internal use only.
        "slaId": UUIDAttribute, // Choose the service level agreement (SLA) that you want to apply to the fax record.
        "slaInvokedId": UUIDAttribute, // Last SLA that was applied to this fax. This field is for internal use only.
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time.
      ])
      .registerPath("applications_faxes")
      .routingPath("/applications/faxes");
  }
}
mixin(EntityCalls!("FaxEntity"));

version(test_model_applications) { unittest {
    
    assert(FaxEntity);
  
  auto entity = FaxEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}