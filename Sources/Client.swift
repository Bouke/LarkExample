// This file was generated by Lark. https://github.com/Bouke/Lark

import Alamofire
import Foundation
import Lark

//
// MARK: - SOAP Structures
//
typealias Secret = SecretType

class FaultType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

typealias Fault = FaultType

class PartOfDayArrayType: XMLDeserializable {
    var partOfDay: [PartOfDay?]
    init(partOfDay: [PartOfDay?]) {
        self.partOfDay = partOfDay
    }
    required init(deserialize element: XMLElement) throws {
        self.partOfDay = try element.elements(forLocalName: "PartOfDay", uri: "spyne.examples.hello").map { node in
            if node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                return try PartOfDay(deserialize: node)
            } else {
                return nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        for item in partOfDay {
            let itemNode = element.createChildElement(localName: "PartOfDay", uri: "spyne.examples.hello")
            if let item = item {
                try item.serialize(itemNode)
            } else {
                itemNode.addAttribute(XMLNode.attribute(prefix: "xsi", localName: "nil", uri: NS_XSI, stringValue: "true"))
            }
        }
    }
}

typealias PartOfDayArray = PartOfDayArrayType

class GreetResponseType: XMLDeserializable {
    var greetResult: String?
    init(greetResult: String? = nil) {
        self.greetResult = greetResult
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "greetResult", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.greetResult = try String(deserialize: node)
            } else {
                self.greetResult = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let greetResult = greetResult {
            let greetResultNode = element.createChildElement(localName: "greetResult", uri: "spyne.examples.hello")
            try greetResult.serialize(greetResultNode)
        }
    }
}

typealias GreetResponse = GreetResponseType

class SayMaybeNothingType: XMLDeserializable {
    var name: String?
    init(name: String? = nil) {
        self.name = name
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "name", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.name = try String(deserialize: node)
            } else {
                self.name = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let name = name {
            let nameNode = element.createChildElement(localName: "name", uri: "spyne.examples.hello")
            try name.serialize(nameNode)
        }
    }
}

typealias SayMaybeNothing = SayMaybeNothingType

class SayMaybeNothingResponseType: XMLDeserializable {
    var sayMaybeNothingResult: String?
    init(sayMaybeNothingResult: String? = nil) {
        self.sayMaybeNothingResult = sayMaybeNothingResult
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "say_maybe_nothingResult", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.sayMaybeNothingResult = try String(deserialize: node)
            } else {
                self.sayMaybeNothingResult = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let sayMaybeNothingResult = sayMaybeNothingResult {
            let sayMaybeNothingResultNode = element.createChildElement(localName: "say_maybe_nothingResult", uri: "spyne.examples.hello")
            try sayMaybeNothingResult.serialize(sayMaybeNothingResultNode)
        }
    }
}

typealias SayMaybeNothingResponse = SayMaybeNothingResponseType

class SecretResponseType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

typealias SecretResponse = SecretResponseType

class SayNothingResponseType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

typealias SayNothingResponse = SayNothingResponseType

class SayHelloResponseType: XMLDeserializable {
    var sayHelloResult: StringArrayType?
    init(sayHelloResult: StringArrayType? = nil) {
        self.sayHelloResult = sayHelloResult
    }
    required init(deserialize element: XMLElement) throws {
        do {
            guard let node = element.elements(forLocalName: "say_helloResult", uri: "spyne.examples.hello").first else {
                throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_helloResult"))
            }
            if node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.sayHelloResult = try StringArrayType(deserialize: node)
            } else {
                self.sayHelloResult = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        let sayHelloResultNode = element.createChildElement(localName: "say_helloResult", uri: "spyne.examples.hello")
        if let sayHelloResult = sayHelloResult {
            try sayHelloResult.serialize(sayHelloResultNode)
        } else {
            sayHelloResultNode.addAttribute(XMLNode.attribute(prefix: "xsi", localName: "nil", uri: NS_XSI, stringValue: "true"))
        }
    }
}

typealias SayHelloResponse = SayHelloResponseType

class GreetType: XMLDeserializable {
    var partOfDay: PartOfDay?
    init(partOfDay: PartOfDay? = nil) {
        self.partOfDay = partOfDay
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "part_of_day", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.partOfDay = try PartOfDay(deserialize: node)
            } else {
                self.partOfDay = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let partOfDay = partOfDay {
            let partOfDayNode = element.createChildElement(localName: "part_of_day", uri: "spyne.examples.hello")
            try partOfDay.serialize(partOfDayNode)
        }
    }
}

typealias Greet = GreetType

class SayNothingType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

typealias SayNothing = SayNothingType

enum PartOfDay: String, XMLSerializable, XMLDeserializable, StringSerializable, StringDeserializable {
    case afternoon = "afternoon"
    case evening = "evening"
    case morning = "morning"
    case night = "night"
    init(deserialize element: XMLElement) throws {
        self.init(rawValue: element.stringValue!)!
    }
    func serialize(_ element: XMLElement) throws {
        element.stringValue = self.rawValue
    }
    init(string: String) throws {
        self.init(rawValue: string)!
    }
    func serialize() throws -> String {
        return self.rawValue
    }
}

class StringArrayType: XMLDeserializable {
    var string: [String?]
    init(string: [String?]) {
        self.string = string
    }
    required init(deserialize element: XMLElement) throws {
        self.string = try element.elements(forLocalName: "string", uri: "spyne.examples.hello").map { node in
            if node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                return try String(deserialize: node)
            } else {
                return nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        for item in string {
            let itemNode = element.createChildElement(localName: "string", uri: "spyne.examples.hello")
            if let item = item {
                try item.serialize(itemNode)
            } else {
                itemNode.addAttribute(XMLNode.attribute(prefix: "xsi", localName: "nil", uri: NS_XSI, stringValue: "true"))
            }
        }
    }
}

typealias StringArray = StringArrayType

class SayMaybeSomethingResponseType: XMLDeserializable {
    var sayMaybeSomethingResult: String?
    init(sayMaybeSomethingResult: String? = nil) {
        self.sayMaybeSomethingResult = sayMaybeSomethingResult
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "say_maybe_somethingResult", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.sayMaybeSomethingResult = try String(deserialize: node)
            } else {
                self.sayMaybeSomethingResult = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let sayMaybeSomethingResult = sayMaybeSomethingResult {
            let sayMaybeSomethingResultNode = element.createChildElement(localName: "say_maybe_somethingResult", uri: "spyne.examples.hello")
            try sayMaybeSomethingResult.serialize(sayMaybeSomethingResultNode)
        }
    }
}

typealias SayMaybeSomethingResponse = SayMaybeSomethingResponseType

class SayMaybeSomethingType: XMLDeserializable {
    var name: String?
    init(name: String? = nil) {
        self.name = name
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "name", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.name = try String(deserialize: node)
            } else {
                self.name = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let name = name {
            let nameNode = element.createChildElement(localName: "name", uri: "spyne.examples.hello")
            try name.serialize(nameNode)
        }
    }
}

typealias SayMaybeSomething = SayMaybeSomethingType

class GreetsResponseType: XMLDeserializable {
    var greetsResult: StringArrayType?
    init(greetsResult: StringArrayType? = nil) {
        self.greetsResult = greetsResult
    }
    required init(deserialize element: XMLElement) throws {
        do {
            guard let node = element.elements(forLocalName: "greetsResult", uri: "spyne.examples.hello").first else {
                throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "greetsResult"))
            }
            if node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.greetsResult = try StringArrayType(deserialize: node)
            } else {
                self.greetsResult = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        let greetsResultNode = element.createChildElement(localName: "greetsResult", uri: "spyne.examples.hello")
        if let greetsResult = greetsResult {
            try greetsResult.serialize(greetsResultNode)
        } else {
            greetsResultNode.addAttribute(XMLNode.attribute(prefix: "xsi", localName: "nil", uri: NS_XSI, stringValue: "true"))
        }
    }
}

typealias GreetsResponse = GreetsResponseType

class SayHelloType: XMLDeserializable {
    var name: String?
    var times: Int?
    init(name: String? = nil, times: Int? = nil) {
        self.name = name
        self.times = times
    }
    required init(deserialize element: XMLElement) throws {
        do {
            if let node = element.elements(forLocalName: "name", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.name = try String(deserialize: node)
            } else {
                self.name = nil
            }
        }
        do {
            if let node = element.elements(forLocalName: "times", uri: "spyne.examples.hello").first,
                    node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.times = try Int(deserialize: node)
            } else {
                self.times = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        if let name = name {
            let nameNode = element.createChildElement(localName: "name", uri: "spyne.examples.hello")
            try name.serialize(nameNode)
        }
        if let times = times {
            let timesNode = element.createChildElement(localName: "times", uri: "spyne.examples.hello")
            try times.serialize(timesNode)
        }
    }
}

typealias SayHello = SayHelloType

class GreetsType: XMLDeserializable {
    var partOfDays: PartOfDayArrayType?
    init(partOfDays: PartOfDayArrayType? = nil) {
        self.partOfDays = partOfDays
    }
    required init(deserialize element: XMLElement) throws {
        do {
            guard let node = element.elements(forLocalName: "part_of_days", uri: "spyne.examples.hello").first else {
                throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "part_of_days"))
            }
            if node.attribute(forLocalName: "nil", uri: NS_XSI)?.stringValue != "true" {
                self.partOfDays = try PartOfDayArrayType(deserialize: node)
            } else {
                self.partOfDays = nil
            }
        }
    }
    func serialize(_ element: XMLElement) throws {
        let partOfDaysNode = element.createChildElement(localName: "part_of_days", uri: "spyne.examples.hello")
        if let partOfDays = partOfDays {
            try partOfDays.serialize(partOfDaysNode)
        } else {
            partOfDaysNode.addAttribute(XMLNode.attribute(prefix: "xsi", localName: "nil", uri: NS_XSI, stringValue: "true"))
        }
    }
}

typealias Greets = GreetsType

class FaultResponseType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

typealias FaultResponse = FaultResponseType

class SecretType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

//
// MARK: - SOAP Client
//
class HelloWorldServiceClient: Lark.Client {
    static let defaultEndpoint = URL(string: "http://localhost:8000/")!
    override init(endpoint: URL = HelloWorldServiceClient.defaultEndpoint, sessionManager: SessionManager = SessionManager()) {
        super.init(endpoint: endpoint, sessionManager: sessionManager)
    }
    /// Call sayHello synchronously
    func sayHello(name: String? = nil, times: Int? = nil) throws -> StringArrayType? {
        let response = try call(
            action: URL(string: "say_hello")!,
            serialize: { envelope in
                let parameter = SayHelloType(name: name, times: times)
                let node = XMLElement(prefix: "ns0", localName: "say_hello", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> StringArrayType? in
                guard let node = envelope.body.elements(forLocalName: "say_helloResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_helloResponse"))
                }
                let result = try SayHelloResponseType(deserialize: node)
                return result.sayHelloResult
            })
        return try response.result.resolve()
    }
    /// Call sayHello asynchronously
    @discardableResult func sayHello(name: String? = nil, times: Int? = nil, completionHandler: @escaping (Result<StringArrayType?>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "say_hello")!,
            serialize: { envelope in
                let parameter = SayHelloType(name: name, times: times)
                let node = XMLElement(prefix: "ns0", localName: "say_hello", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> StringArrayType? in
                guard let node = envelope.body.elements(forLocalName: "say_helloResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_helloResponse"))
                }
                let result = try SayHelloResponseType(deserialize: node)
                return result.sayHelloResult
            },
            completionHandler: completionHandler)
    }
    /// Call sayMaybeNothing synchronously
    func sayMaybeNothing(name: String? = nil) throws -> String? {
        let response = try call(
            action: URL(string: "say_maybe_nothing")!,
            serialize: { envelope in
                let parameter = SayMaybeNothingType(name: name)
                let node = XMLElement(prefix: "ns0", localName: "say_maybe_nothing", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> String? in
                guard let node = envelope.body.elements(forLocalName: "say_maybe_nothingResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_maybe_nothingResponse"))
                }
                let result = try SayMaybeNothingResponseType(deserialize: node)
                return result.sayMaybeNothingResult
            })
        return try response.result.resolve()
    }
    /// Call sayMaybeNothing asynchronously
    @discardableResult func sayMaybeNothing(name: String? = nil, completionHandler: @escaping (Result<String?>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "say_maybe_nothing")!,
            serialize: { envelope in
                let parameter = SayMaybeNothingType(name: name)
                let node = XMLElement(prefix: "ns0", localName: "say_maybe_nothing", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> String? in
                guard let node = envelope.body.elements(forLocalName: "say_maybe_nothingResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_maybe_nothingResponse"))
                }
                let result = try SayMaybeNothingResponseType(deserialize: node)
                return result.sayMaybeNothingResult
            },
            completionHandler: completionHandler)
    }
    /// Call fault synchronously
    func fault() throws -> FaultResponseType {
        let response = try call(
            action: URL(string: "fault")!,
            serialize: { envelope in
                let parameter = FaultType()
                let node = XMLElement(prefix: "ns0", localName: "fault", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> FaultResponseType in
                guard let node = envelope.body.elements(forLocalName: "faultResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "faultResponse"))
                }
                let result = try FaultResponseType(deserialize: node)
                return result
            })
        return try response.result.resolve()
    }
    /// Call fault asynchronously
    @discardableResult func fault(completionHandler: @escaping (Result<FaultResponseType>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "fault")!,
            serialize: { envelope in
                let parameter = FaultType()
                let node = XMLElement(prefix: "ns0", localName: "fault", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> FaultResponseType in
                guard let node = envelope.body.elements(forLocalName: "faultResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "faultResponse"))
                }
                let result = try FaultResponseType(deserialize: node)
                return result
            },
            completionHandler: completionHandler)
    }
    /// Call sayMaybeSomething synchronously
    func sayMaybeSomething(name: String? = nil) throws -> String? {
        let response = try call(
            action: URL(string: "say_maybe_something")!,
            serialize: { envelope in
                let parameter = SayMaybeSomethingType(name: name)
                let node = XMLElement(prefix: "ns0", localName: "say_maybe_something", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> String? in
                guard let node = envelope.body.elements(forLocalName: "say_maybe_somethingResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_maybe_somethingResponse"))
                }
                let result = try SayMaybeSomethingResponseType(deserialize: node)
                return result.sayMaybeSomethingResult
            })
        return try response.result.resolve()
    }
    /// Call sayMaybeSomething asynchronously
    @discardableResult func sayMaybeSomething(name: String? = nil, completionHandler: @escaping (Result<String?>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "say_maybe_something")!,
            serialize: { envelope in
                let parameter = SayMaybeSomethingType(name: name)
                let node = XMLElement(prefix: "ns0", localName: "say_maybe_something", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> String? in
                guard let node = envelope.body.elements(forLocalName: "say_maybe_somethingResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_maybe_somethingResponse"))
                }
                let result = try SayMaybeSomethingResponseType(deserialize: node)
                return result.sayMaybeSomethingResult
            },
            completionHandler: completionHandler)
    }
    /// Call greet synchronously
    func greet(partOfDay: PartOfDay? = nil) throws -> String? {
        let response = try call(
            action: URL(string: "greet")!,
            serialize: { envelope in
                let parameter = GreetType(partOfDay: partOfDay)
                let node = XMLElement(prefix: "ns0", localName: "greet", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> String? in
                guard let node = envelope.body.elements(forLocalName: "greetResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "greetResponse"))
                }
                let result = try GreetResponseType(deserialize: node)
                return result.greetResult
            })
        return try response.result.resolve()
    }
    /// Call greet asynchronously
    @discardableResult func greet(partOfDay: PartOfDay? = nil, completionHandler: @escaping (Result<String?>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "greet")!,
            serialize: { envelope in
                let parameter = GreetType(partOfDay: partOfDay)
                let node = XMLElement(prefix: "ns0", localName: "greet", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> String? in
                guard let node = envelope.body.elements(forLocalName: "greetResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "greetResponse"))
                }
                let result = try GreetResponseType(deserialize: node)
                return result.greetResult
            },
            completionHandler: completionHandler)
    }
    /// Call sayNothing synchronously
    func sayNothing() throws -> SayNothingResponseType {
        let response = try call(
            action: URL(string: "say_nothing")!,
            serialize: { envelope in
                let parameter = SayNothingType()
                let node = XMLElement(prefix: "ns0", localName: "say_nothing", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> SayNothingResponseType in
                guard let node = envelope.body.elements(forLocalName: "say_nothingResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_nothingResponse"))
                }
                let result = try SayNothingResponseType(deserialize: node)
                return result
            })
        return try response.result.resolve()
    }
    /// Call sayNothing asynchronously
    @discardableResult func sayNothing(completionHandler: @escaping (Result<SayNothingResponseType>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "say_nothing")!,
            serialize: { envelope in
                let parameter = SayNothingType()
                let node = XMLElement(prefix: "ns0", localName: "say_nothing", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> SayNothingResponseType in
                guard let node = envelope.body.elements(forLocalName: "say_nothingResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "say_nothingResponse"))
                }
                let result = try SayNothingResponseType(deserialize: node)
                return result
            },
            completionHandler: completionHandler)
    }
    /// Call secret synchronously
    func secret() throws -> SecretResponseType {
        let response = try call(
            action: URL(string: "secret")!,
            serialize: { envelope in
                let parameter = SecretType()
                let node = XMLElement(prefix: "ns0", localName: "secret", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> SecretResponseType in
                guard let node = envelope.body.elements(forLocalName: "secretResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "secretResponse"))
                }
                let result = try SecretResponseType(deserialize: node)
                return result
            })
        return try response.result.resolve()
    }
    /// Call secret asynchronously
    @discardableResult func secret(completionHandler: @escaping (Result<SecretResponseType>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "secret")!,
            serialize: { envelope in
                let parameter = SecretType()
                let node = XMLElement(prefix: "ns0", localName: "secret", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> SecretResponseType in
                guard let node = envelope.body.elements(forLocalName: "secretResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "secretResponse"))
                }
                let result = try SecretResponseType(deserialize: node)
                return result
            },
            completionHandler: completionHandler)
    }
    /// Call greets synchronously
    func greets(partOfDays: PartOfDayArrayType? = nil) throws -> StringArrayType? {
        let response = try call(
            action: URL(string: "greets")!,
            serialize: { envelope in
                let parameter = GreetsType(partOfDays: partOfDays)
                let node = XMLElement(prefix: "ns0", localName: "greets", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> StringArrayType? in
                guard let node = envelope.body.elements(forLocalName: "greetsResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "greetsResponse"))
                }
                let result = try GreetsResponseType(deserialize: node)
                return result.greetsResult
            })
        return try response.result.resolve()
    }
    /// Call greets asynchronously
    @discardableResult func greets(partOfDays: PartOfDayArrayType? = nil, completionHandler: @escaping (Result<StringArrayType?>) -> Void) -> DataRequest {
        return call(
            action: URL(string: "greets")!,
            serialize: { envelope in
                let parameter = GreetsType(partOfDays: partOfDays)
                let node = XMLElement(prefix: "ns0", localName: "greets", uri: "spyne.examples.hello")
                node.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
                try parameter.serialize(node)
                envelope.body.addChild(node)
                return envelope
            },
            deserialize: { envelope -> StringArrayType? in
                guard let node = envelope.body.elements(forLocalName: "greetsResponse", uri: "spyne.examples.hello").first else {
                    throw XMLDeserializationError.noElementWithName(QualifiedName(uri: "spyne.examples.hello", localName: "greetsResponse"))
                }
                let result = try GreetsResponseType(deserialize: node)
                return result.greetsResult
            },
            completionHandler: completionHandler)
    }
}

