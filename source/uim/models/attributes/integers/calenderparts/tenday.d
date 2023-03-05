/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.integers.calenderparts.tenday;

/* any <- integer <- integerCalendarPart <- tenday
Traits
is.dataFormat.integer
means.calendar
means.calendar.tenday */

@safe:
import uim.oop;

class DTendayAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("TendayAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("tenday")
      .registerPath("tenday");
  }
}
mixin(AttributeCalls!("TendayAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DTendayAttribute);
    testAttribute(TendayAttribute);
  }
}