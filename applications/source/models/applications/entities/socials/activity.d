module models.applications.entities.socials.activity;

@safe:
import models.applications;

// SocialActivity that is attached to one or more objects, including other notes.
class DSocialActivityEntity : DEntity {
  mixin(EntityThis!("SocialActivityEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // // Shows whether the social activity completed. This field is read-only.
        StatusCodeAttribute // Shows whether the social activity is completed, failed, or processing. This field is read-only.
      ])
      .addValues([ // individual values
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
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only.
        "to": StringAttribute, // Enter the account, contact, lead, or user recipients of the phone call.
        "from": StringAttribute, // The sender of the activity.
        "resources": StringAttribute, // Users or facility/equipment that are required for the activity.
        "community": StringAttribute, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only.
        "community_display": StringAttribute, // 
        "directionCode": IntegerAttribute, // Select the direction of the activity as incoming or outbound.
        "traversedPath": StringAttribute, // For internal use only.
        "processId": UUIDAttribute, // Unique identifier of the Process.
        "stageId": UUIDAttribute, // Unique identifier of the Stage.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "sentimentValue": StringAttribute, // Value derived after assessing words commonly associated with a negative, neutral, or positive sentiment that occurs in a social post. Sentiment information can also be reported as numeric values.
        "postedOn": DatetimeAttribute, // For internal use only.
        "postUrl": UrlAttribute, // Shows the URL of the post.
        "inResponseTo": StringAttribute, // Unique identifier for the responses to a post. For internal use only.
        "postMessageType": StringAttribute, // Shows if the social post originated as a private or public message.
        "postMessageType_display": StringAttribute, // 
        "postId": UUIDAttribute, // Unique identifier of the post. For internal use only.
        "threadId": UUIDAttribute, // Unique identifier of the social conversation. For internal use only.
        "slaInvokedId": UUIDAttribute, // Last SLA that was applied to this Social Activity. This field is for internal use only.
        "postFromProfileId": UUIDAttribute, // Shows the author of the post on the corresponding social channel.
        "postToProfileId": UUIDAttribute, // Shows the recipients of the social post.
        "postAuthorAccount": StringAttribute, // Shows the parent account of the author of the post.
        "postAuthorAccountType": StringAttribute, // The type of post author account, either Account or Contact.
        "postAuthor": StringAttribute, // Shows the contact or account that authored the post.
        "postAuthorType": StringAttribute, // The type of post author, either Account or Contact.
        "socialAdditionalParams": StringAttribute, // For internal use only.
        "slaId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the Social Activity record.
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time.
      ])
      .registerPath("applications_socialactivities")
      .routingPath("/applications/socialactivities");
  }
}
mixin(EntityCalls!("SocialActivityEntity"));

version(test_model_applications) { unittest {
    assert(SocialActivityEntity);

    auto entity = SocialActivityEntity;
  }
}