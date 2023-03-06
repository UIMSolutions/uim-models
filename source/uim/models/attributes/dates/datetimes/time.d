/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.models.attributes.datetimes.time;

@safe:
import uim.models;

class DTimeAttribute : DAttribute {
  mixin(AttributeThis!("TimeAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .dataFormats(["time"])
      .name("time")
      .registerPath("time");
      // means.measurement.date
      // means.measurement.time
  }
  override DValue createValue() {
    return TimeValue(this); }
}
mixin(AttributeCalls!"TimeAttribute");

version(test_uim_models) { unittest {
    testAttribute(new DTimeAttribute);
    testAttribute(TimeAttribute);
  }
}