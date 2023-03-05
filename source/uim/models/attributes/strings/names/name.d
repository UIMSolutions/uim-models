/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.strings.names.name;

/* any <- char <- string <- name
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.name */

@safe:
import uim.oop;

class DNameAttribute : DStringAttribute {
  mixin(AttributeThis!("NameAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("name")
      .registerPath("name");
  }
}
mixin(AttributeCalls!("NameAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}