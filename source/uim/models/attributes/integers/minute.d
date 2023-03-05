/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.integers.minute;

/* Unit of measure for time in 60 second interval

Inheritance
any <- integer <- minute
Traits
is.dataFormat.integer
means.measurement.dimension.time
means.measurement.duration.minutes
has.measurement.fundamentalComponent.second */

@safe:
import uim.oop;

class DMinuteAttribute : DIntegerAttribute {
  mixin(AttributeThis!("MinuteAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("minute")
      .registerPath("minute");
  }    
}
mixin(AttributeCalls!("MinuteAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DMinuteAttribute);
    testAttribute(MinuteAttribute);
  }
}