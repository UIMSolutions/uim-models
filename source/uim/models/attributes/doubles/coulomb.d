module uim.oop.attributes.doubles.coulomb;

@safe:
import uim.oop;

// Unit of measure for electric charge or amount of electricity in coulombs

/* means.measurement.dimension.electricCharge
means.measurement.units.si.coulomb
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere */
class DCoulombAttribute : DDoubleAttribute {
  mixin(AttributeThis!("CoulombAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("coulomb")
      .registerPath("coulomb");
  }
}
mixin(AttributeCalls!("CoulombAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}