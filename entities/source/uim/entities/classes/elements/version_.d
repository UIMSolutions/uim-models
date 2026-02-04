/****************************************************************************************************************
* Copyright: © 2018-2026 Ozan Nurettin Süel (aka UIManufaktur) 
* License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file. 
* Authors: Ozan Nurettin Süel (aka UIManufaktur)
*****************************************************************************************************************/
module uim.entities.classes.elements.version_;

import uim.entities;

mixin(ShowModule!());

@safe:
class UIMVersion : UIMElement {
  // static namespace = moduleName!DVersion;

  // Constructors
  this() {
    super();
  }

  this(Json initData) {
    super(initData.toMap);
  }

  this(Json[string] initData) {
    super(initData);
  }

  override bool initialize(Json[string] initData = null) {
    if (!super.initialize(initData)) {
      return false;
    }

    // this
    //   .addValues([
    //     "description": new StringAttribute,
    //     "by": new UUIDAttribute,
    //     "display": new StringAttribute,
    //     "mode": new StringAttribute,
    //     "number": new LongAttribute,
    //     "on": new TimestampAttribute
    //   ]);

    return true;
  }

  protected long _number;

  /// Getter for number
  long number() const @property {
    return _number;
  }

  /// Setter for number (chainable)
  UIMVersion number(long value) @property {
    _number = value;
    return this;
  }

  ///	Date and time when the entity was versioned.	
  ///	Date and time when the entity was versioned.
  protected long _on;

  /// Getter for on (timestamp)
  long on() const @property {
    return _on;
  }

  /// Setter for on (chainable)
  UIMVersion on(long value) @property {
    _on = value;
    return this;
  }
  /// 
  unittest {
    auto timestamp = toTimestamp(now);
    auto element = new UIMVersion;
    element.on = timestamp;
    assert(element.on == timestamp);
    assert(element.on != 1);

    timestamp = toTimestamp(now);
    assert(element.on(timestamp).on == timestamp);
    assert(element.on != 1);
  }

  // Who created version
  protected  UUID _by;
  /// Getter for by
  UUID by() const @property {
    return _by;
  }

  /// Setter for by (chainable)
  UIMVersion by(UUID value) @property {
    _by = value;
    return this;
  }
  /// 
  unittest {
    auto id = randomUUID;
    auto element = new UIMVersion;
    element.by = id;
    assert(element.by == id);
    assert(element.by != randomUUID);

    id = randomUUID;
    assert(element.by(id).by == id);
    assert(element.by != randomUUID);
  }

  mixin(ValueProperty!("string", "description"));
  /// 
  unittest {
    auto element = new UIMVersion;
    element.description = "newDescription";
    assert(element.description == "newDescription");
    assert(element.description != "noDescription");

    assert(element.description("otherDescription").description == "otherDescription");
    assert(element.description != "noDescription");
  }

  mixin(ValueProperty!("string", "display"));
  /// 
  unittest {
    auto element = new UIMVersion;
    element.display = "newDisplay";
    assert(element.display == "newDisplay");
    assert(element.display != "noDisplay");

    assert(element.display("otherDisplay").display == "otherDisplay");
    assert(element.display != "noDisplay");
  }

  protected string _mode;
  /// Getter for mode
  string mode() const @property {
    return _mode;
  }
  /// Setter for mode (chainable)
  UIMVersion mode(string value) @property {
    _mode = value;
    return this;
  }
  /// 
  unittest {
    auto element = new UIMVersion;
    element.mode = "newMode";
    assert(element.mode == "newMode");
    assert(element.mode != "noMode");

    assert(element.mode("otherMode").mode == "otherMode");
    assert(element.mode != "noMode");
  }

  override UIMElement create() {
    return new UIMVersion;
  }
}
