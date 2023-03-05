/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.watts.watt;

/* Unit of measure for power or radiant flux in watts

Inheritance
any <- float <- double <- watt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.power
means.measurement.units.si.watt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.oop;

class DWattAttribute : DDoubleAttribute {
  mixin(AttributeThis!("WattAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("watt")
      .registerPath("watt");
  }
}
mixin(AttributeCalls!("WattAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}