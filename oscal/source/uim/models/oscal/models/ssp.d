/**
 * OSCAL System Security Plan (SSP) Model
 * 
 * Defines the structure for OSCAL System Security Plans, which document
 * how controls are implemented in a specific system.
 */
module uim.oscal.models.ssp;

import uim.oscal.models.common;
import asdf;

/**
 * Represents a System Security Plan
 */
struct SystemSecurityPlan {
    string uuid;
    OSCALMetadata metadata;
    SystemInformation systemInformation;
    @serializationOptional
    SystemImplementation systemImplementation;
    @serializationOptional
    ControlImplementation controlImplementation;
    @serializationOptional
    BackMatter backMatter;
    
    string getDocumentType() const {
        return "system-security-plan";
    }
}

/**
 * Represents system information and characteristics
 */
struct SystemInformation {
    string systemId;
    string systemName;
    @serializationOptional
    string systemAbbreviation;
    @serializationOptional
    string systemDescription;
    @serializationOptional
    string systemType;
    @serializationOptional
    SecurityLevel securityLevel;
}

/**
 * Represents system security level
 */
enum SecurityLevel : string {
    low = "low",
    moderate = "moderate",
    high = "high",
    notApplicable = "na"
}

/**
 * Represents system implementation details
 */
struct SystemImplementation {
    Component[] components;
    @serializationOptional
    SystemUser[] users;
    @serializationOptional
    NetworkArchitecture networkArchitecture;
}

/**
 * Represents a system component
 */
struct Component {
    string uuid;
    string componentType;
    string title;
    @serializationOptional
    string description;
    @serializationOptional
    Status status;
    @serializationOptional
    ExternalReference[] externalReferences;
    @serializationOptional
    Property[] properties;
}

/**
 * Represents component status
 */
enum Status : string {
    operational = "operational",
    decommissioned = "decommissioned",
    planned = "planned",
    underDevelopment = "under-development"
}

/**
 * Represents a system user or role
 */
struct SystemUser {
    string uuid;
    string roleId;
    @serializationOptional
    string title;
    @serializationOptional
    string description;
    @serializationOptional
    string shortName;
}

/**
 * Represents network architecture or topology
 */
struct NetworkArchitecture {
    @serializationOptional
    string description;
    @serializationOptional
    Diagram[] diagrams;
}

/**
 * Represents a network diagram
 */
struct Diagram {
    string uuid;
    string title;
    @serializationOptional
    ExternalReference reference;
}

/**
 * Represents how controls are implemented
 */
struct ControlImplementation {
    ImplementedControl[] implementedControls;
}

/**
 * Represents an implemented control
 */
struct ImplementedControl {
    string controlId;
    @serializationOptional
    ImplementationStatus status;
    @serializationOptional
    ControlStatement[] statements;
    @serializationOptional
    Responsibility[] responsibilities;
}

/**
 * Represents responsibility for control implementation
 */
struct Responsibility {
    string componentId;
    string description;
    @serializationOptional
    Property[] properties;
}

/**
 * Represents a property or attribute
 */
struct Property {
    string name;
    string value;
    @serializationOptional
    string class_;
    
    @serializationKeys("class", "class_")
    string class_() const {
        return class_;
    }
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
