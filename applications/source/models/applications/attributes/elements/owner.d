module models.applications.attributes.elements.owner;

@safe:
import models.applications;

class DOwnerAttribute : DElementAttribute {
  mixin(AttributeThis!("OwnerAttribute"));

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);
  }

  override DValue createValue() {
    return OwnerValue(this); }
}
mixin(AttributeCalls!"OwnerAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DOwnerAttribute);
    testAttribute(OwnerAttribute);
  }
}