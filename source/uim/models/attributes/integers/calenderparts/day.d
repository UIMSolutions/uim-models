/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.integers.calenderparts.day;

@safe:
import uim.oop;

/* means.calendar
means.calendar.day */
class DDayPartAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("DayPartAttribute"));

override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("daypart")
      .registerPath("daypart");
  }   
}
mixin(AttributeCalls!("DayPartAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DDayPartAttribute);
    testAttribute(DayPartAttribute);
  }
}