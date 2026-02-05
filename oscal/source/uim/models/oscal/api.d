/**
 * OSCAL Vibe.d REST API Interface
 * 
 * Provides REST API endpoints for OSCAL document management
 * using vibe.d framework.
 */
module uim.oscal.api;

import vibe.d;
import uim.oscal.models;
import uim.oscal.serialization;
import uim.oscal.catalog;
import std.uuid;
import std.datetime;

/**
 * REST interface for OSCAL catalog operations
 */
@path("/api/v1/catalogs")
interface ICatalogAPI {
    /// Get all catalogs
    @method(HTTPMethod.GET)
    @path("")
    Catalog[] listCatalogs();
    
    /// Get catalog by UUID
    @method(HTTPMethod.GET)
    @path("/:id")
    Catalog getCatalog(string id);
    
    /// Create new catalog
    @method(HTTPMethod.POST)
    @path("")
    Catalog createCatalog(Catalog catalog);
    
    /// Update catalog
    @method(HTTPMethod.PUT)
    @path("/:id")
    Catalog updateCatalog(string id, Catalog catalog);
    
    /// Delete catalog
    @method(HTTPMethod.DELETE)
    @path("/:id")
    void deleteCatalog(string id);
    
    /// Get controls from catalog
    @method(HTTPMethod.GET)
    @path("/:id/controls")
    Control[] getControls(string id);
    
    /// Search controls
    @method(HTTPMethod.GET)
    @path("/:id/controls/search")
    Control[] searchControls(string id, string query);
}

/**
 * REST interface for OSCAL profile operations
 */
@path("/api/v1/profiles")
interface IProfileAPI {
    /// Get all profiles
    @method(HTTPMethod.GET)
    @path("")
    Profile[] listProfiles();
    
    /// Get profile by UUID
    @method(HTTPMethod.GET)
    @path("/:id")
    Profile getProfile(string id);
    
    /// Create new profile
    @method(HTTPMethod.POST)
    @path("")
    Profile createProfile(Profile profile);
    
    /// Update profile
    @method(HTTPMethod.PUT)
    @path("/:id")
    Profile updateProfile(string id, Profile profile);
    
    /// Delete profile
    @method(HTTPMethod.DELETE)
    @path("/:id")
    void deleteProfile(string id);
}

/**
 * REST interface for OSCAL System Security Plan operations
 */
@path("/api/v1/ssps")
interface ISSPApi {
    /// Get all SSPs
    @method(HTTPMethod.GET)
    @path("")
    SystemSecurityPlan[] listSSPs();
    
    /// Get SSP by UUID
    @method(HTTPMethod.GET)
    @path("/:id")
    SystemSecurityPlan getSSP(string id);
    
    /// Create new SSP
    @method(HTTPMethod.POST)
    @path("")
    SystemSecurityPlan createSSP(SystemSecurityPlan ssp);
    
    /// Update SSP
    @method(HTTPMethod.PUT)
    @path("/:id")
    SystemSecurityPlan updateSSP(string id, SystemSecurityPlan ssp);
    
    /// Delete SSP
    @method(HTTPMethod.DELETE)
    @path("/:id")
    void deleteSSP(string id);
    
    /// Get control implementations
    @method(HTTPMethod.GET)
    @path("/:id/controls")
    ControlImplementation[] getControlImplementations(string id);
}

/**
 * REST interface for OSCAL Assessment Results operations
 */
@path("/api/v1/assessments")
interface IAssessmentAPI {
    /// Get all assessment results
    @method(HTTPMethod.GET)
    @path("")
    AssessmentResults[] listAssessments();
    
    /// Get assessment by UUID
    @method(HTTPMethod.GET)
    @path("/:id")
    AssessmentResults getAssessment(string id);
    
    /// Create new assessment
    @method(HTTPMethod.POST)
    @path("")
    AssessmentResults createAssessment(AssessmentResults assessment);
    
    /// Update assessment
    @method(HTTPMethod.PUT)
    @path("/:id")
    AssessmentResults updateAssessment(string id, AssessmentResults assessment);
    
    /// Delete assessment
    @method(HTTPMethod.DELETE)
    @path("/:id")
    void deleteAssessment(string id);
    
    /// Get findings from assessment
    @method(HTTPMethod.GET)
    @path("/:id/findings")
    Finding[] getFindings(string id);
}

/**
 * API error response
 */
struct ErrorResponse {
    int code;
    string message;
    string[string] details;
}

/**
 * Default implementation base for OSCAL API services
 * Extend this class to implement actual storage and business logic
 */
abstract class OSCALAPIBase : ICatalogAPI, IProfileAPI, ISSPApi, IAssessmentAPI {
    // Catalog operations
    abstract override Catalog[] listCatalogs();
    abstract override Catalog getCatalog(string id);
    abstract override Catalog createCatalog(Catalog catalog);
    abstract override Catalog updateCatalog(string id, Catalog catalog);
    abstract override void deleteCatalog(string id);
    abstract override Control[] getControls(string id);
    abstract override Control[] searchControls(string id, string query);
    
    // Profile operations
    abstract override Profile[] listProfiles();
    abstract override Profile getProfile(string id);
    abstract override Profile createProfile(Profile profile);
    abstract override Profile updateProfile(string id, Profile profile);
    abstract override void deleteProfile(string id);
    
    // SSP operations
    abstract override SystemSecurityPlan[] listSSPs();
    abstract override SystemSecurityPlan getSSP(string id);
    abstract override SystemSecurityPlan createSSP(SystemSecurityPlan ssp);
    abstract override SystemSecurityPlan updateSSP(string id, SystemSecurityPlan ssp);
    abstract override void deleteSSP(string id);
    abstract override ControlImplementation[] getControlImplementations(string id);
    
    // Assessment operations
    abstract override AssessmentResults[] listAssessments();
    abstract override AssessmentResults getAssessment(string id);
    abstract override AssessmentResults createAssessment(AssessmentResults assessment);
    abstract override AssessmentResults updateAssessment(string id, AssessmentResults assessment);
    abstract override void deleteAssessment(string id);
    abstract override Finding[] getFindings(string id);
}
