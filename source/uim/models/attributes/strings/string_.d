/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.oop.attributes.strings.string_;

@safe:
import uim.oop;

class DStringAttribute : DCharAttribute {
  mixin(AttributeThis!"StringAttribute");

  mixin(OProperty!("size_t", "maxLength"));

  // Initialization hook method.
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .name("string")
      .isString(true) 
      .registerPath("string");
  }
  override DValue createValue() {
    return StringValue(this)
      .maxLength(this.maxLength); }
}
mixin(AttributeCalls!"StringAttribute");

///
unittest {
  auto attribute = new DStringAttribute;
  assert(attribute.name == "string");
  assert(attribute.registerPath == "string");

  DAttribute generalAttribute = attribute;
  assert(!cast(DIntegerAttribute)generalAttribute);

  DValue value = attribute.createValue();
  assert(cast(DStringValue)value);
}