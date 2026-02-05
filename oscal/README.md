# OSCAL Library for D Language

A comprehensive D language library for working with **OSCAL** (Open Security Controls Assessment Language) documents. This library provides complete support for OSCAL catalogs, profiles, system security plans, and assessment results, with integrated REST API endpoints via vibe.d.

## Features

- **Complete OSCAL Data Models**: Full support for:
  - Control Catalogs (SP 800-53, etc.)
  - Profiles (tailored control baselines)
  - System Security Plans (SSP)
  - Assessment Results

- **JSON Serialization**: Full JSON support using the `asdf` library
  - Automatic serialization/deserialization
  - Proper handling of OSCAL conventions (snake_case, special fields)

- **REST API Integration**: Built-in vibe.d endpoints for:
  - Catalog management and search
  - Profile operations
  - SSP management and control implementation tracking
  - Assessment result storage and retrieval

- **Utility Functions**: High-level APIs for:
  - Control hierarchy traversal
  - Control searching and filtering
  - Catalog composition and merging
  - Assessment workflow management

## Installation

Add to your `dub.sdl`:

```sdl
dependency "oscal" path="path/to/oscal"
```

Or include in your dependencies:

```bash
dub add oscal
```

## Quick Start

### Basic Usage

```d
import uim.oscal;
import std.stdio;

void main() {
    // Create a catalog with controls
    auto metadata = OSCALMetadata(
        "My Security Catalog",
        ["Security Team"],
        Clock.currTime(),
        "1.0.0"
    );
    
    auto control = Control(
        "SEC-1",
        "Access Control",
        "AC"
    );
    
    auto group = ControlGroup(
        "AC",
        "Access Control Family",
        "AC",
        [control],
        []
    );
    
    auto catalog = Catalog(
        "uuid-here",
        metadata,
        [group]
    );
    
    // Work with controls
    auto manager = new CatalogManager(catalog);
    auto controls = manager.getAllControls();
    
    writeln("Catalog has ", controls.length, " controls");
}
```

### JSON Serialization

```d
import uim.oscal;

void main() {
    // Deserialize from JSON
    string jsonData = readText("catalog.json");
    auto catalog = deserializeCatalog(jsonData);
    
    // Serialize to JSON
    string output = catalog.serializeToJson();
    writeln(output);
}
```

### Using REST API

```d
import uim.oscal;
import vibe.d;

void main() {
    // Create your API implementation
    class MyOSCALAPI : OSCALAPIBase {
        private Catalog[string] catalogs;
        
        override Catalog[] listCatalogs() {
            return catalogs.values;
        }
        
        override Catalog getCatalog(string id) {
            return catalogs[id];
        }
        
        override Catalog createCatalog(Catalog catalog) {
            catalogs[catalog.uuid] = catalog;
            return catalog;
        }
        
        // ... implement other methods
    }
    
    // Register and run API
    auto api = new MyOSCALAPI();
    registerRestInterface(router, api);
    
    listenHTTP("127.0.0.1:8080", router);
}
```

### Searching and Filtering

```d
import uim.oscal;

void main() {
    string catalogJson = readText("nist-800-53.json");
    auto catalog = deserializeCatalog(catalogJson);
    
    auto manager = new CatalogManager(catalog);
    
    // Get all controls
    auto allControls = manager.getAllControls();
    
    // Get controls by family
    auto acControls = manager.getControlsByFamily("AC");
    
    // Search controls
    auto authControls = manager.searchControls("authentication");
    
    // Find specific control
    auto ac2 = manager.findControl("AC-2");
}
```

## Project Structure

```
oscal/
├── source/uim/oscal/
│   ├── package.d              # Main library module
│   ├── models.d               # Core model definitions
│   ├── models/
│   │   ├── common.d           # Common types and structures
│   │   ├── catalog.d          # Catalog model
│   │   ├── profile.d          # Profile model
│   │   ├── ssp.d              # System Security Plan model
│   │   └── assessment.d       # Assessment Results model
│   ├── serialization.d        # JSON serialization support
│   ├── catalog.d              # Catalog utilities
│   └── api.d                  # REST API interfaces
├── examples/
│   └── main.d                 # Basic usage example
├── tests/
│   └── test_oscal.d           # Unit tests
├── dub.sdl                    # Package manifest
└── README.md                  # This file
```

