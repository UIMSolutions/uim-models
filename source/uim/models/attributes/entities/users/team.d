/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.entities.users.team;

@safe:
import uim.oop;

class DTeamAttribute : DEntityAttribute {
  mixin(AttributeThis!("TeamAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("team")
      .registerPath("team");
  }  
}
mixin(AttributeCalls!("TeamAttribute"));

version(test_uim_oops) { unittest {
  
    // TODO 
  }  
}