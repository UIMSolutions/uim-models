/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.doubles.volts.milli;

/* Unit of power, equivalent to 10E-3 millivolts

Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electromotiveForce
means.measurement.units.si.millivolt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.milli */

@safe:
import uim.models;

class DMilliVoltAttribute : DVoltAttribute {
  mixin(AttributeThis!("MilliVoltAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("millivolt")
      .registerPath("millivolt");
  }
}
mixin(AttributeCalls!("MilliVoltAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}