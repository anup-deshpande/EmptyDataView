import XCTest
@testable import EmptyDataView

final class EmptyDataViewTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(EmptyDataView().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
