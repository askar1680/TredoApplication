import XCTest
@testable import Feeds

final class FeedsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Feeds().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
