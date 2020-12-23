import XCTest
@testable import Bitcoin

final class BitcoinTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Bitcoin().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
