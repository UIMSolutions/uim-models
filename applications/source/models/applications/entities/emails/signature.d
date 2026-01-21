module models.applications.entities.emails.email;

@safe:
import models.applications;

// Structured content that is part of the knowledge base.
class DEmailSignatureEntity : DEntity {
  mixin(EntityThis!("EmailSignatureEntity"));
  
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
        "emailSignatureId": StringAttribute, //	Unique identifier of the email signature.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier of the business unit that owns the email signature.	
        "isPersonal": StringAttribute, //	Information about whether the email signature is personal or is available to all users.	
        "mimeType": StringAttribute, //	MIME type of the email signature.	
        "body": StringAttribute, //	Body text of the email signature.	
        "title": StringAttribute, //	Title of the email signature.	
        "description": StringAttribute, //	Description of the email signature.	
        "owningUser": StringAttribute, //	Unique identifier of the user who owns the email signature.	
        "createdBy": StringAttribute, //	Unique identifier of the user who created the email signature.	
        "presentationXml": StringAttribute, //	XML data for the body of the email signature.	
        "createdOn": StringAttribute, //	Date and time when the email signature was created.	
        "modifiedBy": StringAttribute, //	Unique identifier of the user who last modified the email signature.	
        "modifiedOn": StringAttribute, //	Date and time when the email signature was last modified.	
        "ownerId": StringAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "generationTypeCode": StringAttribute, //	For internal use only.	
        "languageCode": StringAttribute, //	Language of the email signature.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "overwriteTime": StringAttribute, //	For internal use only.	
        "componentState": StringAttribute, //	For internal use only.	
        "componentState_display": StringAttribute, //		
        "createdOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who created the email signature.	
        "modifiedOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who last modified the email signature.	
        "owningTeam": StringAttribute, //	Unique identifier of the team who owns the email signature.	
        "isCustomizable": StringAttribute, //	Information that specifies whether this component can be customized.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "isDefault": StringAttribute, //	Information that specifies whether the email signature is default to the user.	
      ])
      .registerPath("applications_emailsignatures")
      .routingPath("/applications/emailsignatures");
  }
}
mixin(EntityCalls!("EmailSignatureEntity"));

version(test_model_applications) { unittest {
}}
