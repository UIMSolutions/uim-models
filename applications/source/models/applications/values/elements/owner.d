module models.applications.values.elements.owner;

@safe:
import models.applications;

class DOwnerValue : DElementValue {
  mixin(ValueThis!("OwnerValue", "DElement"));  

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .value(OwnerElement);
  }
}
mixin(ValueCalls!("OwnerValue", "DElement"));  

version(test_models_applications) version(test_models_applications) { unittest {  
    assert(OwnerValue);

    writeln(OwnerValue);
}}
