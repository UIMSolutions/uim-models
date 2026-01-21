module models.applications.entities.emails.email;

@safe:
import models.applications;

// Structured content that is part of the knowledge base.
class DEmailEntity : DEntity {
  mixin(EntityThis!("EmailEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Shows whether the knowledge base email is in draft, unapproved, or published status. Published emails are read-only and can't be edited unless they are unpublished.
        StatusCodeAttribute, // Select the email's status.
      ])
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	
        "createdBy": StringAttribute, //	Shows who created the record.	
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerId": StringAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "versionNumber": StringAttribute, //	Version Number	
        "activityId": StringAttribute, //	Unique identifier of the activity.	
        "activityTypeCode": StringAttribute, //	Type of activity.	
        "isBilled": StringAttribute, //	Information regarding whether the activity was billed as part of resolving a case.	
        "isRegularActivity": StringAttribute, //	Information regarding whether the activity is a regular activity type or event type.	
        "isWorkflowCreated": StringAttribute, //	Information regarding whether the activity was created from a workflow rule.	
        "priorityCode": StringAttribute, //	Priority of the activity.	
        "priorityCode_display": StringAttribute, //		
        "regardingObjectId": StringAttribute, //	Unique identifier of the object with which the activity is associated.	
        "regardingObjectTypeCode": StringAttribute, //	The name of the entity linked by regardingObjectId	
        "scheduledEnd": StringAttribute, //	Scheduled end time of the activity.	
        "scheduledStart": StringAttribute, //	Scheduled start time of the activity.	
        "sortDate": StringAttribute, //	Shows the date and time by which the activities are sorted.	
        "subject": StringAttribute, //	Subject associated with the activity.	
        "scheduledDurationMinutes": StringAttribute, //	Scheduled duration of the activity, specified in minutes.	
        "actualDurationMinutes": StringAttribute, //	Actual duration of the activity in minutes.	
        "actualEnd": StringAttribute, //	Actual end time of the activity.	
        "actualStart": StringAttribute, //	Actual start time of the activity.	
        "category": StringAttribute, //	Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
        "subcategory": StringAttribute, //	Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
        "activityAdditionalParams": StringAttribute, //	Additional information provided by the external application as JSON. For internal use only.	
        "to": StringAttribute, //	The account, contact, lead, queue, or user recipients for the activity.	
        "from": StringAttribute, //	The sender of the activity.	
        "BCC": StringAttribute, //	Enter the recipients that are included on the activity distribution, but are not displayed to other recipients.	
        "CC": StringAttribute, //	Enter the recipients that should be copied on the activity.	
        "sentOn": StringAttribute, //	Date and time when the activity was sent.	
        "senderMailboxId": StringAttribute, //	Unique identifier of the mailbox associated with the sender of the email message.	
        "deliveryPriorityCode": StringAttribute, //	Priority of delivery of the activity to the email server.	
        "deliveryPriorityCode_display": StringAttribute, //		
        "directionCode": StringAttribute, //	Select the direction of the activity as incoming or outbound.	
        "statusCode": StringAttribute, //	Select the email's status.	
        "statusCode_display": StringAttribute, //		
        "submittedBy": StringAttribute, //	Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365.	
        "description": StringAttribute, //	Type the greeting and message text of the email.	
        "mimeType": StringAttribute, //	MIME type of the email message data.	
        "readReceiptRequested": StringAttribute, //	Indicates that a read receipt is requested.	
        "trackingToken": StringAttribute, //	Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365.	
        "sender": StringAttribute, //	Sender of the email.	
        "toRecipients": StringAttribute, //	Shows the email addresses corresponding to the recipients.	
        "deliveryReceiptRequested": StringAttribute, //	Select whether the sender should receive confirmation that the email was delivered.	
        "stateCode": StringAttribute, //	Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited.	
        "stateCode_display": StringAttribute, //		
        "messageId": StringAttribute, //	Unique identifier of the email message. Used only for email that is received.	
        "deliveryAttempts": StringAttribute, //	Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues.	
        "compressed": StringAttribute, //	Indicates if the body is compressed.	
        "notifications": StringAttribute, //	Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments.	
        "notifications_display": StringAttribute, //		
        "transactionCurrencyId": StringAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
        "emailSender": StringAttribute, //	Shows the sender of the email.	
        "emailSenderObjectTypeCode": StringAttribute, //	The name of the entity linked by emailSender	
        "sendersAccount": StringAttribute, //	Shows the parent account of the sender of the email.	
        "sendersAccountObjectTypeCode": StringAttribute, //	The name of the entity linked by sendersAccount	
        "attachmentCount": StringAttribute, //	Shows the umber of attachments of the email message.	
        "parentActivityId": StringAttribute, //	Select the activity that the email is associated with.	
        "inReplyTo": StringAttribute, //	Type the ID of the email message that this email activity is a response to.	
        "baseConversationIndexHash": StringAttribute, //	Hash of base of conversation index.	
        "conversationIndex": StringAttribute, //	Identifier for all the email responses for this conversation.	
        "correlationMethod": StringAttribute, //	Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only.	
        "correlationMethod_display": StringAttribute, //		
        "postponeEmailProcessingUntil": StringAttribute, //	For internal use only.	
        "processId": StringAttribute, //	Shows the ID of the process.	
        "stageId": StringAttribute, //	Shows the ID of the stage.	
        "isUnsafe": StringAttribute, //	For internal use only.	
        "SLAId": StringAttribute, //	Choose the service level agreement (SLA) that you want to apply to the email record.	
        "SLAInvokedId": StringAttribute, //	Last SLA that was applied to this email. This field is for internal use only.	
        "onHoldTime": StringAttribute, //	Shows how long, in minutes, that the record was on hold.	
        "lastOnHoldTime": StringAttribute, //	Contains the date and time stamp of the last on hold time.	
        "traversedPath": StringAttribute, //	For internal use only.	
        "attachmentOpenCount": StringAttribute, //	Shows the number of times an email attachment has been viewed.	
        "conversationTrackingId": StringAttribute, //	Conversation Tracking Id.	
        "delayedEmailSendTime": StringAttribute, //	Enter the expected date and time when email will be sent.	
        "lastOpenedTime": StringAttribute, //	Shows the latest date and time when email was opened.	
        "linksClickedCount": StringAttribute, //	Shows the number of times a link in an email has been clicked.	
        "openCount": StringAttribute, //	Shows the number of times an email has been opened.	
        "replyCount": StringAttribute, //	Shows the number of replies received for an email.	
        "emailTrackingId": StringAttribute, //	Email Tracking Id.	
        "followEmailUserPreference": StringAttribute, //	Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state.	
        "isEmailFollowed": StringAttribute, //	For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email.	
        "emailReminderExpiryTime": StringAttribute, //	Shows the date and time when an email reminder expires.	
        "emailReminderType": StringAttribute, //	Shows the type of the email reminder.	
        "emailReminderType_display": StringAttribute, //		
        "emailReminderStatus": StringAttribute, //	Shows the status of the email reminder.	
        "emailReminderStatus_display": StringAttribute, //		
        "emailReminderText": StringAttribute, //	For internal use only.	
        "templateId": StringAttribute, //	For internal use only. ID for template used in email.	
        "reminderActionCardId": StringAttribute, //	Reminder Action Card Id.	
        "isEmailReminderSet": StringAttribute, //	For internal use only. Shows whether this email Reminder is Set.	
      ])
      .registerPath("applications_emails")
      .routingPath("/applications/emails");
  }
}
mixin(EntityCalls!("EmailEntity"));

version(test_model_applications) { unittest {
    assert(EmailEntity);
    auto entity = EmailEntity;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}
