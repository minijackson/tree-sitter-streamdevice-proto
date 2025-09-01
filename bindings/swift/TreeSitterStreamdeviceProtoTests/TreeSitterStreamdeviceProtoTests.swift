import XCTest
import SwiftTreeSitter
import TreeSitterStreamdeviceProto

final class TreeSitterStreamdeviceProtoTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_streamdevice_proto())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading StreamdeviceProto grammar")
    }
}
