module models.applications.entities.slas.kpi_instance;

@safe:
import models.applications;

// Service level agreement (SLA) key performance indicator (KPI) instance that is tracked for an individual case
class DSLAKpiInstanceEntity : DEntity {
  mixin(EntityThis!("SLAKpiInstanceEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        OwnerIdAttribute,// Owner Id
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
      ])
      .addValues([ // individual values
        "computedFailureTime": TimeAttribute, // Computed Failure Date and time
        "computedWarningTime": TimeAttribute, // Computed Warning Date and time
        "failureTime": TimeAttribute, // Enter the date and time when the service level agreement (SLA) key performance indicator (KPI) will expire.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningUserId": UserIdAttribute, // Owning User.
        "owningTeamId": TeamIdAttribute, // , // OwningTeam.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Owning Business Unit.
        "regarding": StringAttribute, // Unique identifier of the record that this service level agreement (SLA) key performance indicator (KPI) instance is associated with.
        "status": StringAttribute, // Reason for the status of the service level agreement (SLA) key performance indicator (KPI) instance. For example, the SLA KPI could be Noncompliant or Succeeded.
        "status_display": StringAttribute, // 
        "succeededOn": DatetimeAttribute, // Shows the date and time when the service level agreement (SLA) key performance indicator (KPI) success criteria was met.
        "warningTime": TimeAttribute, // Enter the date and time when the service level agreement (SLA) key performance indicator (KPI)will go to a warning state.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // For internal use only.
        "warningTimeReached": StringAttribute, // Shows information about whether the case has reached its warning time.
        "warningTimeReached_display": StringAttribute, // 
      ])
      .registerPath("applications_slas.kpi_instance")
      .routingPath("/applications/slaskpiinstances");
  }
}
mixin(EntityCalls!("SLAKpiInstanceEntity"));

version(test_model_applications) { unittest {
    assert(SLAKpiInstanceEntity);
  
    auto entity = SLAKpiInstanceEntity;
  }
}