/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.models.attributes.integers.hour;

/* Unit of measure for time in 3600 second interval

means.measurement.dimension.time
means.measurement.duration.hours
has.measurement.fundamentalComponent.second */

@safe:
import uim.models;

class DHourAttribute : DIntegerAttribute {
  mixin(AttributeThis!("HourAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("hour")
      .registerPath("hour");
  }    
}
mixin(AttributeCalls!("HourAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DHourAttribute);
    testAttribute(HourAttribute);
  }
}