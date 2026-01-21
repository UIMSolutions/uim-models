module models.applications.entities.feedback;

@safe:
import models.applications;

// Feedback that is attached to one or more objects, including other notes.
class DFeedbackEntity : DEntity {
  mixin(EntityThis!("FeedbackEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the feedback is open, rejected or closed.
        StatusCodeAttribute // Select the feedback's status.
      ])
      .addValues([ // individual values
        "feedbackId": UUIDAttribute, // FeedbackId
        "rating": StringAttribute, // Specifies how helpful the related record was.
        "minRating": StringAttribute, // Enter the minimum rating value.
        "maxRating": StringAttribute, // Enter the maximum rating value.
        "normalizedRating": StringAttribute, // Shows the rating scaled to a value between 0 and 1 based on minimum and maximum ratings.
        "comments": StringAttribute, // Type the feedback comments.
        "source": StringAttribute, // Shows where the feedback was submitted from.
        "source_display": StringAttribute, // 
        "regardingObjectId": UUIDAttribute, // Shows the record that the feedback is associated with.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit that owns the knowledge article views.
        "owningUserId": UserIdAttribute, // Unique identifier of the user who owns this feedback.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier of the team that owns the feedback.
        "closedBy": UserIdAttribute, // Shows who closed the record.
        "closedOn": DatetimeAttribute, // Shows the date and time when the record was closed. The date and time are displayed in the time zone selected in Server options.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "title": StringAttribute, // Type a title for the feedback.
        "createdByContact": StringAttribute, // Shows the contact who created the record.
        "createdOnBehalfByContact": StringAttribute, // Shows the contact who created the record on behalf of another user.
      ])
      .registerPath("applications_feedbacks")
      .routingPath("/applications/feedbacks");
  }
}
mixin(EntityCalls!("FeedbackEntity"));

version(test_model_applications) { unittest {
    assert(FeedbackEntity);
  
  auto entity = FeedbackEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}