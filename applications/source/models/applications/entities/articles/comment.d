module models.applications.entities.articles.comment;

@safe:
import models.applications;

// Comment on a knowledge base article.
class DArticleCommentEntity : DEntity {
  mixin(EntityThis!("ArticleCommentEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
       ])
      .addValues([ // individual values
        "kbArticleCommentId": UUIDAttribute, // Unique identifier of the knowledge base article comment.
        "kbArticleId": UUIDAttribute, // Unique identifier of the knowledge base article to which the comment applies.
        "title": StringAttribute, // Title of the knowledge base article comment.
        "commentText": StringAttribute, // Comment text for the knowledge base article.
        "organizationId": UUIDAttribute, // Unique identifier of the organization with which the article comment is associated.
      ])
      .registerPath("applications_articles.comments")
      .routingPath("/applications/articlecomments");
  }
}
mixin(EntityCalls!("ArticleCommentEntity"));

version(test_model_applications) { unittest {    
    assert(ArticleCommentEntity);
  
    auto entity = ArticleCommentEntity;
  }
}
