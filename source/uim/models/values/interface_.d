/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module uim.models.values.interface_;

@safe:
import uim.models;

interface IValue {
  IAttribute attribute();
  
  bool isBoolean();
  bool isInteger();
  bool isDouble();
  bool isLong();
  bool isTime();
  bool isDate();
  bool isDatetime();
  bool isTimestamp();
  bool isString();

  bool isScalar();
  bool isArray();
  bool isObject();
  bool isEntity();
  bool isUUID();

  bool isNullable();
  bool isNull();
  bool isReadOnly();

  Json toJson();
  string toString();
}