// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public enum GreetingLanguage {
    case indonesia
    case english
}

public class SwiftGreeting {

    private let language: GreetingLanguage
    private let firstName: String?

    public init(
        language: GreetingLanguage = .english,
        firstName: String? = nil
    ) {
        self.language = language
        self.firstName = firstName
    }

    public var greetingTitle: String {
        let hour = Calendar.current.component(.hour, from: Date())
        let greeting: String

        switch language {
        case .english:
            switch hour {
            case 0...11: greeting = "Good morning"
            case 12...17: greeting = "Good afternoon"
            default: greeting = "Good evening"
            }

        case .indonesia:
            switch hour {
            case 0...11: greeting = "Selamat pagi"
            case 12...17: greeting = "Selamat siang"
            default: greeting = "Selamat malam"
            }
        }

        if let name = firstName, !name.isEmpty {
            return "\(greeting), \(name)"
        }

        return greeting
    }
}
