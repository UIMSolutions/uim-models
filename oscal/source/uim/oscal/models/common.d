/**
 * OSCAL Common Types and Base Structures
 * 
 * Defines common metadata, identification, and utility structures
 * used throughout the OSCAL framework.
 */
module uim.oscal.models.common;

import std.datetime : DateTime;
import asdf;

/**
 * Represents metadata common to all OSCAL documents
 */
struct OSCALMetadata {
    string title;
    string[] authors;
    DateTime lastModified;
    string version_;
    string oscalVersion = "1.1.3";
    string[string] remarks;
    
    @serializationKeys("version", "version_")
    @serializationOptional
    string version_() const {
        return version_;
    }
}

/**
 * Represents a control or control group identifier
 */
struct ControlIdentifier {
    string id;
    string title;
    @serializationOptional
    string class_;
    @serializationOptional
    string family;
    
    @serializationKeys("class", "class_")
    string class_() const {
        return class_;
    }
}

/**
 * Represents a statement within a control
 */
struct ControlStatement {
    string statementId;
    string text;
    @serializationOptional
    string[string] byComponent;
}

/**
 * Represents an implementation status
 */
enum ImplementationStatus : string {
    implemented = "implemented",
    partial = "partial",
    planned = "planned",
    alternative = "alternative",
    notApplicable = "not-applicable"
}

/**
 * Represents a responsible party or role
 */
struct ResponsibleParty {
    string roleId;
    @serializationOptional
    string name;
    @serializationOptional
    string email;
    @serializationOptional
    string phone;
}

/**
 * Represents a reference or link to external content
 */
struct ExternalReference {
    string href;
    @serializationOptional
    string mimeType;
    @serializationOptional
    string title;
    @serializationOptional
    string relation;
}

/**
 * Represents a revision/history entry
 */
struct RevisionEntry {
    DateTime timestamp;
    string version_;
    @serializationOptional
    string author;
    @serializationOptional
    string remarks;
    
    @serializationKeys("version", "version_")
    string version_() const {
        return version_;
    }
}

/**
 * Base class for OSCAL documents
 */
abstract class OSCALDocument {
    OSCALMetadata metadata;
    
    abstract string getDocumentType() const;
}
