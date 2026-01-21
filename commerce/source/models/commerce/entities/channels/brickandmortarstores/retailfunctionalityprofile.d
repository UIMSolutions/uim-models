module models.commerce.channels.brickandmortarstores.retailfunctionalityprofile;

@safe:
import models.commerce;

// 
class DRetailFunctionalityProfileEntity : DEntity {
  mixin(EntityThis!("RetailFunctionalityProfileEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "profileId": StringAttribute, // 
        "addTaxOnPrices": StringAttribute, // 
        "aggregateItems": StringAttribute, // 
        "aggregateItemsForPrinting": StringAttribute, // 
        "aggregatePayments": StringAttribute, // 
        "amountDecimalPlaces": StringAttribute, // 
        "amountRoundingTo": StringAttribute, // 
        "applyDiscountOnUnitPrices": StringAttribute, // 
        "auditEnabled": StringAttribute, // 
        "backupTrainingTransactions": StringAttribute, // 
        "blockedClosedAccount": StringAttribute, // 
        "centralTableServer": StringAttribute, // 
        "centralTableServerPort": StringAttribute, // 
        "currencySymbol": StringAttribute, // 
        "daysCustomerHistory": StringAttribute, // 
        "daysTransactionsExists": StringAttribute, // 
        "decimalNotRequiredForMinorCurrencyUnit": StringAttribute, // 
        "discountAtTotal": StringAttribute, // 
        "displaySecondaryTotalCurrency": StringAttribute, // 
        "endOfTransaction": StringAttribute, // 
        "eodBankTotalsVerification": StringAttribute, // 
        "includeKitComponents": StringAttribute, // 
        "itemNotOnFile": StringAttribute, // 
        "limitStaffListToStore": StringAttribute, // 
        "lineItemTaxChange": StringAttribute, // 
        "manualCalculateDiscounts": StringAttribute, // 
        "markDown": StringAttribute, // 
        "markUp": StringAttribute, // 
        "maximumPrice": StringAttribute, // 
        "maximumQuantity": StringAttribute, // 
        "maximumStoreTransLog": StringAttribute, // 
        "maxTransactionSearchResults": StringAttribute, // 
        "minimumPasswordLength": StringAttribute, // 
        "multibleItemSymbol": StringAttribute, // 
        "mustKeyInPriceIfZero": StringAttribute, // 
        "name": StringAttribute, // 
        "negativeAdjustment": StringAttribute, // 
        "negativeSalesLine": StringAttribute, // 
        "noSale": StringAttribute, // 
        "noTaxUsed": StringAttribute, // 
        "overridePrice": StringAttribute, // 
        "priceDecimalPlaces": StringAttribute, // 
        "priceRoundingTo": StringAttribute, // 
        "printXReportOnTerminal": StringAttribute, // 
        "refundSale": StringAttribute, // 
        "requireAmountDeclaration": StringAttribute, // 
        "retailReceiptProfile": StringAttribute, // 
        "salesPerson": StringAttribute, // 
        "salesPersonMode": StringAttribute, // 
        "secondaryTotalCurrency": StringAttribute, // 
        "serialNumber": StringAttribute, // 
        "showStaffListAtLogOn": StringAttribute, // 
        "skipTaxOnReceipt": StringAttribute, // 
        "staffBarcodeLogon": StringAttribute, // 
        "staffBarcodeLogonRequiresPassword": StringAttribute, // 
        "staffCardLogon": StringAttribute, // 
        "staffCardLogonRequiresPassword": StringAttribute, // 
        "startOfTransaction": StringAttribute, // 
        "supportedCountryRegionISOCode": StringAttribute, // 
        "timeAttendanceEnableRegistration": StringAttribute, // 
        "taxRegistrationNumberOnReceipt": StringAttribute, // 
        "tenderDeclaration": StringAttribute, // 
        "transactionDeleteReminder": StringAttribute, // 
        "transactionTaxChange": StringAttribute, // 
        "voidIsPressed": StringAttribute, // 
        "voidPayment": StringAttribute, // 
        "voidTransaction": StringAttribute, // 
        "cancelReason": StringAttribute, // 
        "contingencyReason": StringAttribute, // 
        "reateAsyncCustomers": StringAttribute, // 
        "salesModeDefaultAsCustomerOrder": StringAttribute, // 
        "alwaysExpandTransactionScreenLineDetails": StringAttribute, // 
        "prohibitMixingSalesAndReturns": StringAttribute, // 
        "isProductSuggestionsEnabled": StringAttribute, // 
        "productSearchType": StringAttribute, // 
        "denominationsToDisplay": StringAttribute, // 
        "rejectOrderFulfillment": StringAttribute, // 
        "employeeLogonType": StringAttribute, // 
        "notificationRefreshInterval": StringAttribute, // 
        "manualTaxCalculation": StringAttribute, // 
        "excludeSalesOrderInvoices": StringAttribute, // 
        "includeFreeTextInvoices": StringAttribute, // 
        "includeProjectInvoices": StringAttribute, // 
        "includeCreditNoteInvoices": StringAttribute, // 
        "processNumber": StringAttribute, // 
        "generateLoyaltyCardNumber": StringAttribute, // 
        "printVoidTransactionReceipts": StringAttribute, // 
        "manualChargeCalculation": StringAttribute, // 
        "voidSuspendedTransactionsOnCloseShift": StringAttribute, // 
        "taxExemptReceiptIndicator": StringAttribute, // 
        "displayTaxExemptInLineDetails": StringAttribute, // 
        "useAdvancedCashManagement": StringAttribute, // 
        "shiftReconciliation": StringAttribute, // 
        "printReceiptsOnCardDecline": StringAttribute, // 
        "defaultCustomerSearchMode": StringAttribute, // 
        "isFiscalCustomerRequiredForTransaction": StringAttribute, // 
        "useFinancialReconcialiationInStore": StringAttribute, // 
        "createAsyncCustomerOrders": StringAttribute, // 
        "requirePaymentForFulfillment": StringAttribute, // 
        "backingTable_RetailFunctionalityProfileRelationshipId": StringAttribute, // 
      ])
      .registerPath("commerce_channelmanagement_brickandmortarstore_retailfunctionalityprofiles");
  }
}
mixin(EntityCalls!("RetailFunctionalityProfileEntity"));

version(test_model_commerce) {
  unittest {
    assert(RetailFunctionalityProfileEntity);
}}
