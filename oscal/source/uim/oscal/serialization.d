/**
 * OSCAL JSON Serialization Support
 * 
 * Provides serialization and deserialization of OSCAL documents
 * to/from JSON format using the asdf library.
 */
module uim.oscal.serialization;

import uim.oscal.models;
import std.json;
import asdf;

/**
 * Serializes an OSCAL document to JSON string
 */
string serializeOSCAL(T)(const T document) if (is(T == Catalog) || is(T == Profile) || 
                                                 is(T == SystemSecurityPlan) || 
                                                 is(T == AssessmentResults)) {
    return document.serializeToJson();
}

/**
 * Deserializes JSON string to OSCAL Catalog
 */
Catalog deserializeCatalog(string jsonData) {
    return jsonData.deserialize!Catalog;
}

/**
 * Deserializes JSON string to OSCAL Profile
 */
Profile deserializeProfile(string jsonData) {
    return jsonData.deserialize!Profile;
}

/**
 * Deserializes JSON string to OSCAL System Security Plan
 */
SystemSecurityPlan deserializeSystemSecurityPlan(string jsonData) {
    return jsonData.deserialize!SystemSecurityPlan;
}

/**
 * Deserializes JSON string to OSCAL Assessment Results
 */
AssessmentResults deserializeAssessmentResults(string jsonData) {
    return jsonData.deserialize!AssessmentResults;
}

/**
 * Generic OSCAL document deserializer - auto-detects document type
 */
alias OSCALDocument = Variant!(Catalog, Profile, SystemSecurityPlan, AssessmentResults);

import std.variant;

OSCALDocument deserializeOSCAL(string jsonData) {
    auto parsed = parseJson(jsonData);
    
    if ("catalog" in parsed) {
        return OSCALDocument(jsonData.deserialize!Catalog);
    } else if ("profile" in parsed) {
        return OSCALDocument(jsonData.deserialize!Profile);
    } else if ("system-security-plan" in parsed) {
        return OSCALDocument(jsonData.deserialize!SystemSecurityPlan);
    } else if ("assessment-results" in parsed) {
        return OSCALDocument(jsonData.deserialize!AssessmentResults);
    }
    
    throw new Exception("Unknown OSCAL document type");
}

private JSONValue parseJson(string jsonData) {
    return parseJSON(jsonData);
}
