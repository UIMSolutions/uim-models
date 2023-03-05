/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.pascals.pascal;

/* pascal
Description

Unit of measure for pressure or stress in pascals

Inheritance
any <- float <- double <- pascal
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.pressure
means.measurement.units.si.pascal
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.oop;

class DPascalAttribute : DDoubleAttribute {
  mixin(AttributeThis!("PascalAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("pascal")
      .registerPath("pascal");
  }
}
mixin(AttributeCalls!("PascalAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}