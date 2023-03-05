/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.uuids.uuid;

@safe:
import uim.oop;

class DUUIDAttribute : DAttribute {
  mixin(AttributeThis!("UUIDAttribute"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("uuid")
      .dataFormats(["uuid"])
      .registerPath("uuid");
  }

  override DValue createValue() {
    return UUIDValue(this); }
}
mixin(AttributeCalls!("UUIDAttribute"));

///
unittest {
  auto attribute = new DUUIDAttribute;
  assert(attribute.name == "uuid");
  assert(attribute.registerPath == "uuid");

  DAttribute generalAttribute = attribute;
  assert(!cast(DIntegerAttribute)generalAttribute);

  DValue value = attribute.createValue();
  assert(cast(DUUIDValue)value);
}