module models.applications.entities.knowledge.baserecord;

@safe:
import models.applications;


// Target objective for a user or a team for a specified time period.
class DKnowledgeBaseRecordEntity : DEntity {
  mixin(EntityThis!("KnowledgeBaseRecordEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "knowledgeBaseRecordId": StringAttribute, //	This field will be used to store the Unique ID of the associated Knowledge Base records	applicationCommon/KnowledgeBaseRecord
        "createdOn": StringAttribute, //	Date and time when the record was created.	applicationCommon/KnowledgeBaseRecord
        "createdBy": StringAttribute, //	Unique identifier of the user who created the record.	applicationCommon/KnowledgeBaseRecord
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	applicationCommon/KnowledgeBaseRecord
        "modifiedBy": StringAttribute, //	Unique identifier of the user who modified the record.	applicationCommon/KnowledgeBaseRecord
        "createdOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who created the record.	applicationCommon/KnowledgeBaseRecord
        "modifiedOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who modified the record.	applicationCommon/KnowledgeBaseRecord
        "organizationId": StringAttribute, //	Unique identifier for the organization	applicationCommon/KnowledgeBaseRecord
        "versionNumber": StringAttribute, //		applicationCommon/KnowledgeBaseRecord
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	applicationCommon/KnowledgeBaseRecord
        "title": StringAttribute, //	Shows the title of the knowledge base (KB) Record.	applicationCommon/KnowledgeBaseRecord
        "privateUrl": StringAttribute, //	Shows the internal Parature service desk URL of the knowledge base records.	applicationCommon/KnowledgeBaseRecord
        "publicUrl": StringAttribute, //	Shows the public Parature portal URL of the knowledge base records.	applicationCommon/KnowledgeBaseRecord
        "exchangeRate": StringAttribute, //	Exchange rate for the currency associated with the knowledge base record with respect to the base currency.	applicationCommon/KnowledgeBaseRecord
        "transactionCurrencyId": StringAttribute, //	Exchange rate for the currency associated with the Knowledge Base Record with respect to the base currency.	applicationCommon/KnowledgeBaseRecord
        "uniqueId": StringAttribute, //	Shows the unique ID of the linked knowledge base (KB) article.	applicationCommon/KnowledgeBaseRecord
      ])
      .registerPath("applications_knowledgebaserecords")
      .routingPath("/applications/knowledgebaserecords");
  }
}
mixin(EntityCalls!("KnowledgeBaseRecordEntity"));

version(test_model_applications) { unittest {
  assert(KnowledgeBaseRecordEntity);

  auto entity = KnowledgeBaseRecordEntity;
}}
