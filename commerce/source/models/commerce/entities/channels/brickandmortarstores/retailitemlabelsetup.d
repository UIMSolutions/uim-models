module models.commerce.channels.brickandmortarstores.retailitemlabelsetup;

@safe:
import models.commerce;

// 
class DRetailItemLabelSetupEntity : DEntity {
  mixin(EntityThis!("RetailItemLabelSetupEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "itemId": StringAttribute, //
        "labelType": StringAttribute, //
        "omHierarchyType": StringAttribute, //
        "omInternalOrganization": StringAttribute, //
        "reportName": StringAttribute, //
        "text1": StringAttribute, //
        "text1IsItemDescription": StringAttribute, //
        "text2": StringAttribute, //
        "organizationHierarchyTypeName": StringAttribute, //
        "organizationPartyNumber": StringAttribute, //
        "relationship_RetailInventItemLabelReportSetupEntityRelationshipId": StringAttribute, //
        "backingTable_RetailInventItemLabelSetupRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailitemlabelsetups");
  }
}
mixin(EntityCalls!("RetailItemLabelSetupEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailItemLabelSetupEntity);
}}
