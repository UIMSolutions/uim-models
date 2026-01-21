module models.applications.entities.activities.party;

@safe:
import models.applications;

// ActivityParty that is attached to one or more objects, including other notes.
class DActivityPartyEntity : DEntity {
  mixin(EntityThis!("ActivityPartyEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "activityId": UUIDAttribute, // Unique identifier of the activity associated with the activity party. (A 'party' is any person who is associated with an activity.)
        "activityPartyId": UUIDAttribute, // Unique identifier of the activity party
        "partyId": UUIDAttribute, // Unique identifier of the party associated with the activity
        "partyObjectTypeCode": IntegerAttribute, //The name of the entity linked by partyId
        "participationTypeMask": StringAttribute, // Role of the person in the activity, such as sender, to, cc, bcc, required, optional, organizer, regarding, or owner
        "participationTypeMask_display": StringAttribute, // applicationCommon
        "addressUsed": StringAttribute, // Email address to which an email is delivered, and which is associated with the target entity
        "doNotFax": StringAttribute, // Information about whether to allow sending faxes to the activity party
        "scheduledStart": StringAttribute, // Scheduled start time of the activity
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity
        "effort": StringAttribute, // Amount of effort used by the resource in a service appointment activity
        "doNotEMail": StringAttribute, // Information about whether to allow sending email to the activity party
        "exchangeEntryId": UUIDAttribute, // For internal use only
        "doNotPostalMail": StringAttribute, // Information about whether to allow sending postal mail to the lead
        "doNotPhone": StringAttribute, // Information about whether to allow phone calls to the lead
        "ownerIdType": StringAttribute, // The type of owner, either User or Team
        "instanceTypeCode": IntegerAttribute, //Type of instance of a recurring series
        "instanceTypeCode_display": StringAttribute, // applicationCommon
        "isPartyDeleted": StringAttribute, // Information about whether the underlying entity record is deleted
        "addressUsedEmailColumnNumber": NumberAttribute, // Email address column number from associated party
      ])
      .registerPath("applications_activityparties")
      .routingPath("/applications/activityparties");
  }
}
mixin(EntityCalls!("ActivityPartyEntity"));

version(test_model_applications) { unittest {
    assert(ActivityPartyEntity);
  
  auto entity = ActivityPartyEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}