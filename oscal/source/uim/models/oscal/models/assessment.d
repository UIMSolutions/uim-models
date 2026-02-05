/**
 * OSCAL Assessment Results Model
 * 
 * Defines the structure for OSCAL Assessment Results, which document
 * the results of control assessments and testing.
 */
module uim.oscal.models.assessment;

import uim.oscal.models.common;
import std.datetime : DateTime;
import asdf;

/**
 * Represents Assessment Results
 */
struct AssessmentResults {
    string uuid;
    OSCALMetadata metadata;
    @serializationOptional
    AssessmentMetadata assessmentMetadata;
    ControlResults[] controlResults;
    @serializationOptional
    BackMatter backMatter;
    
    string getDocumentType() const {
        return "assessment-results";
    }
}

/**
 * Represents assessment metadata
 */
struct AssessmentMetadata {
    DateTime assessmentDate;
    @serializationOptional
    DateTime assessmentDueDate;
    @serializationOptional
    string assessmentType;
    @serializationOptional
    Assessor[] assessors;
    @serializationOptional
    string methodology;
}

/**
 * Represents an assessor
 */
struct Assessor {
    string uuid;
    string name;
    @serializationOptional
    string email;
    @serializationOptional
    string phone;
    @serializationOptional
    string qualifications;
}

/**
 * Represents results for a control
 */
struct ControlResults {
    string controlId;
    @serializationOptional
    AssessmentResult result;
    @serializationOptional
    Finding[] findings;
    @serializationOptional
    Observation[] observations;
    @serializationOptional
    DateTime testedDate;
}

/**
 * Represents the assessment result for a control
 */
enum AssessmentResult : string {
    satisfied = "satisfied",
    notSatisfied = "not-satisfied",
    inconclusive = "inconclusive",
    notApplicable = "not-applicable"
}

/**
 * Represents a finding from the assessment
 */
struct Finding {
    string uuid;
    string title;
    string description;
    @serializationOptional
    Severity severity;
    @serializationOptional
    DateTime discoveryDate;
    @serializationOptional
    string remediation;
}

/**
 * Represents severity level
 */
enum Severity : string {
    critical = "critical",
    high = "high",
    moderate = "moderate",
    low = "low",
    informational = "informational"
}

/**
 * Represents an observation from testing
 */
struct Observation {
    string uuid;
    string title;
    string description;
    @serializationOptional
    string type;
    @serializationOptional
    ExternalReference[] methods;
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
