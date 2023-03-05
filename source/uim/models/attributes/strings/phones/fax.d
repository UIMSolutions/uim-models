/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.strings.phones.fax;

/* any <- char <- string <- phoneFax
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.service.phone.fax */

@safe:
import uim.oop;

class DFaxAttribute : DStringAttribute {
  mixin(AttributeThis!("FaxAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("fax")
      .registerPath("fax");
  }
}
mixin(AttributeCalls!("FaxAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}