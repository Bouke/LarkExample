// This file was generated by Lark. https://github.com/Bouke/Lark

import Foundation
import LarkRuntime

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
    let partOfDay: [PartOfDay]
    init(partOfDay: [PartOfDay]) {
        self.partOfDay = partOfDay
    }
    required init(deserialize element: XMLElement) throws {
        self.partOfDay = try element.elements(forLocalName: "PartOfDay", uri: "spyne.examples.hello").map(PartOfDay.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        for item in partOfDay {
            let itemNode = try element.createElement(localName: "PartOfDay", uri: "spyne.examples.hello")
            element.addChild(itemNode)
            try item.serialize(itemNode)
        }
    }
}



typealias PartOfDayArray = PartOfDayArrayType

class GreetResponseType: XMLDeserializable {
    let greetResult: String?
    init(greetResult: String?) {
        self.greetResult = greetResult
    }
    required init(deserialize element: XMLElement) throws {
        self.greetResult = try element.elements(forLocalName: "greetResult", uri: "spyne.examples.hello").first.map(String.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let greetResult = greetResult {
            let greetResultNode = try element.createElement(localName: "greetResult", uri: "spyne.examples.hello")
            element.addChild(greetResultNode)
            try greetResult.serialize(greetResultNode)
        }
    }
}

typealias GreetResponse = GreetResponseType

class SayMaybeNothingType: XMLDeserializable {
    let name: String?
    init(name: String?) {
        self.name = name
    }
    required init(deserialize element: XMLElement) throws {
        self.name = try element.elements(forLocalName: "name", uri: "spyne.examples.hello").first.map(String.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let name = name {
            let nameNode = try element.createElement(localName: "name", uri: "spyne.examples.hello")
            element.addChild(nameNode)
            try name.serialize(nameNode)
        }
    }
}

typealias SayMaybeNothing = SayMaybeNothingType

class SayMaybeNothingResponseType: XMLDeserializable {
    let sayMaybeNothingResult: String?
    init(sayMaybeNothingResult: String?) {
        self.sayMaybeNothingResult = sayMaybeNothingResult
    }
    required init(deserialize element: XMLElement) throws {
        self.sayMaybeNothingResult = try element.elements(forLocalName: "say_maybe_nothingResult", uri: "spyne.examples.hello").first.map(String.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let sayMaybeNothingResult = sayMaybeNothingResult {
            let sayMaybeNothingResultNode = try element.createElement(localName: "say_maybe_nothingResult", uri: "spyne.examples.hello")
            element.addChild(sayMaybeNothingResultNode)
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
    let sayHelloResult: StringArrayType
    init(sayHelloResult: StringArrayType) {
        self.sayHelloResult = sayHelloResult
    }
    required init(deserialize element: XMLElement) throws {
        self.sayHelloResult = try StringArrayType(deserialize: element.elements(forLocalName: "say_helloResult", uri: "spyne.examples.hello").first!)
    }
    func serialize(_ element: XMLElement) throws {
        let sayHelloResultNode = try element.createElement(localName: "say_helloResult", uri: "spyne.examples.hello")
        element.addChild(sayHelloResultNode)
        try sayHelloResult.serialize(sayHelloResultNode)
    }
}

typealias SayHelloResponse = SayHelloResponseType

class GreetType: XMLDeserializable {
    let partOfDay: PartOfDay?
    init(partOfDay: PartOfDay?) {
        self.partOfDay = partOfDay
    }
    required init(deserialize element: XMLElement) throws {
        self.partOfDay = try element.elements(forLocalName: "part_of_day", uri: "spyne.examples.hello").first.map(PartOfDay.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let partOfDay = partOfDay {
            let partOfDayNode = try element.createElement(localName: "part_of_day", uri: "spyne.examples.hello")
            element.addChild(partOfDayNode)
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

enum PartOfDay: String, XMLSerializable, XMLDeserializable {
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
}

class StringArrayType: XMLDeserializable {
    let string: [String]
    init(string: [String]) {
        self.string = string
    }
    required init(deserialize element: XMLElement) throws {
        self.string = try element.elements(forLocalName: "string", uri: "spyne.examples.hello").map(String.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        for item in string {
            let itemNode = try element.createElement(localName: "string", uri: "spyne.examples.hello")
            element.addChild(itemNode)
            try item.serialize(itemNode)
        }
    }
}

typealias StringArray = StringArrayType

class SayMaybeSomethingResponseType: XMLDeserializable {
    let sayMaybeSomethingResult: String?
    init(sayMaybeSomethingResult: String?) {
        self.sayMaybeSomethingResult = sayMaybeSomethingResult
    }
    required init(deserialize element: XMLElement) throws {
        self.sayMaybeSomethingResult = try element.elements(forLocalName: "say_maybe_somethingResult", uri: "spyne.examples.hello").first.map(String.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let sayMaybeSomethingResult = sayMaybeSomethingResult {
            let sayMaybeSomethingResultNode = try element.createElement(localName: "say_maybe_somethingResult", uri: "spyne.examples.hello")
            element.addChild(sayMaybeSomethingResultNode)
            try sayMaybeSomethingResult.serialize(sayMaybeSomethingResultNode)
        }
    }
}

typealias SayMaybeSomethingResponse = SayMaybeSomethingResponseType

class SayMaybeSomethingType: XMLDeserializable {
    let name: String?
    init(name: String?) {
        self.name = name
    }
    required init(deserialize element: XMLElement) throws {
        self.name = try element.elements(forLocalName: "name", uri: "spyne.examples.hello").first.map(String.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let name = name {
            let nameNode = try element.createElement(localName: "name", uri: "spyne.examples.hello")
            element.addChild(nameNode)
            try name.serialize(nameNode)
        }
    }
}

typealias SayMaybeSomething = SayMaybeSomethingType



class GreetsResponseType: XMLDeserializable {
    let greetsResult: StringArrayType
    init(greetsResult: StringArrayType) {
        self.greetsResult = greetsResult
    }
    required init(deserialize element: XMLElement) throws {
        self.greetsResult = try StringArrayType(deserialize: element.elements(forLocalName: "greetsResult", uri: "spyne.examples.hello").first!)
    }
    func serialize(_ element: XMLElement) throws {
        let greetsResultNode = try element.createElement(localName: "greetsResult", uri: "spyne.examples.hello")
        element.addChild(greetsResultNode)
        try greetsResult.serialize(greetsResultNode)
    }
}

typealias GreetsResponse = GreetsResponseType





class SayHelloType: XMLDeserializable {
    let name: String?
    let times: Int?
    init(name: String?, times: Int?) {
        self.name = name
        self.times = times
    }
    required init(deserialize element: XMLElement) throws {
        self.name = try element.elements(forLocalName: "name", uri: "spyne.examples.hello").first.map(String.init(deserialize:))
        self.times = try element.elements(forLocalName: "times", uri: "spyne.examples.hello").first.map(Int.init(deserialize:))
    }
    func serialize(_ element: XMLElement) throws {
        if let name = name {
            let nameNode = try element.createElement(localName: "name", uri: "spyne.examples.hello")
            element.addChild(nameNode)
            try name.serialize(nameNode)
        }
        if let times = times {
            let timesNode = try element.createElement(localName: "times", uri: "spyne.examples.hello")
            element.addChild(timesNode)
            try times.serialize(timesNode)
        }
    }
}

typealias SayHello = SayHelloType











class GreetsType: XMLDeserializable {
    let partOfDays: PartOfDayArrayType
    init(partOfDays: PartOfDayArrayType) {
        self.partOfDays = partOfDays
    }
    required init(deserialize element: XMLElement) throws {
        self.partOfDays = try PartOfDayArrayType(deserialize: element.elements(forLocalName: "part_of_days", uri: "spyne.examples.hello").first!)
    }
    func serialize(_ element: XMLElement) throws {
        let partOfDaysNode = try element.createElement(localName: "part_of_days", uri: "spyne.examples.hello")
        element.addChild(partOfDaysNode)
        try partOfDays.serialize(partOfDaysNode)
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
class HelloWorldServiceClient: Client {
    override init(channel: Channel) {
        super.init(channel: channel)
    }
    convenience init() {
        self.init(endpoint: URL(string: "http://localhost:8000/")!)
    }
    func sayHello(_ parameter: SayHello) throws -> SayHelloResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "say_hello", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "say_hello")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "say_helloResponse", uri: "spyne.examples.hello").first!
        return try SayHelloResponse(deserialize: outputNode)
    }
    func sayMaybeNothing(_ parameter: SayMaybeNothing) throws -> SayMaybeNothingResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "say_maybe_nothing", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "say_maybe_nothing")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "say_maybe_nothingResponse", uri: "spyne.examples.hello").first!
        return try SayMaybeNothingResponse(deserialize: outputNode)
    }
    func fault(_ parameter: Fault) throws -> FaultResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "fault", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "fault")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "faultResponse", uri: "spyne.examples.hello").first!
        return try FaultResponse(deserialize: outputNode)
    }
    func sayMaybeSomething(_ parameter: SayMaybeSomething) throws -> SayMaybeSomethingResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "say_maybe_something", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "say_maybe_something")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "say_maybe_somethingResponse", uri: "spyne.examples.hello").first!
        return try SayMaybeSomethingResponse(deserialize: outputNode)
    }
    func greet(_ parameter: Greet) throws -> GreetResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "greet", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "greet")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "greetResponse", uri: "spyne.examples.hello").first!
        return try GreetResponse(deserialize: outputNode)
    }
    func sayNothing(_ parameter: SayNothing) throws -> SayNothingResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "say_nothing", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "say_nothing")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "say_nothingResponse", uri: "spyne.examples.hello").first!
        return try SayNothingResponse(deserialize: outputNode)
    }
    func secret(_ parameter: Secret) throws -> SecretResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "secret", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "secret")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "secretResponse", uri: "spyne.examples.hello").first!
        return try SecretResponse(deserialize: outputNode)
    }
    func greets(_ parameter: Greets) throws -> GreetsResponse {
        var parameters = [XMLElement]()
        let parameterNode = XMLElement(prefix: "ns0", localName: "greets", uri: "spyne.examples.hello")
        parameterNode.addNamespace(XMLNode.namespace(withName: "ns0", stringValue: "spyne.examples.hello") as! XMLNode)
        try parameter.serialize(parameterNode)
        parameters.append(parameterNode)
        let body = try send(action: URL(string: "greets")!, parameters: parameters)
        let outputNode = body.elements(forLocalName: "greetsResponse", uri: "spyne.examples.hello").first!
        return try GreetsResponse(deserialize: outputNode)
    }
}
