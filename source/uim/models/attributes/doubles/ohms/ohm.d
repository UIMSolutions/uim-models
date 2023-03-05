/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.ohms.ohm;

/* Description

Unit of measure for electrical resistance, impedance, reactance in ohms

Inheritance
any <- float <- double <- ohm
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.resistance
means.measurement.units.si.ohm
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere */

@safe:
import uim.oop;

class DOhmAttribute : DDoubleAttribute {
  mixin(AttributeThis!("OhmAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("ohm")
      .registerPath("ohm");
  }
}
mixin(AttributeCalls!("OhmAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}