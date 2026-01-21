module models.applications.entities.knowledge.article;

@safe:
import models.applications;

// Target objective for a user or a team for a specified time period.
class DKnowledgeArticleEntity : DEntity {
  mixin(EntityThis!("KnowledgeArticleEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        "createdOn": StringAttribute, // Date and time when the record was created.	
        "createdBy": StringAttribute, // Shows who created the record.	
        "modifiedOn": StringAttribute, // Date and time when the record was modified.	
        "modifiedBy": StringAttribute, // Shows who last updated the record.	
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, // Unique identifier of the data import or data migration that created this record.	
        "ownerId": StringAttribute, // Owner Id	
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, // Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, // For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.	
        "versionNumber": StringAttribute, // Version Number	
        "knowledgearticleId": StringAttribute, // Unique identifier for entity instances	
        "stateCode": StringAttribute, // Shows whether the article is a draft or is published, archived, or discarded. Draft articles aren't available externally and can be edited. Published articles are available externally, based on applicable permissions, but can't be edited. All metadata changes are reflected in the published version. Archived and discarded articles aren't available externally and can't be edited.	
        "stateCode_display": StringAttribute, // 	
        "statusCode": StringAttribute, // Select the article's status.	
        "statusCode_display": StringAttribute, // 	
        "processId": StringAttribute, // Contains the id of the process associated with the entity.	
        "stageId": StringAttribute, // Contains the id of the stage where the entity is located.	
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the KnowledgeArticle with respect to the base currency.	
        "transactionCurrencyId": StringAttribute, // Exchange rate for the currency associated with the KnowledgeArticle with respect to the base currency.	
        "title": StringAttribute, // Type a title for the article.	
        "content": StringAttribute, // Shows the body of the article stored in HTML format.	
        "keyWords": StringAttribute, // Type keywords to be used for searches in knowledge base articles. Separate keywords by using commas.	
        "publishOn": StringAttribute, // Date and time when the record was published.	
        "expirationDate": StringAttribute, // Enter an expiration date for the article. Leave this field blank for no expiration date.	
        "parentArticleContentId": StringAttribute, // Contains the id of the parent article content associated with the entity.	
        "knowledgeArticleViews": StringAttribute, // Shows the total number of article views.	
        "description": StringAttribute, // A short overview of the article, primarily used in search results and for search engine optimization.	
        "majorVersionNumber": StringAttribute, // Shows the major version number of this article's content.	
        "minorVersionNumber": StringAttribute, // Shows the minor version number of this article's content.	
        "languageLocaleId": StringAttribute, // Select the language that the article's content is in.	
        "scheduledStatusId": StringAttribute, // Contains the id of the scheduled status of the entity.	
        "expirationStatusId": StringAttribute, // Contains the id of the expiration status of the entity.	
        "publishStatusId": StringAttribute, // Publish Status of the Article.	
        "isPrimary": StringAttribute, // Select whether the article is the primary article.	
        "readyForReview": StringAttribute, // Ready For Review	
        "review": StringAttribute, // Review	
        "review_display": StringAttribute, // 	
        "updateContent": StringAttribute, // Update Content	
        "expiredReviewOptions": StringAttribute, // Expired Review Options	
        "expiredReviewOptions_display": StringAttribute, // 	
        "subjectId": StringAttribute, // Choose the subject of the article to assist with article searches. You can configure subjects under Business Management in the Settings area.	
        "primaryAuthorId": StringAttribute, // Contains the id of the primary author associated with the article.	
        "isRootArticle": StringAttribute, // Select whether the article is the root article.	
        "previousArticleContentId": StringAttribute, // Shows the version that the current article was restored from.	
        "articlePublicNumber": StringAttribute, // Shows the automatically generated ID exposed to customers, partners, and other external users to reference and look up articles.	
        "isLatestVersion": StringAttribute, // Shows which version of the knowledge article is the latest version.	
        "rootArticleId": StringAttribute, // Contains the id of the root article.	
        "knowledgeArticleViewsDate": StringAttribute, // The date time for Knowledge Article View.	
        "knowledgeArticleViewsState": StringAttribute, // State of Knowledge Article View.	
        "rating": StringAttribute, // Information which specifies how helpful the related record was.	
        "ratingDate": StringAttribute, // The date time for Rating.	
        "ratingState": StringAttribute, // State of Rating	
        "ratingSum": StringAttribute, // Total sum of Rating	
        "ratingCount": StringAttribute, // Rating Count	
        "isInternal": StringAttribute, // Shows whether this article is only visible internally.	
        "setCategoryAssociations": StringAttribute, // Shows whether category associations have been set	
        "expirationStateId": StringAttribute, // Contains the id of the expiration state of the entity.	
      ])
      .registerPath("applications_knowledgearticles")
      .routingPath("/applications/knowledgearticles");
  }
}
mixin(EntityCalls!("KnowledgeArticleEntity"));

version(test_model_applications) { unittest {
    assert(KnowledgeArticleEntity);
  
    auto entity = KnowledgeArticleEntity;
  }
}