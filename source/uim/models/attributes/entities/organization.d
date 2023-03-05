/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.entities.organization;

@safe:
import uim.oop;

class DOrganizationAttribute : DEntityAttribute {
  mixin(AttributeThis!("OrganizationAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("organization")
      .registerPath("organization");
  }  
}
mixin(AttributeCalls!("OrganizationAttribute"));

version(test_uim_oops) { unittest {
    testAttribute(new DOrganizationAttribute);
    testAttribute(OrganizationAttribute);
  }
}