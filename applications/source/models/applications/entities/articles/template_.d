module models.applications.entities.articles.template_;

@safe:
import models.applications;

// Template for a knowledge base article that contains the standard attributes of an article.
class DArticleTemplateEntity : DEntity {
  mixin(EntityThis!("ArticleTemplateEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);
    
    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
      ])
      .addValues([ // individual values
        "kbArticleTemplateId": UUIDAttribute, // Unique identifier of the knowledge base article template.
        "structureXml": StringAttribute, // XML structure of the knowledge base article.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the template.
        "formatXml": StringAttribute, // XML format of the knowledge base article template.
        "title": StringAttribute, // Title of the knowledge base article template.
        "isActive": BooleanAttribute, // Information about whether the knowledge base article is active.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "languageCode": IntegerAttribute, // Language of the Article Template
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "kbArticleTemplateIdUnique": StringAttribute, // For internal use only.
        "componentState": StringAttribute, // For internal use only.
        "componentState_display": StringAttribute, // 
        "solutionId": UUIDAttribute, // Unique identifier of the associated solution.
        "overwriteTime": TimeAttribute, // For internal use only.
        "isManaged": BooleanAttribute, // 
        "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized.
        "introducedVersiOn": DatetimeAttribute, // Version in which the form is introduced.
      ])
      .registerPath("applications_articles.templates")
      .routingPath("/applications/articletemplates");
  }
}
mixin(EntityCalls!("ArticleTemplateEntity"));

version(test_model_applications) { unittest {  
    assert(ArticleTemplateEntity);
  
    auto entity = ArticleTemplateEntity;
  }
}
