/**
 * OSCAL Catalog Model
 * 
 * Defines the structure for OSCAL Control Catalogs, which contain
 * a collection of security controls and control families.
 */
module uim.oscal.models.catalog;

import uim.oscal.models.common;
import std.datetime : DateTime;
import asdf;

/**
 * Represents a control within a catalog
 */
struct Control {
    string id;
    string title;
    @serializationOptional
    string class_;
    
    @serializationOptional
    ControlStatement[] statements;
    
    @serializationOptional
    ImplementationGuidance[] guidance;
    
    @serializationOptional
    ExternalReference[] references;
    
    @serializationOptional
    RelatedControl[] relatedControls;
    
    @serializationKeys("class", "class_")
    string class_() const {
        return class_;
    }
}

/**
 * Represents control guidance or supplementary information
 */
struct ImplementationGuidance {
    string type;
    string description;
}

/**
 * Represents a relationship between controls
 */
struct RelatedControl {
    string controlId;
    string relationship;
    @serializationOptional
    string description;
}

/**
 * Represents a control group or family
 */
struct ControlGroup {
    string id;
    string title;
    @serializationOptional
    string class_;
    
    @serializationOptional
    Control[] controls;
    @serializationOptional
    ControlGroup[] groups;
    
    @serializationKeys("class", "class_")
    string class_() const {
        return class_;
    }
}

/**
 * Represents an OSCAL Control Catalog
 */
struct Catalog {
    string uuid;
    OSCALMetadata metadata;
    ControlGroup[] groups;
    @serializationOptional
    BackMatter backMatter;
    
    string getDocumentType() const {
        return "catalog";
    }
}

/**
 * Represents back matter content (references, citations)
 */
struct BackMatter {
    @serializationOptional
    Resource[] resources;
}

/**
 * Represents a resource in back matter
 */
struct Resource {
    string uuid;
    string title;
    @serializationOptional
    string remark;
    @serializationOptional
    ExternalReference[] externalReferences;
}
