/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.integers.calenderparts.trimester;

/* any <- integer <- integerCalendarPart <- trimester
Traits
is.dataFormat.integer
means.calendar
means.calendar.trimester */

@safe:
import uim.oop;

class DTrimesterAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("TrimesterAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("trimester")
      .registerPath("trimester");
  }
}
mixin(AttributeCalls!("TrimesterAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DTrimesterAttribute);
    testAttribute(TrimesterAttribute);
  }
}