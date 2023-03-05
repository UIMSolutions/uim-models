/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.mole;

/* Unit of measure for amount in moles

Inheritance
any <- float <- double <- mole
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.amount
means.measurement.units.si.mole
has.measurement.fundamentalComponent.mole */

@safe:
import uim.oop;

class DMoleAttribute : DDoubleAttribute {
  mixin(AttributeThis!("MoleAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("mole")
      .registerPath("mole");
  }
}
mixin(AttributeCalls!("MoleAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}