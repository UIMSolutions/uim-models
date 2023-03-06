module uim.models.attributes.doubles.candela;

// candela
// Unit of measure for luminous intensity in candelas

@safe:
import uim.models;

class DCandelaAttribute : DDoubleAttribute {
  mixin(AttributeThis!("CandelaAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

/* is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.luminousIntensity
means.measurement.units.si.candela
has.measurement.fundamentalComponent.candela */

    this
      .name("candela")
      .registerPath("candela");
  }
}
mixin(AttributeCalls!("CandelaAttribute"));

version(test_uim_models) { unittest {
    // TODO
  }
}