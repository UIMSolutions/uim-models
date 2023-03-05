/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.latitude;

@safe:
import uim.oop;

// means.location.latitude
class DLatitudeAttribute : DDoubleAttribute {
  mixin(AttributeThis!("LatitudeAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("latitude")
      .registerPath("latitude");
  }
}
mixin(AttributeCalls!("LatitudeAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}