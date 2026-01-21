module models.applications.entities.articles.article;

@safe:
import models.applications;

// Structured content that is part of the knowledge base.
class DArticleEntity : DEntity {
  mixin(EntityThis!("ArticleEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Shows whether the knowledge base article is in draft, unapproved, or published status. Published articles are read-only and can't be edited unless they are unpublished.
        StatusCodeAttribute, // Select the article's status.
      ])
      .addValues([
        "kbArticleId": UUIDAttribute, // Shows the ID of the article.
        "kbArticleTemplateId": UUIDAttribute, // Choose the template that you want to use as a base for creating the new article.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the article.
        "subjectId": UUIDAttribute, // Choose the subject of the article to assist with article searches. You can configure subjects under Business Management in the Settings area.
        "articleXml": StringAttribute, // Shows the article content and formatting, stored as XML.
        "title": StringAttribute, // Type a subject or descriptive name for the article to assist with article searches.
        "number": StringAttribute, // Knowledge base article number.
        "content": StringAttribute, // Description of the content of the knowledge base article.
        "comments": StringAttribute, // Comments regarding the knowledge base article.
        "keyWords": StringAttribute, // Keywords to be used for searches in knowledge base articles.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "languageCode": IntegerAttribute, // Select which language the article must be available in. This list is based on the list of language packs that are installed in your Server environment.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "entityImageId": UUIDAttribute, // For internal use only.
      ])
      .registerPath("applications_articles")
      .routingPath("/applications/articles");
  }
}
mixin(EntityCalls!("ArticleEntity"));

version(test_model_applications) { unittest {
    assert(ArticleEntity);
    auto entity = ArticleEntity;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}
