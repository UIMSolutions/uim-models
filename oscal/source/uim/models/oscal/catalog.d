/**
 * OSCAL Catalog Utilities
 * 
 * Provides utility functions for working with OSCAL catalogs,
 * including catalog composition, control lookup, and queries.
 */
module uim.oscal.catalog;

import uim.oscal.models;
import std.algorithm;
import std.array;
import std.range;

/**
 * Utility class for working with OSCAL catalogs
 */
class CatalogManager {
    private Catalog catalog;
    
    this(Catalog cat) {
        this.catalog = cat;
    }
    
    /**
     * Get all controls from the catalog (flattened)
     */
    Control[] getAllControls() const {
        Control[] controls;
        
        void collectControls(const ControlGroup[] groups) {
            foreach (group; groups) {
                controls ~= group.controls;
                if (!group.groups.empty) {
                    collectControls(group.groups);
                }
            }
        }
        
        collectControls(catalog.groups);
        return controls;
    }
    
    /**
     * Find a control by ID
     */
    Control* findControl(string controlId) {
        foreach (ref control; getAllControls()) {
            if (control.id == controlId) {
                return &control;
            }
        }
        return null;
    }
    
    /**
     * Get all controls in a specific family
     */
    Control[] getControlsByFamily(string familyId) {
        return getAllControls()
            .filter!(c => c.class_ == familyId)
            .array;
    }
    
    /**
     * Get control hierarchy with groups
     */
    ControlGroup[] getControlHierarchy() const {
        return catalog.groups;
    }
    
    /**
     * Search controls by title or description
     */
    Control[] searchControls(string query) {
        auto lowerQuery = query.toLower();
        return getAllControls()
            .filter!(c => c.title.toLower().canFind(lowerQuery))
            .array;
    }
}

private import std.string : toLower;
private import std.algorithm : canFind;
