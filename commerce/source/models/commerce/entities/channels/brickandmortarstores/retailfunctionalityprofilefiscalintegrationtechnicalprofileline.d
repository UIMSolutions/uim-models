module models.commerce.channels.brickandmortarstores.retailfunctionalityprofilefiscalintegrationtechnicalprofileline;

@safe:
import models.commerce;

// 
class DRetailFunctionalityProfileFiscalIntegrationTechnicalProfileLineEntity : DEntity {
  mixin(EntityThis!("RetailFunctionalityProfileFiscalIntegrationTechnicalProfileLineEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "functionalityProfileId": StringAttribute, //
        "fiscalTechnicalProfileId": StringAttribute, //
        "backingTable_RetailFunctionalityProfileFiscalIntegrationTechnicalProfileLineRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailfunctionalityprofilefiscalintegrationtechnicalprofilelines");
  }
}
mixin(EntityCalls!("RetailFunctionalityProfileFiscalIntegrationTechnicalProfileLineEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailFunctionalityProfileFiscalIntegrationTechnicalProfileLineEntity);
}}
