module models.applications.entities.queues.item;

@safe:
import models.applications;

// A specific item in a queue, such as a case record or an activity record.
class DQueueItemEntity : DEntity {
  mixin(EntityThis!("QueueItemEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);
    
    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StatusCodeAttribute, // Select the item's status.
        StateCodeAttribute, // Shows whether the queue record is active or inactive. Inactive queue records are read-only and can't be edited unless they are reactivated.
      ])
      .addValues([
        "queueId": UUIDAttribute, // Choose the queue that the item is assigned to.
        "objectId": UUIDAttribute, // Choose the activity, case, or article assigned to the queue.
        "objectIdTypeCode": IntegerAttribute, // The name of the entity linked by objectId
        "objectTypeCode": IntegerAttribute, // Select the type of the queue item, such as activity, case, or appointment.
        "objectTypeCode_display": StringAttribute, // 
        "title": StringAttribute, // Shows the title or name that describes the queue record. This value is copied from the record that was assigned to the queue.
        "enteredOn": DatetimeAttribute, // Shows the date the record was assigned to the queue.
        "priority": StringAttribute, // Priority of the queue item.
        "state": StringAttribute, // Status of the queue item.
        "status": StringAttribute, // Reason for the status of the queue item.
        "toRecipients": StringAttribute, // Recipients listed on the To line of the message for email queue items.
        "sender": StringAttribute, // Sender who created the queue item.
        "organizationId": UUIDAttribute, // Unique identifier of the organization with which the queue item is associated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "workerIdModifiedOn": DatetimeAttribute, // Shows the date and time when the queue item was last assigned to a user.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the queue item.
        "workerId": UUIDAttribute, // Shows who is working on the queue item.
        "workerIdType": StringAttribute, // The name of the entity linked by workerId
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit that owns the queue item.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
      ])
      .registerPath("applications.queues.items")
      .routingPath("/applications/queueitems");
  }
}
mixin(EntityCalls!("QueueItemEntity"));

version(test_model_applications) { unittest {    
    assert(QueueItemEntity);

    auto entity = QueueItemEntity;
  }
}
