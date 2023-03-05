/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.codes.currency;

@safe:
import uim.oop;

// is.dataFormat.character
// is.dataFormat.big
// is.dataFormat.array
// means.measurement.currencyCode
// Value is a ISO 4217 currency code
class DCurrencyCodeAttribute : DStringStringAttribute {
  mixin(AttributeThis!("CurrencyCodeAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("currencyCode")
      .registerPath("currencyCode");
  }
}
mixin(AttributeCalls!("CurrencyCodeAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}