module uim.oscal;

/**
 * OSCAL D Language Library
 * 
 * A comprehensive D language library for working with OSCAL
 * (Open Security Controls Assessment Language) documents.
 * 
 * This library provides:
 * - Complete OSCAL data models for catalogs, profiles, SSPs, and assessments
 * - JSON serialization/deserialization using asdf
 * - REST API endpoints using vibe.d
 * - Utility functions for catalog and document manipulation
 * 
 * Example usage:
 * ---
 * import uim.oscal;
 * 
 * // Load a catalog from JSON
 * string catalogJson = readText("nist-catalog.json");
 * auto catalog = deserializeCatalog(catalogJson);
 * 
 * // Use catalog utilities
 * auto manager = new CatalogManager(catalog);
 * auto controls = manager.getControlsByFamily("AC");
 * 
 * // Search controls
 * auto results = manager.searchControls("authentication");
 * ---
 */
module uim.oscal;

public import uim.oscal.models;








public import uim.oscal.api;public import uim.oscal.catalog;public import uim.oscal.serialization;public import uim.oscal.models.assessment;public import uim.oscal.models.ssp;public import uim.oscal.models.profile;public import uim.oscal.models.common;
public import uim.oscal.models.catalog;