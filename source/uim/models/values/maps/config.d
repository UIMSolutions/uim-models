/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.values.maps.config;

@safe:
import uim.models;

class DConfigurationValue : DMapValue!string {
  // Constructors
  this() { initialize; }
}
auto ConfigurationValue() { return new DConfigurationValue; }

///
unittest {
}
