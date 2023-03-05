/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.strings.gender;

@safe:
import uim.oop;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.demographic.gender */
class DGenderAttribute : DStringAttribute {
  mixin(AttributeThis!("GenderAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("gender")
      .registerPath("gender");
  }
}
mixin(AttributeCalls!("GenderAttribute"));

///
unittest {
  auto attribute = new DGenderAttribute;
  assert(attribute.name == "gender");
  assert(attribute.registerPath == "gender");
}