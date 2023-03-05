/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.datetimes.datetime;

@safe:
import uim.oop;

class DDatetimeAttribute : DDateAttribute {
  mixin(AttributeThis!("DatetimeAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addDataFormats(["time"])
      .name("datetime")
      .registerPath("datetime");
      // means.measurement.date
      // means.measurement.time
  }
  override DValue createValue() {
    return DatetimeValue(this); }
}
mixin(AttributeCalls!"DatetimeAttribute");

version(test_uim_oops) { unittest {
    testAttribute(new DDatetimeAttribute);
    testAttribute(DatetimeAttribute);
  }
}