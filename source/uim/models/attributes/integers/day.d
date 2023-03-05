/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.integers.day;

@safe:
import uim.oop;

  /* Unit of measure for time in 'one earth rotation' interval
  is.dataFormat.integer
  means.measurement.dimension.time
  means.measurement.duration.days
  has.measurement.fundamentalComponent.second */
class DDayAttribute : DIntegerAttribute {
  mixin(AttributeThis!("DayAttribute"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("day")
      .registerPath("day");    
  }
}
mixin(AttributeCalls!("DayAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DDayAttribute);
    testAttribute(DayAttribute);
  }
}