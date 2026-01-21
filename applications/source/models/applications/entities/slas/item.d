module models.applications.entities.slas.item;

@safe:
import models.applications;

// Contains information about a tracked support KPI for a specific customer.
class DSLAItemEntity : DEntity {
  mixin(EntityThis!("SLAItemEntity"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "relatedField": StringAttribute, // Select the service level agreement (SLA) key performance indicator (KPI) that this SLA Item is created for.
        "slaId": UUIDAttribute, //Unique identifier for SLA associated with SLA Item.
        "exchangeRate": StringAttribute, // Exchange rate between the currency associated with the SLA Item record and the base currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the SLA Item record.
        "applicableWhenXml": StringAttribute, // Condition for SLA item
        "successConditionsXml": StringAttribute, // Condition for SLA item
        "solutionId": UUIDAttribute, // Unique identifier of the associated solution.
        "componentState": StringAttribute, // For internal use only.
        "componentState_display": StringAttribute, // 
        "overwriteTime": TimeAttribute, // For internal use only.
        "isManaged": BooleanAttribute, // For internal use only.
        "slaItemIdUnique": StringAttribute, // For internal use only.
        "sequenceNumber": NumberAttribute, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address.
        "failureAfter": StringAttribute, // Select how soon the success criteria must be met until the SLA item is considered failed and failure actions are initiated. The actual duration is based on the business hours as specified in the associated SLA record.
        "warnAfter": StringAttribute, // Select how soon the success criteria must be met before warning actions are initiated. The actual duration is based on the business hours as specified in the associated SLA record.
        "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the SLA Item record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "workflowId": UUIDAttribute, // Workflow associated with the SLA Item.
      ])
      .registerPath("applications_sla.items")
      .routingPath("/applications/slaitems");
  }
}
mixin(EntityCalls!("SLAItemEntity"));

version(test_model_applications) { unittest {
    assert(SLAItemEntity);
  
    auto entity = SLAItemEntity;
  }
}