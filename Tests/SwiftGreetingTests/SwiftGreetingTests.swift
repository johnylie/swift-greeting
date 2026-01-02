import XCTest
@testable import SwiftGreeting

final class SwiftGreetingTests: XCTestCase {

    func testEnglishGreetingWithoutName() {
        let greeting = SwiftGreeting(language: .english)
        let title = greeting.greetingTitle
        XCTAssertTrue(
            title.hasPrefix("Good"),
            "English greeting should start with 'Good', got: \(title)"
        )
    }

    func testEnglishGreetingWithName() {
        let greeting = SwiftGreeting(language: .english, firstName: "Swift")
        let title = greeting.greetingTitle
        XCTAssertTrue(title.contains("Swift"), "Greeting should include the first name")
        XCTAssertTrue(title.hasPrefix("Good"), "English greeting should start with 'Good'")
    }

    func testIndonesianGreetingWithoutName() {
        let greeting = SwiftGreeting(language: .indonesia)
        let title = greeting.greetingTitle
        XCTAssertTrue(
            title.hasPrefix("Selamat"),
            "Indonesian greeting should start with 'Selamat', got: \(title)"
        )
    }

    func testIndonesianGreetingWithName() {
        let greeting = SwiftGreeting(language: .indonesia, firstName: "Swift")
        let title = greeting.greetingTitle
        XCTAssertTrue(title.contains("Swift"), "Greeting should include the first name")
        XCTAssertTrue(title.hasPrefix("Selamat"), "Indonesian greeting should start with 'Selamat'")
    }
}
