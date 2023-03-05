/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.lookups.booleans.string_;

@safe:
import uim.oop;

class DBooleanStringAttribute : DAttribute {
  mixin(AttributeThis!("BooleanStringAttribute"));

  mixin(OProperty!("string[bool]", "lookups"));

  override DValue createValue() {
    return LookupValue!(bool, string)(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("BooleanStringAttribute"));

version(test_uim_oops) { unittest {  
    // TODO tests
  }
}