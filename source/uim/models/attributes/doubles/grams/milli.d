/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.grams.milli;

/* Unit of measure for mass in milligrams

Inheritance
any <- float <- double <- gram <- milligram
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.mass
means.measurement.units.si.gram
has.measurement.fundamentalComponent.kilogram
means.measurement.prefix.milli */

@safe:
import uim.oop;

class DKilogramAttribute : DGramAttribute {
  mixin(AttributeThis!("KilogramAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("kilogram")
      .registerPath("kilogram");
  }
}
mixin(AttributeCalls!("KilogramAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}