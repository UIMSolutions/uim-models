module models.commerce.channels.brickandmortarstores.retailfiscalprinterconfigtable;

@safe:
import models.commerce;

// 
class DRetailFiscalPrinterConfigTableEntity : DEntity {
  mixin(EntityThis!("RetailFiscalPrinterConfigTableEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "configurationId": StringAttribute, //
        "configurationContent": StringAttribute, //
        "backingTable_RetailFiscalPrinterConfigTableRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailfiscalprinterconfigtables");
  }
}
mixin(EntityCalls!("RetailFiscalPrinterConfigTableEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailFiscalPrinterConfigTableEntity);
}}
