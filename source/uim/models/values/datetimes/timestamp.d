/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.values.datetimes.timestamp;

@safe:
import uim.oop;

class DTimestampValue : DLongValue {
  mixin(ValueThis!("TimestampValue", "long"));  

  override DValue copy() {
    return TimestampValue(value);
  }

  alias opEquals = DLongValue.opEquals;
}
mixin(ValueCalls!("TimestampValue", "long"));  

version(test_uim_oops) { unittest {    
    // TODO
}} 