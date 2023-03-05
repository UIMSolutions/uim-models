/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.codes.state;

@safe:
import uim.oop;

class DStateCodeAttribute : DIntegerStringAttribute {
  mixin(AttributeThis!("StateCodeAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("stateCode")
      .display("Status Reason")
      .lookups([
        0: "Active",  
        1: "Inactive"
      ])
      .isNullable(true)
      .registerPath("statecode");
  }
}
mixin(AttributeCalls!("StateCodeAttribute"));

version(test_uim_oops) { unittest {  
    // TODO tests
  }
}