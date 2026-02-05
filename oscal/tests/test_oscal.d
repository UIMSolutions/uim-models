module uim-models.oscal.tests.test_oscal;

/**
 * OSCAL Unit Tests
 */
import uim.oscal;
import std.stdio;
import std.datetime;
import std.uuid;

void main() {
    writeln("Running OSCAL Library Tests...\n");
    
    testCatalogCreation();
    testCatalogSerialization();
    testControlManagement();
    testSSPCreation();
    testAssessmentResults();
    
    writeln("\nAll tests completed!");
}

void testCatalogCreation() {























































































































































import std.datetime : dur;import std.uuid : randomUUID;}    writeln("✓ Assessment results test passed\n");        assert(assessment.getDocumentType() == "assessment-results");        );        []        assessmentMeta,        metadata,        randomUUID().toString(),    auto assessment = AssessmentResults(        );        "Security Assessment"        Clock.currTime() + dur!"days"(30),        Clock.currTime(),    auto assessmentMeta = AssessmentMetadata(        );        "john@example.com"        "John Assessor",        randomUUID().toString(),    auto assessor = Assessor(        );        "1.0.0"        Clock.currTime(),        ["Assessor"],        "Test Assessment",    auto metadata = OSCALMetadata(        writeln("Test: Assessment Results");void testAssessmentResults() {}    writeln("✓ SSP creation test passed\n");        assert(ssp.getDocumentType() == "system-security-plan");    assert(ssp.systemInformation.systemName == "Test System");        );        sysInfo        metadata,        randomUUID().toString(),    auto ssp = SystemSecurityPlan(        );        SecurityLevel.moderate        "information-system",        "A test system",        "TS",        "Test System",        "test-system",    auto sysInfo = SystemInformation(        );        "1.0.0"        Clock.currTime(),        ["Security Team"],        "Test SSP",    auto metadata = OSCALMetadata(        writeln("Test: System Security Plan Creation");void testSSPCreation() {}    writeln("✓ Control management test passed\n");        assert(ac1.title == "Access Control Policy");    assert(ac1 !is null);    auto ac1 = manager.findControl("AC-1");        assert(allControls.length == 2);        auto allControls = manager.getAllControls();    auto manager = new CatalogManager(catalog);        );        [group]        metadata,        randomUUID().toString(),    auto catalog = Catalog(        );        "1.0.0"        Clock.currTime(),        ["Author"],        "Control Test",    auto metadata = OSCALMetadata(        );        []        [control1, control2],        "AC",        "Access Control",        "AC",    auto group = ControlGroup(        auto control2 = Control("AC-2", "Account Management", "AC");    auto control1 = Control("AC-1", "Access Control Policy", "AC");        writeln("Test: Control Management");void testControlManagement() {}    }        writeln("✗ Serialization failed: ", e.msg, "\n");    } catch (Exception e) {        writeln("✓ Catalog serialization test passed\n");        assert(json.length > 0);        auto json = catalog.serializeToJson();    try {        );        []        metadata,        randomUUID().toString(),    auto catalog = Catalog(        );        "1.0.0"        Clock.currTime(),        ["Author"],        "Serialization Test",    auto metadata = OSCALMetadata(        writeln("Test: Catalog Serialization");void testCatalogSerialization() {}    writeln("✓ Catalog creation test passed\n");        assert(catalog.getDocumentType() == "catalog");    assert(catalog.metadata.title == "Test Catalog");        );        []        metadata,        randomUUID().toString(),    auto catalog = Catalog(        );        "1.0.0"        Clock.currTime(),        ["Test Author"],        "Test Catalog",    auto metadata = OSCALMetadata(    writeln("Test: Catalog Creation");
    