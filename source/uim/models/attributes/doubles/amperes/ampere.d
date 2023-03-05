/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.amperes.ampere;

// Unit of measure for electric current in amperes
/** 
 * is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electricCurrent
means.measurement.units.si.ampere
has.measurement.fundamentalComponent.ampere
 */

@safe:
import uim.oop;

class DAmpereAttribute : DDoubleAttribute {
  mixin(AttributeThis!("AmpereAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("ampere")
      .registerPath("ampere");
  }
}
mixin(AttributeCalls!("AmpereAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}