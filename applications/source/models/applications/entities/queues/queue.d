module models.applications.entities.queues.queue;

@safe:
import models.applications;

// A list of records that require action, such as accounts, activities, and cases.
class DQueueEntity : DEntity {
  mixin(EntityThis!("QueueEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);
    
    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the queue.
        StatusCodeAttribute, // Reason for the status of the queue.
       ])
      .addValues([ // individual values
        "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit with which the queue is associated.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the queue.
        "emailAddress": StringAttribute, // Email address that is associated with the queue.
        "primaryUserId": UserIdAttribute, // Unique identifier of the owner of the queue.
        "queueTypeCode": IntegerAttribute, // Type of queue that is automatically assigned when a user or queue is created. The type can be public, private, or work in process.
        "queueTypeCode_display": StringAttribute, // 
        "queueSemantics": StringAttribute, // For internal use only.
        "ignoreUnsolicitedEmail": StringAttribute, // Information that specifies whether a queue is to ignore unsolicited email (deprecated).
        "isFaxQueue": BooleanAttribute, // Indication of whether a queue is the fax delivery queue.
        "emailPassword": StringAttribute, // This attribute is no longer used. The data is now in the Mailbox.Password attribute.
        "incomingEmailDeliveryMethod": StringAttribute, // Incoming email delivery method for the queue.
        "incomingEmailDeliveryMethod_display": StringAttribute, // 
        "emailUsername": StringAttribute, // This attribute is no longer used. The data is now in the Mailbox.UserName attribute.
        "outgoingEmailDeliveryMethod": StringAttribute, // Outgoing email delivery method for the queue.
        "outgoingEmailDeliveryMethod_display": StringAttribute, // 
        "allowEmailCredentials": StringAttribute, // This attribute is no longer used. The data is now in the Mailbox.AllowEmailConnectorToUseCredentials attribute.
        "incomingEmailFilteringMethod": StringAttribute, // Convert Incoming Email To Activities
        "incomingEmailFilteringMethod_display": StringAttribute, // 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit that owns the queue.
        "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the queue.
        "numberOfItems": StringAttribute, // Number of Queue items associated with the queue.
        "numberOfMembers": StringAttribute, // Number of Members associated with the queue.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier of the team who owns the queue.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the queue.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the queue with respect to the base currency.
        "emailRouterAccessApproval": StringAttribute, // Shows the status of the primary email address.
        "emailRouterAccessApproval_display": StringAttribute, // 
        "defaultMailbox": StringAttribute, // Select the mailbox associated with this queue.
        "entityImageId": UUIDAttribute, // For internal use only.
        "isEmailAddressApprovedByO365Admin": BooleanAttribute, // Shows the status of approval of the email address by O365 Admin.
        "queueViewType": StringAttribute, // Select whether the queue is public or private. A public queue can be viewed by all. A private queue can be viewed only by the members added to the queue.
        "queueViewType_display": StringAttribute, // 
      ])
      .registerPath("applications.queues")
      .routingPath("/applications/queues");
  }
}
mixin(EntityCalls!("QueueEntity"));

version(test_model_applications) { unittest {
    assert(QueueEntity);
    auto entity = QueueEntity;
  }
}
