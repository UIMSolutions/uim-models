module uim-models.oscal.examples.main;

/**
 * Basic example of using the OSCAL library
 */
import uim.oscal;
import std.stdio;
import std.datetime;

void main() {
    writeln("OSCAL Library Example");
    writeln("====================\n");
    
    // Create a simple catalog
    auto catalog = createSampleCatalog();
    
    writeln("Catalog: ", catalog.metadata.title);
    writeln("OSCAL Version: ", catalog.metadata.oscalVersion);
    writeln("Number of control families: ", catalog.groups.length);
    
    // Use catalog manager





































































import std.algorithm;import uim.oscal.catalog;import uim.oscal.models;}    );        [acGroup]        metadata,        "a1234567-b890-c123-d456-e7890f123456",    return Catalog(        );        []        [acControl1, acControl2],        "AC",        "Access Control",        "AC",    auto acGroup = ControlGroup(        );        []        [],        [],        [],        "AC",        "Account Management",        "AC-2",    auto acControl2 = Control(        );        []        [],        [],        [],        "AC",        "Access Control Policy and Procedures",        "AC-1",    auto acControl1 = Control(        );        "1.0.0"        Clock.currTime(),        ["NIST"],        "NIST SP 800-53 Security Control Catalog",    auto metadata = OSCALMetadata(Catalog createSampleCatalog() {}    writeln(json[0 .. (json.length > 200 ? 200 : json.length)], "...");    writeln("\n\nSerialized catalog (first 200 chars):");    auto json = catalog.serializeToJson();    // Serialize to JSON        }        }            writeln("Title: ", firstControl.title);            writeln("\nFirst control: ", firstControl.id);            auto firstControl = firstFamily.controls[0];        if (!firstFamily.controls.empty) {                writeln("Controls in family: ", firstFamily.controls.length);        writeln("\nFirst control family: ", firstFamily.title);        auto firstFamily = catalog.groups[0];    if (!catalog.groups.empty) {    // Get controls from first family        writeln("\nTotal controls: ", allControls.length);        auto manager = new CatalogManager(catalog);
    auto allControls = manager.getAllControls();