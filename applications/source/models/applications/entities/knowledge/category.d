module models.applications.entities.knowledge.category;

@safe:
import models.applications;


// Target objective for a user or a team for a specified time period.
class DKnowledgeArticleCategoryEntity : DEntity {
  mixin(EntityThis!("KnowledgeArticleCategoryEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        "knowledgeArticleId": StringAttribute, //	
        "categoryId": StringAttribute, //	
        "knowledgeArticleCategoryId": StringAttribute, //	Unique identifier of the Category for the knowledge article.
        "versionNumber": StringAttribute, //	
      ])
      .registerPath("applications_knowledgearticlecategories")
      .routingPath("/applications/knowledgearticlecategories");
  }
}
mixin(EntityCalls!("KnowledgeArticleCategoryEntity"));

version(test_model_applications) { unittest {
  assert(KnowledgeArticleCategoryEntity);

  auto entity = KnowledgeArticleCategoryEntity;
}}