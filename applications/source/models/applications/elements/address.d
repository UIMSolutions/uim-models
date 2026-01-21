module models.applications.elements.address;

@safe:
import models.applications;

class DAddressElement : DElement {
  mixin(ElementThis!("AddressElement"));  

  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // individual values
      ]);
  }
}
mixin(ElementCalls!("AddressElement"));  

version(test_models_applications) version(test_models_applications) { unittest {  
    assert(AddressElement);

    writeln(AddressElement);
}}
