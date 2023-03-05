/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.newton;

/* Unit of measure for force or weight in newtons

Inheritance
any <- float <- double <- newton
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.force
means.measurement.units.si.newton
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.oop;

class DNewtonAttribute : DDoubleAttribute {
  mixin(AttributeThis!("NewtonAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("newton")
      .registerPath("newton");
  }
}
mixin(AttributeCalls!("NewtonAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}