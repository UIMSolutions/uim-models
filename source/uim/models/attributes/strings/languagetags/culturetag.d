/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.strings.languagetags.culturetag;

@safe:
import uim.oop;

class DCultureTagAttribute : DStringAttribute {
  mixin(AttributeThis!("CultureTagAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    /* means.reference.language.tag
    means.reference.culture.tag */
    this
      .name("languageTag")
      .registerPath("languagetag");
  }
}
mixin(AttributeCalls!("CultureTagAttribute"));

version(test_uim_oops) { unittest {
    // TODO
  }
}