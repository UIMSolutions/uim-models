module models.commerce.entities.cash.retailposbatch;

@safe:
import models.commerce;

class DRetailPosBatchEntity : DEntity {
  mixin(EntityThis!("RetailPosBatchEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "terminal": StringAttribute, //
        "batchShiftId": UUIDAttribute, //
        "channel": StringAttribute, //
        "closeDate": StringAttribute, //
        "closeDateTimeUtc": StringAttribute, //
        "closedAtRegisterNumber": StringAttribute, //
        "closeTime": StringAttribute, //
        "customerSalesCount": StringAttribute, //
        "discountTotalAmount": StringAttribute, //
        "kogonsCount": StringAttribute, //
        "noSaleCount": StringAttribute, //
        "locationNumber": StringAttribute, //
        "paidToAccountTotal": StringAttribute, //
        "posted": StringAttribute, //
        "replicationCounter": StringAttribute, //
        "returnsTotal": StringAttribute, //
        "roundedAmountTotal": StringAttribute, //
        "salesCount": StringAttribute, //
        "salesTotal": StringAttribute, //
        "operatorId": UUIDAttribute, //
        "startDate": StringAttribute, //
        "startDateTimeUtc": StringAttribute, //
        "startTime": StringAttribute, //
        "statementId": UUIDAttribute, //
        "status": StringAttribute, //
        "operationUnitNumber": StringAttribute, //
        "taxTotal": StringAttribute, //
        "transactionsCount": StringAttribute, //
        "voidsCount": StringAttribute, //
        "itemsSold": StringAttribute, //
        "priceOverrideTotal": StringAttribute, //
        "receiptCopiesCount": StringAttribute, //
        "receiptCopiesTotal": StringAttribute, //
        "returnsCount": StringAttribute, //
        "returnsGrandTotal": StringAttribute, //
        "salesGrandTotal": StringAttribute, //
        "servicesSoldQuantity": StringAttribute, //
        "suspendedCount": StringAttribute, //
        "suspendedTotal": StringAttribute, //
        "trainingCount": StringAttribute, //
        "trainingTotal": StringAttribute, //
        "retailChannelTable_OMOperatingUnitID": StringAttribute, //
        "organizationPartyNumber": StringAttribute, //
        "giftCardsTotal": StringAttribute, //
        "voidedSalesTotal": StringAttribute, //
        "shiftSalesTotal": StringAttribute, //
        "shiftReturnsTotal": StringAttribute, //
        "giftCardCashOutTotal": StringAttribute, //
        "chargeTotal": StringAttribute, //
        "zeroSalesCount": StringAttribute, //
        "hasPendingOfflineTransactions": StringAttribute, //
        "errorCode": StringAttribute, //
        "error": StringAttribute, //
        "errorCodeDateTime": StringAttribute, //
        "errorCodeEditUser": StringAttribute, //
        "storeNumber": StringAttribute, //
        "backingTable_RetailPosBatchTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("commerce_cash.retailposbatch");
  }
}
mixin(EntityCalls!("RetailPosBatchEntity"));

version(test_model_hcm) {
  unittest {
    assert(RetailPosBatchEntity);
  
    auto entity = RetailPosBatchEntity;
  }
}