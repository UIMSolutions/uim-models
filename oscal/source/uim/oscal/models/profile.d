/**
 * OSCAL Profile Model
 * 
 * Defines the structure for OSCAL Profiles, which tailor catalogs
 * by selecting and customizing controls for specific contexts.
 */
module uim.oscal.models.profile;

import uim.oscal.models.common;
import asdf;

/**
 * Represents a profile/tailoring
 */
struct Profile {
    string uuid;
    OSCALMetadata metadata;
    
    @serializationOptional
    Imports imports;
    
    @serializationOptional
    Merge mergeStrategy;
    
    @serializationOptional
    BackMatter backMatter;
    
    string getDocumentType() const {
        return "profile";
    }
}

/**
 * Represents imported catalog(s)
 */
struct Imports {
    string catalogSource;
    @serializationOptional
    string exclude;
    @serializationOptional
    string include;
}

/**
 * Represents merge strategy for combining catalogs
 */
struct Merge {
    @serializationOptional
    string asIs;
    @serializationOptional
    CustomControls customControls;
}

/**
 * Represents custom controls added to a profile
 */
struct CustomControls {
    @serializationOptional
    Control[] controls;
}

/**
 * Represents a selected control in a profile
 */
struct Control {
    string id;
    @serializationOptional
    string statement;
}

/**
 * Represents back matter content
 */
struct BackMatter {
    @serializationOptional
    Resource[] resources;
}

/**
 * Represents a resource reference
 */
struct Resource {
    string uuid;
    string title;
}
