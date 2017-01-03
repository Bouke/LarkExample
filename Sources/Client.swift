// This file was generated by Lark. https://github.com/Bouke/Lark

import Foundation
import LarkRuntime

//
// MARK: - SOAP Structures
//
class Fault: FaultType {
    override init() {
        super.init()
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class SayNothingType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

class SayNothing: SayNothingType {
    override init() {
        super.init()
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class StringArray: StringArrayType {
    override init(string: [String]) {
        super.init(string: string)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class SayMaybeSomething: SayMaybeSomethingType {
    override init(name: String?) {
        super.init(name: name)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class GreetsResponse: GreetsResponseType {
    override init(greetsResult: StringArrayType) {
        super.init(greetsResult: greetsResult)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class SayMaybeSomethingResponse: SayMaybeSomethingResponseType {
    override init(sayMaybeSomethingResult: String?) {
        super.init(sayMaybeSomethingResult: sayMaybeSomethingResult)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class PartOfDayArray: PartOfDayArrayType {
    override init(partOfDay: [PartOfDay]) {
        super.init(partOfDay: partOfDay)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class GreetResponse: GreetResponseType {
    override init(greetResult: String?) {
        super.init(greetResult: greetResult)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class SayMaybeNothingResponse: SayMaybeNothingResponseType {
    override init(sayMaybeNothingResult: String?) {
        super.init(sayMaybeNothingResult: sayMaybeNothingResult)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class SayNothingResponseType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

class SayNothingResponse: SayNothingResponseType {
    override init() {
        super.init()
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class SayMaybeNothing: SayMaybeNothingType {
    override init(name: String?) {
        super.init(name: name)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class SayHelloResponse: SayHelloResponseType {
    override init(sayHelloResult: StringArrayType) {
        super.init(sayHelloResult: sayHelloResult)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class Greet: GreetType {
    override init(partOfDay: PartOfDay?) {
        super.init(partOfDay: partOfDay)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class SayHello: SayHelloType {
    override init(name: String?, times: Int?) {
        super.init(name: name, times: times)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

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

class Greets: GreetsType {
    override init(partOfDays: PartOfDayArrayType) {
        super.init(partOfDays: partOfDays)
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class FaultResponseType: XMLDeserializable {
    init() {
    }
    required init(deserialize element: XMLElement) throws {
    }
    func serialize(_ element: XMLElement) throws {
    }
}

class FaultResponse: FaultResponseType {
    override init() {
        super.init()
    }
    required init(deserialize element: XMLElement) throws {
        try super.init(deserialize: element)
    }
    override func serialize(_ element: XMLElement) throws {
        try super.serialize(element)
    }
}

class FaultType: XMLDeserializable {
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
