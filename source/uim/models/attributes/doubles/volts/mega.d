module uim.oop.attributes.doubles.volts.mega;

/* Unit of power, equivalent to 10E6 volts

Inheritance
any <- float <- double <- volt <- megavolt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electromotiveForce
means.measurement.units.si.volt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.mega */

@safe:
import uim.oop;

class DMegaVoltAttribute : DVoltAttribute {
  mixin(AttributeThis!("MegaVoltAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("megavolt")
      .registerPath("megavolt");
  }
}
mixin(AttributeCalls!("MegaVoltAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}