## OSCAL Data Models

### Catalog

Represents a collection of security controls:

```d
struct Catalog {
    string uuid;
    OSCALMetadata metadata;
    ControlGroup[] groups;
    BackMatter backMatter;
}
```

### Profile

Represents a tailored baseline of controls:

```d
struct Profile {
    string uuid;
    OSCALMetadata metadata;
    Imports imports;
    Merge mergeStrategy;
    BackMatter backMatter;
}
```

### System Security Plan (SSP)

Documents how controls are implemented in a system:

```d
struct SystemSecurityPlan {
    string uuid;
    OSCALMetadata metadata;
    SystemInformation systemInformation;
    SystemImplementation systemImplementation;
    ControlImplementation controlImplementation;
    BackMatter backMatter;
}
```

### Assessment Results

Documents control assessment outcomes:

```d
struct AssessmentResults {
    string uuid;
    OSCALMetadata metadata;
    AssessmentMetadata assessmentMetadata;
    ControlResults[] controlResults;
    BackMatter backMatter;
}
```

## REST API Endpoints

### Catalogs

- `GET /api/v1/catalogs` - List all catalogs
- `GET /api/v1/catalogs/{id}` - Get catalog by UUID
- `POST /api/v1/catalogs` - Create new catalog
- `PUT /api/v1/catalogs/{id}` - Update catalog
- `DELETE /api/v1/catalogs/{id}` - Delete catalog
- `GET /api/v1/catalogs/{id}/controls` - Get all controls
- `GET /api/v1/catalogs/{id}/controls/search?query=term` - Search controls

### Profiles

- `GET /api/v1/profiles` - List all profiles
- `GET /api/v1/profiles/{id}` - Get profile
- `POST /api/v1/profiles` - Create profile
- `PUT /api/v1/profiles/{id}` - Update profile
- `DELETE /api/v1/profiles/{id}` - Delete profile

### System Security Plans

- `GET /api/v1/ssps` - List all SSPs
- `GET /api/v1/ssps/{id}` - Get SSP
- `POST /api/v1/ssps` - Create SSP
- `PUT /api/v1/ssps/{id}` - Update SSP
- `DELETE /api/v1/ssps/{id}` - Delete SSP
- `GET /api/v1/ssps/{id}/controls` - Get control implementations

### Assessments

- `GET /api/v1/assessments` - List all assessments
- `GET /api/v1/assessments/{id}` - Get assessment
- `POST /api/v1/assessments` - Create assessment
- `PUT /api/v1/assessments/{id}` - Update assessment
- `DELETE /api/v1/assessments/{id}` - Delete assessment
- `GET /api/v1/assessments/{id}/findings` - Get findings

## Dependencies

- **vibe-d** (>=0.9.0) - Web framework for REST API
- **asdf** (>=0.7.0) - Fast JSON serialization/deserialization

## Building

Build as a library:
```bash
dub build
```

Run examples:
```bash
dub run -c example
```

Run tests:
```bash
dub test
```

## OSCAL Resources

- [OSCAL Official Website](https://pages.nist.gov/OSCAL/)
- [OSCAL GitHub Repository](https://github.com/usnistgov/OSCAL)
- [NIST SP 800-53](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)
- [OSCAL Schema Documentation](https://pages.nist.gov/OSCAL/documentation/)

## Contributing

Contributions are welcome! Areas for enhancement:

- Additional validation and constraint checking
- OSCAL schema validation
- XML serialization support
- Enhanced search and filtering capabilities
- Performance optimizations
- More comprehensive examples
- Database backends for persistence

## License

MIT License - See LICENSE file

## Authors

UIM Solutions Team

## Version

1.0.0 - 2026
