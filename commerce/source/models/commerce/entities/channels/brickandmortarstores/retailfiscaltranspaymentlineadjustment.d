module models.commerce.channels.brickandmortarstores.retailfiscaltranspaymentlineadjustment;

@safe:
import models.commerce;

// 
class DRetailFiscalTransPaymentLineAdjustmentEntity : DEntity {
  mixin(EntityThis!("RetailFiscalTransPaymentLineAdjustmentEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "terminal": StringAttribute, //
        "transactionId": StringAttribute, //
        "channel": StringAttribute, //
        "store": StringAttribute, //
        "paymentTransactionLineNumber": StringAttribute, //
        "fiscalTransactionLineNumber": StringAttribute, //
        "fiscalTransactionRecordGuid": StringAttribute, //
        "adjustmentAmount": StringAttribute, //
        "operatingUnitNumber": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailfiscaltranspaymentlineadjustments");
  }
}
mixin(EntityCalls!("RetailFiscalTransPaymentLineAdjustmentEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailFiscalTransPaymentLineAdjustmentEntity);
}}
