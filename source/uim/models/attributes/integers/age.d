/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.models.attributes.integers.age;

@safe:
import uim.models;

class DAgeAttribute : DIntegerAttribute {
  mixin(AttributeThis!("AgeAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    //means.demographic.age
    //means.measurement.age
    this
      .name("age")
      .registerPath("age");    
  }
}
mixin(AttributeCalls!"AgeAttribute");

version(test_uim_models) { unittest {
    testAttribute(new DAgeAttribute);
    testAttribute(AgeAttribute);
  }
}