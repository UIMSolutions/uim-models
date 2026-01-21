module models.applications.entities.note;

@safe:
import models.applications;

// Note that is attached to one or more objects, including other notes.
class DNoteEntity : DEntity {
  mixin(EntityThis!("NoteEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "annotationId": UUIDAttribute, // Unique identifier of the note.
        "objectTypeCode": IntegerAttribute, // Type of entity with which the note is associated.
        "objectTypeCode_display": StringAttribute, // 
        "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the note.
        "objectId": UUIDAttribute, // Unique identifier of the object with which the note is associated.
        "objectIdTypeCode": IntegerAttribute, // The name of the entity linked by objectId
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit that owns the note.
        "subject": StringAttribute, // Subject associated with the note.
        "isDocument": BooleanAttribute, // Specifies whether the note is an attachment.
        "noteText": StringAttribute, // Text of the note.
        "mimeType": StringAttribute, // MIME type of the note's attachment.
        "langId": UUIDAttribute, // Language identifier for the note.
        "documentBody": StringAttribute, // Contents of the note's attachment.
        "fileSize": StringAttribute, // File size of the note.
        "fileName": StringAttribute, // File name of the note.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "stepId": UUIDAttribute, // workflow step id associated with the note.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier of the team who owns the note.
      ])
      .registerPath("applications_notes")
      .routingPath("/applications/notes");
  }
}
mixin(EntityCalls!("NoteEntity"));

version(test_model_applications) { unittest {
    
    assert(NoteEntity);
  
  auto entity = NoteEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}