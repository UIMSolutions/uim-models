module models.applications.entities.goals.goal;

@safe:
import models.applications;


// Target objective for a user or a team for a specified time period.
class DGoalEntity : DEntity {
  mixin(EntityThis!("GoalEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the account's status.
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "goalId": UUIDAttribute, // Unique identifier of the goal.
        "title": StringAttribute, // Type a title or name that describes the goal.
        "fiscalPeriod": StringAttribute, // Select the fiscal period for the goal.
        "fiscalPeriod_display": StringAttribute, // 
        "fiscalYear": StringAttribute, // Select the fiscal year for the goal that's being tracked.
        "fiscalYear_display": StringAttribute, // 
        "goalStartDate": DateAttribute, // Enter the date and time when the period for tracking the goal begins.
        "goalEndDate": DateAttribute, // Enter the date when the goal ends.
        "goalOwnerId": UUIDAttribute, // Choose the user or team responsible for meeting the goal.
        "goalOwnerIdType": StringAttribute, // The name of the entity linked by goalOwnerId
        "parentGoalId": UUIDAttribute, // Choose a parent goal if the current goal is a child goal. This sets up a parent-child relationship for reporting and analytics.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "metricId": UUIDAttribute, // Choose the metric for the goal. This metric determines how the goal is tracked.
        "treeId": UUIDAttribute, // Unique identifier of the goal tree.
        "depth": StringAttribute, // Depth of the goal in the tree.
        "stretchTargetMoney": StringAttribute, // Select stretch target (money) of the goal to define a higher or difficult level of goal than the usual ones.
        "stretchTargetMoneyBase": StringAttribute, // Shows the stretch target (money) in base currency to indicate a higher or difficult level of goal than the usual ones.
        "stretchTargetDecimal": DecimalAttribute, // Select a stretch target (decimal) of the goal to define a higher or difficult level of goal than the usual ones.
        "stretchTargetInteger": IntegerAttribute, // Select the stretch target (integer) of the goal to define a higher or difficult level of goal than the usual ones.
        "targetMoney": StringAttribute, // Select a goal target (money) to track a monetary amount such as revenue from a product.
        "targetMoneyBase": StringAttribute, // Shows the goal target of the money type in base currency.
        "targetDecimal": DecimalAttribute, // Select a goal target of the decimal type to use for tracking data that include partial numbers, such as pounds sold of a product sold by weight.
        "targetInteger": IntegerAttribute, // Select a goal target of the integer type to use for tracking anything countable in whole numbers, such as units sold.
        "actualMoney": StringAttribute, // Shows the actual value (Money type) achieved towards the target as of the last rolled-up date. This field appears when the metric type of the goal is Amount and the amount data type is Money.
        "actualMoneyBase": StringAttribute, // Shows the actual value (money type) in base currency to track goal results against the target.
        "customRollupFieldMoney": StringAttribute, // Indicates a placeholder rollup field for a money value to track a third category of results other than actuals and in-progress results.
        "customRollupFieldMoneyBase": StringAttribute, // Indicates a placeholder rollup field for a money value in base currency to track a third category of results other than actuals and in-progress results.
        "inProgressMoney": StringAttribute, // Shows the in-progress value (money) against the target. This value could contribute to a goal, but is not counted yet as actual.
        "inProgressMoneyBase": StringAttribute, // Shows the in-progress value (money) in base currency to track goal results against the target.
        "actualDecimal": DecimalAttribute, // Shows the actual value (Decimal type) achieved towards the target as of the last rolled-up date. This field appears when the metric type of the goal is Amount and the amount data type is Decimal.
        "customRollupFieldDecimal": DecimalAttribute, // Indicates a placeholder rollup field for a decimal value to track a third category of results other than actuals and in-progress results.
        "inProgress": DecimalAttribute, // Shows the in-progress value (decimal) against the target. This value could contribute to a goal, but is not counted yet as actual.
        "actualInteger": IntegerAttribute, // Shows the actual value (integer) achieved towards the target as of the last rolled-up date. This field appears when the metric type of the goal is Amount or Count and the amount data type is Integer.
        "customRollupFieldInteger": IntegerAttribute, // Indicates a placeholder rollup field for an integer value to track a third category of results other than actuals and in-progress results.
        "inProgressInteger": IntegerAttribute, // Shows the in-progress value (integer) against the target. This value could contribute to a goal, but is not counted yet as actual.
        "percentage": PercentageAttribute, // Shows the percentage achieved against the target goal.
        "isFiscalPeriodGoal": BooleanAttribute, // Select whether the goal period is a fiscal period or custom period.
        "considerOnlyGoalOwnersRecords": StringAttribute, // Select whether only the goal owner's records, or all records, should be rolled up for goal results.
        "lastRolledupDate": DateAttribute, // Shows the date and time when the goal was last rolled up. The date and time are displayed in the time zone selected in Server options.
        "targetString": StringAttribute, // Target value of the goal.
        "stretchTargetString": StringAttribute, // Stretch target value for all data types.
        "actualString": StringAttribute, // Actual Value of the goal.
        "customRollupFieldString": StringAttribute, // Placeholder rollup field for the goal.
        "inProgressString": StringAttribute, // In-progress value of the goal.
        "amountDataType": StringAttribute, // Data type of the amount.
        "amountDataType_display": StringAttribute, // 
        "isAmount": BooleanAttribute, // Indicates whether the metric type is Count or Amount.
        "rollupQueryActualIntegerId": UUIDAttribute, // Choose the query that will be used to calculate the actual data for the goal (integer).
        "rollUpQueryActualMoneyId": UUIDAttribute, // Choose the query that will be used to calculate the actual data for the goal (money).
        "rollUpQueryActualDecimalId": UUIDAttribute, // Choose the query that will be used to calculate the actual data for the goal (decimal).
        "rollUpQueryCustomIntegerId": UUIDAttribute, // Choose the query that will be used to calculate data for the custom rollup field (integer).
        "rollUpQueryCustomMoneyId": UUIDAttribute, // Choose the query that will be used to calculate data for the custom rollup field (money).
        "rollUpQueryCustomDecimalId": UUIDAttribute, // Choose the query that will be used to calculate data for the custom rollup field (decimal).
        "rollUpQueryInprogressIntegerId": UUIDAttribute, // Choose the query that will be used to calculate data for the in-progress rollup field (integer).
        "rollUpQueryInprogressMoneyId": UUIDAttribute, // Choose the query that will be used to calculate data for the in-progress rollup field (money).
        "rollUpQueryInprogressDecimalId": UUIDAttribute, // Choose the query that will be used to calculate data for the in-progress rollup field (decimal).
        "rollupOnlyFromChildGoals": StringAttribute, // Select whether the data should be rolled up only from the child goals.
        "goalWithErrorId": UUIDAttribute, // Unique identifier of the goal that caused an error in the rollup of the goal hierarchy.
        "rollupErrorCode": StringAttribute, // Error code associated with rollup.
        "computedTargetAsOfTodayPercentageAchieved": StringAttribute, // Shows the expected value for percentage achieved against the target goal as of the current date.
        "computedTargetAsOfTodayMoney": StringAttribute, // Shows the expected amount for actual value (money type) against the target goal as of the current date.
        "computedTargetAsOfTodayMoneyBase": StringAttribute, // Shows the expected amount in base currency for actual value (money type) against the target goal as of the current date.
        "computedTargetAsOfTodayDecimal": DecimalAttribute, // Shows the expected amount for actual value (decimal type) against the target goal.
        "computedTargetAsOfTodayInteger": IntegerAttribute, // Shows the expected amount for actual value (integer type) against the target goal as of the current date.
        "isOverride": BooleanAttribute, // Indicates whether the values of system rollup fields can be updated.
        "isOverridden": BooleanAttribute, // Select whether the system rollup fields are updated. If set to Yes, the next system rollup will not update the values of the rollup fields with the system calculated values.
        "entityImageId": UUIDAttribute, // For internal use only.
      ])
      .registerPath("applications_goals")
      .routingPath("/applications/goals");
  }
}
mixin(EntityCalls!("GoalEntity"));

version(test_model_applications) { unittest {
  assert(GoalEntity);

  auto entity = GoalEntity;
}}