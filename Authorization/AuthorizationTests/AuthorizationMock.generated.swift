// Generated using Sourcery 1.8.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// Generated with SwiftyMocky 4.2.0
// Required Sourcery: 1.8.0


import SwiftyMocky
import XCTest
import Core
import Authorization
import Foundation
import SwiftUI
import Combine


// MARK: - AuthInteractorProtocol

open class AuthInteractorProtocolMock: AuthInteractorProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    @discardableResult
	open func login(username: String, password: String) throws -> User {
        addInvocation(.m_login__username_usernamepassword_password(Parameter<String>.value(`username`), Parameter<String>.value(`password`)))
		let perform = methodPerformValue(.m_login__username_usernamepassword_password(Parameter<String>.value(`username`), Parameter<String>.value(`password`))) as? (String, String) -> Void
		perform?(`username`, `password`)
		var __value: User
		do {
		    __value = try methodReturnValue(.m_login__username_usernamepassword_password(Parameter<String>.value(`username`), Parameter<String>.value(`password`))).casted()
		} catch MockError.notStubed {
			onFatalFailure("Stub return value not specified for login(username: String, password: String). Use given")
			Failure("Stub return value not specified for login(username: String, password: String). Use given")
		} catch {
		    throw error
		}
		return __value
    }

    open func resetPassword(email: String) throws -> ResetPassword {
        addInvocation(.m_resetPassword__email_email(Parameter<String>.value(`email`)))
		let perform = methodPerformValue(.m_resetPassword__email_email(Parameter<String>.value(`email`))) as? (String) -> Void
		perform?(`email`)
		var __value: ResetPassword
		do {
		    __value = try methodReturnValue(.m_resetPassword__email_email(Parameter<String>.value(`email`))).casted()
		} catch MockError.notStubed {
			onFatalFailure("Stub return value not specified for resetPassword(email: String). Use given")
			Failure("Stub return value not specified for resetPassword(email: String). Use given")
		} catch {
		    throw error
		}
		return __value
    }

    open func getCookies(force: Bool) throws {
        addInvocation(.m_getCookies__force_force(Parameter<Bool>.value(`force`)))
		let perform = methodPerformValue(.m_getCookies__force_force(Parameter<Bool>.value(`force`))) as? (Bool) -> Void
		perform?(`force`)
		do {
		    _ = try methodReturnValue(.m_getCookies__force_force(Parameter<Bool>.value(`force`))).casted() as Void
		} catch MockError.notStubed {
			// do nothing
		} catch {
		    throw error
		}
    }

    open func getRegistrationFields() throws -> [PickerFields] {
        addInvocation(.m_getRegistrationFields)
		let perform = methodPerformValue(.m_getRegistrationFields) as? () -> Void
		perform?()
		var __value: [PickerFields]
		do {
		    __value = try methodReturnValue(.m_getRegistrationFields).casted()
		} catch MockError.notStubed {
			onFatalFailure("Stub return value not specified for getRegistrationFields(). Use given")
			Failure("Stub return value not specified for getRegistrationFields(). Use given")
		} catch {
		    throw error
		}
		return __value
    }

    open func registerUser(fields: [String: String]) throws -> User {
        addInvocation(.m_registerUser__fields_fields(Parameter<[String: String]>.value(`fields`)))
		let perform = methodPerformValue(.m_registerUser__fields_fields(Parameter<[String: String]>.value(`fields`))) as? ([String: String]) -> Void
		perform?(`fields`)
		var __value: User
		do {
		    __value = try methodReturnValue(.m_registerUser__fields_fields(Parameter<[String: String]>.value(`fields`))).casted()
		} catch MockError.notStubed {
			onFatalFailure("Stub return value not specified for registerUser(fields: [String: String]). Use given")
			Failure("Stub return value not specified for registerUser(fields: [String: String]). Use given")
		} catch {
		    throw error
		}
		return __value
    }

    open func validateRegistrationFields(fields: [String: String]) throws -> [String: String] {
        addInvocation(.m_validateRegistrationFields__fields_fields(Parameter<[String: String]>.value(`fields`)))
		let perform = methodPerformValue(.m_validateRegistrationFields__fields_fields(Parameter<[String: String]>.value(`fields`))) as? ([String: String]) -> Void
		perform?(`fields`)
		var __value: [String: String]
		do {
		    __value = try methodReturnValue(.m_validateRegistrationFields__fields_fields(Parameter<[String: String]>.value(`fields`))).casted()
		} catch MockError.notStubed {
			onFatalFailure("Stub return value not specified for validateRegistrationFields(fields: [String: String]). Use given")
			Failure("Stub return value not specified for validateRegistrationFields(fields: [String: String]). Use given")
		} catch {
		    throw error
		}
		return __value
    }


    fileprivate enum MethodType {
        case m_login__username_usernamepassword_password(Parameter<String>, Parameter<String>)
        case m_resetPassword__email_email(Parameter<String>)
        case m_getCookies__force_force(Parameter<Bool>)
        case m_getRegistrationFields
        case m_registerUser__fields_fields(Parameter<[String: String]>)
        case m_validateRegistrationFields__fields_fields(Parameter<[String: String]>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_login__username_usernamepassword_password(let lhsUsername, let lhsPassword), .m_login__username_usernamepassword_password(let rhsUsername, let rhsPassword)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsUsername, rhs: rhsUsername, with: matcher), lhsUsername, rhsUsername, "username"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsPassword, rhs: rhsPassword, with: matcher), lhsPassword, rhsPassword, "password"))
				return Matcher.ComparisonResult(results)

            case (.m_resetPassword__email_email(let lhsEmail), .m_resetPassword__email_email(let rhsEmail)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsEmail, rhs: rhsEmail, with: matcher), lhsEmail, rhsEmail, "email"))
				return Matcher.ComparisonResult(results)

            case (.m_getCookies__force_force(let lhsForce), .m_getCookies__force_force(let rhsForce)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsForce, rhs: rhsForce, with: matcher), lhsForce, rhsForce, "force"))
				return Matcher.ComparisonResult(results)

            case (.m_getRegistrationFields, .m_getRegistrationFields): return .match

            case (.m_registerUser__fields_fields(let lhsFields), .m_registerUser__fields_fields(let rhsFields)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFields, rhs: rhsFields, with: matcher), lhsFields, rhsFields, "fields"))
				return Matcher.ComparisonResult(results)

            case (.m_validateRegistrationFields__fields_fields(let lhsFields), .m_validateRegistrationFields__fields_fields(let rhsFields)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFields, rhs: rhsFields, with: matcher), lhsFields, rhsFields, "fields"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_login__username_usernamepassword_password(p0, p1): return p0.intValue + p1.intValue
            case let .m_resetPassword__email_email(p0): return p0.intValue
            case let .m_getCookies__force_force(p0): return p0.intValue
            case .m_getRegistrationFields: return 0
            case let .m_registerUser__fields_fields(p0): return p0.intValue
            case let .m_validateRegistrationFields__fields_fields(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_login__username_usernamepassword_password: return ".login(username:password:)"
            case .m_resetPassword__email_email: return ".resetPassword(email:)"
            case .m_getCookies__force_force: return ".getCookies(force:)"
            case .m_getRegistrationFields: return ".getRegistrationFields()"
            case .m_registerUser__fields_fields: return ".registerUser(fields:)"
            case .m_validateRegistrationFields__fields_fields: return ".validateRegistrationFields(fields:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        @discardableResult
		public static func login(username: Parameter<String>, password: Parameter<String>, willReturn: User...) -> MethodStub {
            return Given(method: .m_login__username_usernamepassword_password(`username`, `password`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func resetPassword(email: Parameter<String>, willReturn: ResetPassword...) -> MethodStub {
            return Given(method: .m_resetPassword__email_email(`email`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getRegistrationFields(willReturn: [PickerFields]...) -> MethodStub {
            return Given(method: .m_getRegistrationFields, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func registerUser(fields: Parameter<[String: String]>, willReturn: User...) -> MethodStub {
            return Given(method: .m_registerUser__fields_fields(`fields`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func validateRegistrationFields(fields: Parameter<[String: String]>, willReturn: [String: String]...) -> MethodStub {
            return Given(method: .m_validateRegistrationFields__fields_fields(`fields`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        @discardableResult
		public static func login(username: Parameter<String>, password: Parameter<String>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_login__username_usernamepassword_password(`username`, `password`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        @discardableResult
		public static func login(username: Parameter<String>, password: Parameter<String>, willProduce: (StubberThrows<User>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_login__username_usernamepassword_password(`username`, `password`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (User).self)
			willProduce(stubber)
			return given
        }
        public static func resetPassword(email: Parameter<String>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_resetPassword__email_email(`email`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func resetPassword(email: Parameter<String>, willProduce: (StubberThrows<ResetPassword>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_resetPassword__email_email(`email`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (ResetPassword).self)
			willProduce(stubber)
			return given
        }
        public static func getCookies(force: Parameter<Bool>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_getCookies__force_force(`force`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func getCookies(force: Parameter<Bool>, willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_getCookies__force_force(`force`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
        public static func getRegistrationFields(willThrow: Error...) -> MethodStub {
            return Given(method: .m_getRegistrationFields, products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func getRegistrationFields(willProduce: (StubberThrows<[PickerFields]>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_getRegistrationFields, products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: ([PickerFields]).self)
			willProduce(stubber)
			return given
        }
        public static func registerUser(fields: Parameter<[String: String]>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_registerUser__fields_fields(`fields`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func registerUser(fields: Parameter<[String: String]>, willProduce: (StubberThrows<User>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_registerUser__fields_fields(`fields`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (User).self)
			willProduce(stubber)
			return given
        }
        public static func validateRegistrationFields(fields: Parameter<[String: String]>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_validateRegistrationFields__fields_fields(`fields`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func validateRegistrationFields(fields: Parameter<[String: String]>, willProduce: (StubberThrows<[String: String]>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_validateRegistrationFields__fields_fields(`fields`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: ([String: String]).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        @discardableResult
		public static func login(username: Parameter<String>, password: Parameter<String>) -> Verify { return Verify(method: .m_login__username_usernamepassword_password(`username`, `password`))}
        public static func resetPassword(email: Parameter<String>) -> Verify { return Verify(method: .m_resetPassword__email_email(`email`))}
        public static func getCookies(force: Parameter<Bool>) -> Verify { return Verify(method: .m_getCookies__force_force(`force`))}
        public static func getRegistrationFields() -> Verify { return Verify(method: .m_getRegistrationFields)}
        public static func registerUser(fields: Parameter<[String: String]>) -> Verify { return Verify(method: .m_registerUser__fields_fields(`fields`))}
        public static func validateRegistrationFields(fields: Parameter<[String: String]>) -> Verify { return Verify(method: .m_validateRegistrationFields__fields_fields(`fields`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        @discardableResult
		public static func login(username: Parameter<String>, password: Parameter<String>, perform: @escaping (String, String) -> Void) -> Perform {
            return Perform(method: .m_login__username_usernamepassword_password(`username`, `password`), performs: perform)
        }
        public static func resetPassword(email: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_resetPassword__email_email(`email`), performs: perform)
        }
        public static func getCookies(force: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_getCookies__force_force(`force`), performs: perform)
        }
        public static func getRegistrationFields(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_getRegistrationFields, performs: perform)
        }
        public static func registerUser(fields: Parameter<[String: String]>, perform: @escaping ([String: String]) -> Void) -> Perform {
            return Perform(method: .m_registerUser__fields_fields(`fields`), performs: perform)
        }
        public static func validateRegistrationFields(fields: Parameter<[String: String]>, perform: @escaping ([String: String]) -> Void) -> Perform {
            return Perform(method: .m_validateRegistrationFields__fields_fields(`fields`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - AuthorizationAnalytics

open class AuthorizationAnalyticsMock: AuthorizationAnalytics, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func setUserID(_ id: String) {
        addInvocation(.m_setUserID__id(Parameter<String>.value(`id`)))
		let perform = methodPerformValue(.m_setUserID__id(Parameter<String>.value(`id`))) as? (String) -> Void
		perform?(`id`)
    }

    open func userLogin(method: LoginMethod) {
        addInvocation(.m_userLogin__method_method(Parameter<LoginMethod>.value(`method`)))
		let perform = methodPerformValue(.m_userLogin__method_method(Parameter<LoginMethod>.value(`method`))) as? (LoginMethod) -> Void
		perform?(`method`)
    }

    open func signUpClicked() {
        addInvocation(.m_signUpClicked)
		let perform = methodPerformValue(.m_signUpClicked) as? () -> Void
		perform?()
    }

    open func createAccountClicked() {
        addInvocation(.m_createAccountClicked)
		let perform = methodPerformValue(.m_createAccountClicked) as? () -> Void
		perform?()
    }

    open func registrationSuccess() {
        addInvocation(.m_registrationSuccess)
		let perform = methodPerformValue(.m_registrationSuccess) as? () -> Void
		perform?()
    }

    open func forgotPasswordClicked() {
        addInvocation(.m_forgotPasswordClicked)
		let perform = methodPerformValue(.m_forgotPasswordClicked) as? () -> Void
		perform?()
    }

    open func resetPasswordClicked(success: Bool) {
        addInvocation(.m_resetPasswordClicked__success_success(Parameter<Bool>.value(`success`)))
		let perform = methodPerformValue(.m_resetPasswordClicked__success_success(Parameter<Bool>.value(`success`))) as? (Bool) -> Void
		perform?(`success`)
    }


    fileprivate enum MethodType {
        case m_setUserID__id(Parameter<String>)
        case m_userLogin__method_method(Parameter<LoginMethod>)
        case m_signUpClicked
        case m_createAccountClicked
        case m_registrationSuccess
        case m_forgotPasswordClicked
        case m_resetPasswordClicked__success_success(Parameter<Bool>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_setUserID__id(let lhsId), .m_setUserID__id(let rhsId)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsId, rhs: rhsId, with: matcher), lhsId, rhsId, "_ id"))
				return Matcher.ComparisonResult(results)

            case (.m_userLogin__method_method(let lhsMethod), .m_userLogin__method_method(let rhsMethod)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsMethod, rhs: rhsMethod, with: matcher), lhsMethod, rhsMethod, "method"))
				return Matcher.ComparisonResult(results)

            case (.m_signUpClicked, .m_signUpClicked): return .match

            case (.m_createAccountClicked, .m_createAccountClicked): return .match

            case (.m_registrationSuccess, .m_registrationSuccess): return .match

            case (.m_forgotPasswordClicked, .m_forgotPasswordClicked): return .match

            case (.m_resetPasswordClicked__success_success(let lhsSuccess), .m_resetPasswordClicked__success_success(let rhsSuccess)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsSuccess, rhs: rhsSuccess, with: matcher), lhsSuccess, rhsSuccess, "success"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_setUserID__id(p0): return p0.intValue
            case let .m_userLogin__method_method(p0): return p0.intValue
            case .m_signUpClicked: return 0
            case .m_createAccountClicked: return 0
            case .m_registrationSuccess: return 0
            case .m_forgotPasswordClicked: return 0
            case let .m_resetPasswordClicked__success_success(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_setUserID__id: return ".setUserID(_:)"
            case .m_userLogin__method_method: return ".userLogin(method:)"
            case .m_signUpClicked: return ".signUpClicked()"
            case .m_createAccountClicked: return ".createAccountClicked()"
            case .m_registrationSuccess: return ".registrationSuccess()"
            case .m_forgotPasswordClicked: return ".forgotPasswordClicked()"
            case .m_resetPasswordClicked__success_success: return ".resetPasswordClicked(success:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func setUserID(_ id: Parameter<String>) -> Verify { return Verify(method: .m_setUserID__id(`id`))}
        public static func userLogin(method: Parameter<LoginMethod>) -> Verify { return Verify(method: .m_userLogin__method_method(`method`))}
        public static func signUpClicked() -> Verify { return Verify(method: .m_signUpClicked)}
        public static func createAccountClicked() -> Verify { return Verify(method: .m_createAccountClicked)}
        public static func registrationSuccess() -> Verify { return Verify(method: .m_registrationSuccess)}
        public static func forgotPasswordClicked() -> Verify { return Verify(method: .m_forgotPasswordClicked)}
        public static func resetPasswordClicked(success: Parameter<Bool>) -> Verify { return Verify(method: .m_resetPasswordClicked__success_success(`success`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func setUserID(_ id: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_setUserID__id(`id`), performs: perform)
        }
        public static func userLogin(method: Parameter<LoginMethod>, perform: @escaping (LoginMethod) -> Void) -> Perform {
            return Perform(method: .m_userLogin__method_method(`method`), performs: perform)
        }
        public static func signUpClicked(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_signUpClicked, performs: perform)
        }
        public static func createAccountClicked(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_createAccountClicked, performs: perform)
        }
        public static func registrationSuccess(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_registrationSuccess, performs: perform)
        }
        public static func forgotPasswordClicked(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_forgotPasswordClicked, performs: perform)
        }
        public static func resetPasswordClicked(success: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_resetPasswordClicked__success_success(`success`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - AuthorizationRouter

open class AuthorizationRouterMock: AuthorizationRouter, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func backToRoot(animated: Bool) {
        addInvocation(.m_backToRoot__animated_animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_backToRoot__animated_animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func back(animated: Bool) {
        addInvocation(.m_back__animated_animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_back__animated_animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func backWithFade() {
        addInvocation(.m_backWithFade)
		let perform = methodPerformValue(.m_backWithFade) as? () -> Void
		perform?()
    }

    open func dismiss(animated: Bool) {
        addInvocation(.m_dismiss__animated_animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_dismiss__animated_animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func removeLastView(controllers: Int) {
        addInvocation(.m_removeLastView__controllers_controllers(Parameter<Int>.value(`controllers`)))
		let perform = methodPerformValue(.m_removeLastView__controllers_controllers(Parameter<Int>.value(`controllers`))) as? (Int) -> Void
		perform?(`controllers`)
    }

    open func showMainScreen() {
        addInvocation(.m_showMainScreen)
		let perform = methodPerformValue(.m_showMainScreen) as? () -> Void
		perform?()
    }

    open func showLoginScreen() {
        addInvocation(.m_showLoginScreen)
		let perform = methodPerformValue(.m_showLoginScreen) as? () -> Void
		perform?()
    }

    open func showRegisterScreen() {
        addInvocation(.m_showRegisterScreen)
		let perform = methodPerformValue(.m_showRegisterScreen) as? () -> Void
		perform?()
    }

    open func showForgotPasswordScreen() {
        addInvocation(.m_showForgotPasswordScreen)
		let perform = methodPerformValue(.m_showForgotPasswordScreen) as? () -> Void
		perform?()
    }

    open func presentAlert(alertTitle: String, alertMessage: String, positiveAction: String, onCloseTapped: @escaping () -> Void, okTapped: @escaping () -> Void, type: AlertViewType) {
        addInvocation(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String>.value(`positiveAction`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<AlertViewType>.value(`type`)))
		let perform = methodPerformValue(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String>.value(`positiveAction`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<AlertViewType>.value(`type`))) as? (String, String, String, @escaping () -> Void, @escaping () -> Void, AlertViewType) -> Void
		perform?(`alertTitle`, `alertMessage`, `positiveAction`, `onCloseTapped`, `okTapped`, `type`)
    }

    open func presentAlert(alertTitle: String, alertMessage: String, nextSectionName: String?, action: String, image: SwiftUI.Image, onCloseTapped: @escaping () -> Void, okTapped: @escaping () -> Void, nextSectionTapped: @escaping () -> Void) {
        addInvocation(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String?>.value(`nextSectionName`), Parameter<String>.value(`action`), Parameter<SwiftUI.Image>.value(`image`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<() -> Void>.value(`nextSectionTapped`)))
		let perform = methodPerformValue(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String?>.value(`nextSectionName`), Parameter<String>.value(`action`), Parameter<SwiftUI.Image>.value(`image`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<() -> Void>.value(`nextSectionTapped`))) as? (String, String, String?, String, SwiftUI.Image, @escaping () -> Void, @escaping () -> Void, @escaping () -> Void) -> Void
		perform?(`alertTitle`, `alertMessage`, `nextSectionName`, `action`, `image`, `onCloseTapped`, `okTapped`, `nextSectionTapped`)
    }

    open func presentView(transitionStyle: UIModalTransitionStyle, view: any View) {
        addInvocation(.m_presentView__transitionStyle_transitionStyleview_view(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<any View>.value(`view`)))
		let perform = methodPerformValue(.m_presentView__transitionStyle_transitionStyleview_view(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<any View>.value(`view`))) as? (UIModalTransitionStyle, any View) -> Void
		perform?(`transitionStyle`, `view`)
    }

    open func presentView(transitionStyle: UIModalTransitionStyle, content: () -> any View) {
        addInvocation(.m_presentView__transitionStyle_transitionStylecontent_content(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<() -> any View>.any))
		let perform = methodPerformValue(.m_presentView__transitionStyle_transitionStylecontent_content(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<() -> any View>.any)) as? (UIModalTransitionStyle, () -> any View) -> Void
		perform?(`transitionStyle`, `content`)
    }


    fileprivate enum MethodType {
        case m_backToRoot__animated_animated(Parameter<Bool>)
        case m_back__animated_animated(Parameter<Bool>)
        case m_backWithFade
        case m_dismiss__animated_animated(Parameter<Bool>)
        case m_removeLastView__controllers_controllers(Parameter<Int>)
        case m_showMainScreen
        case m_showLoginScreen
        case m_showRegisterScreen
        case m_showForgotPasswordScreen
        case m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(Parameter<String>, Parameter<String>, Parameter<String>, Parameter<() -> Void>, Parameter<() -> Void>, Parameter<AlertViewType>)
        case m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(Parameter<String>, Parameter<String>, Parameter<String?>, Parameter<String>, Parameter<SwiftUI.Image>, Parameter<() -> Void>, Parameter<() -> Void>, Parameter<() -> Void>)
        case m_presentView__transitionStyle_transitionStyleview_view(Parameter<UIModalTransitionStyle>, Parameter<any View>)
        case m_presentView__transitionStyle_transitionStylecontent_content(Parameter<UIModalTransitionStyle>, Parameter<() -> any View>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_backToRoot__animated_animated(let lhsAnimated), .m_backToRoot__animated_animated(let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_back__animated_animated(let lhsAnimated), .m_back__animated_animated(let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_backWithFade, .m_backWithFade): return .match

            case (.m_dismiss__animated_animated(let lhsAnimated), .m_dismiss__animated_animated(let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_removeLastView__controllers_controllers(let lhsControllers), .m_removeLastView__controllers_controllers(let rhsControllers)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsControllers, rhs: rhsControllers, with: matcher), lhsControllers, rhsControllers, "controllers"))
				return Matcher.ComparisonResult(results)

            case (.m_showMainScreen, .m_showMainScreen): return .match

            case (.m_showLoginScreen, .m_showLoginScreen): return .match

            case (.m_showRegisterScreen, .m_showRegisterScreen): return .match

            case (.m_showForgotPasswordScreen, .m_showForgotPasswordScreen): return .match

            case (.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(let lhsAlerttitle, let lhsAlertmessage, let lhsPositiveaction, let lhsOnclosetapped, let lhsOktapped, let lhsType), .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(let rhsAlerttitle, let rhsAlertmessage, let rhsPositiveaction, let rhsOnclosetapped, let rhsOktapped, let rhsType)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlerttitle, rhs: rhsAlerttitle, with: matcher), lhsAlerttitle, rhsAlerttitle, "alertTitle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlertmessage, rhs: rhsAlertmessage, with: matcher), lhsAlertmessage, rhsAlertmessage, "alertMessage"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsPositiveaction, rhs: rhsPositiveaction, with: matcher), lhsPositiveaction, rhsPositiveaction, "positiveAction"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOnclosetapped, rhs: rhsOnclosetapped, with: matcher), lhsOnclosetapped, rhsOnclosetapped, "onCloseTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOktapped, rhs: rhsOktapped, with: matcher), lhsOktapped, rhsOktapped, "okTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher), lhsType, rhsType, "type"))
				return Matcher.ComparisonResult(results)

            case (.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(let lhsAlerttitle, let lhsAlertmessage, let lhsNextsectionname, let lhsAction, let lhsImage, let lhsOnclosetapped, let lhsOktapped, let lhsNextsectiontapped), .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(let rhsAlerttitle, let rhsAlertmessage, let rhsNextsectionname, let rhsAction, let rhsImage, let rhsOnclosetapped, let rhsOktapped, let rhsNextsectiontapped)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlerttitle, rhs: rhsAlerttitle, with: matcher), lhsAlerttitle, rhsAlerttitle, "alertTitle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlertmessage, rhs: rhsAlertmessage, with: matcher), lhsAlertmessage, rhsAlertmessage, "alertMessage"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNextsectionname, rhs: rhsNextsectionname, with: matcher), lhsNextsectionname, rhsNextsectionname, "nextSectionName"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAction, rhs: rhsAction, with: matcher), lhsAction, rhsAction, "action"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsImage, rhs: rhsImage, with: matcher), lhsImage, rhsImage, "image"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOnclosetapped, rhs: rhsOnclosetapped, with: matcher), lhsOnclosetapped, rhsOnclosetapped, "onCloseTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOktapped, rhs: rhsOktapped, with: matcher), lhsOktapped, rhsOktapped, "okTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNextsectiontapped, rhs: rhsNextsectiontapped, with: matcher), lhsNextsectiontapped, rhsNextsectiontapped, "nextSectionTapped"))
				return Matcher.ComparisonResult(results)

            case (.m_presentView__transitionStyle_transitionStyleview_view(let lhsTransitionstyle, let lhsView), .m_presentView__transitionStyle_transitionStyleview_view(let rhsTransitionstyle, let rhsView)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsTransitionstyle, rhs: rhsTransitionstyle, with: matcher), lhsTransitionstyle, rhsTransitionstyle, "transitionStyle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsView, rhs: rhsView, with: matcher), lhsView, rhsView, "view"))
				return Matcher.ComparisonResult(results)

            case (.m_presentView__transitionStyle_transitionStylecontent_content(let lhsTransitionstyle, let lhsContent), .m_presentView__transitionStyle_transitionStylecontent_content(let rhsTransitionstyle, let rhsContent)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsTransitionstyle, rhs: rhsTransitionstyle, with: matcher), lhsTransitionstyle, rhsTransitionstyle, "transitionStyle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsContent, rhs: rhsContent, with: matcher), lhsContent, rhsContent, "content"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_backToRoot__animated_animated(p0): return p0.intValue
            case let .m_back__animated_animated(p0): return p0.intValue
            case .m_backWithFade: return 0
            case let .m_dismiss__animated_animated(p0): return p0.intValue
            case let .m_removeLastView__controllers_controllers(p0): return p0.intValue
            case .m_showMainScreen: return 0
            case .m_showLoginScreen: return 0
            case .m_showRegisterScreen: return 0
            case .m_showForgotPasswordScreen: return 0
            case let .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(p0, p1, p2, p3, p4, p5): return p0.intValue + p1.intValue + p2.intValue + p3.intValue + p4.intValue + p5.intValue
            case let .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(p0, p1, p2, p3, p4, p5, p6, p7): return p0.intValue + p1.intValue + p2.intValue + p3.intValue + p4.intValue + p5.intValue + p6.intValue + p7.intValue
            case let .m_presentView__transitionStyle_transitionStyleview_view(p0, p1): return p0.intValue + p1.intValue
            case let .m_presentView__transitionStyle_transitionStylecontent_content(p0, p1): return p0.intValue + p1.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_backToRoot__animated_animated: return ".backToRoot(animated:)"
            case .m_back__animated_animated: return ".back(animated:)"
            case .m_backWithFade: return ".backWithFade()"
            case .m_dismiss__animated_animated: return ".dismiss(animated:)"
            case .m_removeLastView__controllers_controllers: return ".removeLastView(controllers:)"
            case .m_showMainScreen: return ".showMainScreen()"
            case .m_showLoginScreen: return ".showLoginScreen()"
            case .m_showRegisterScreen: return ".showRegisterScreen()"
            case .m_showForgotPasswordScreen: return ".showForgotPasswordScreen()"
            case .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type: return ".presentAlert(alertTitle:alertMessage:positiveAction:onCloseTapped:okTapped:type:)"
            case .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped: return ".presentAlert(alertTitle:alertMessage:nextSectionName:action:image:onCloseTapped:okTapped:nextSectionTapped:)"
            case .m_presentView__transitionStyle_transitionStyleview_view: return ".presentView(transitionStyle:view:)"
            case .m_presentView__transitionStyle_transitionStylecontent_content: return ".presentView(transitionStyle:content:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func backToRoot(animated: Parameter<Bool>) -> Verify { return Verify(method: .m_backToRoot__animated_animated(`animated`))}
        public static func back(animated: Parameter<Bool>) -> Verify { return Verify(method: .m_back__animated_animated(`animated`))}
        public static func backWithFade() -> Verify { return Verify(method: .m_backWithFade)}
        public static func dismiss(animated: Parameter<Bool>) -> Verify { return Verify(method: .m_dismiss__animated_animated(`animated`))}
        public static func removeLastView(controllers: Parameter<Int>) -> Verify { return Verify(method: .m_removeLastView__controllers_controllers(`controllers`))}
        public static func showMainScreen() -> Verify { return Verify(method: .m_showMainScreen)}
        public static func showLoginScreen() -> Verify { return Verify(method: .m_showLoginScreen)}
        public static func showRegisterScreen() -> Verify { return Verify(method: .m_showRegisterScreen)}
        public static func showForgotPasswordScreen() -> Verify { return Verify(method: .m_showForgotPasswordScreen)}
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, positiveAction: Parameter<String>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, type: Parameter<AlertViewType>) -> Verify { return Verify(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(`alertTitle`, `alertMessage`, `positiveAction`, `onCloseTapped`, `okTapped`, `type`))}
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, nextSectionName: Parameter<String?>, action: Parameter<String>, image: Parameter<SwiftUI.Image>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, nextSectionTapped: Parameter<() -> Void>) -> Verify { return Verify(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(`alertTitle`, `alertMessage`, `nextSectionName`, `action`, `image`, `onCloseTapped`, `okTapped`, `nextSectionTapped`))}
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, view: Parameter<any View>) -> Verify { return Verify(method: .m_presentView__transitionStyle_transitionStyleview_view(`transitionStyle`, `view`))}
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, content: Parameter<() -> any View>) -> Verify { return Verify(method: .m_presentView__transitionStyle_transitionStylecontent_content(`transitionStyle`, `content`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func backToRoot(animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_backToRoot__animated_animated(`animated`), performs: perform)
        }
        public static func back(animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_back__animated_animated(`animated`), performs: perform)
        }
        public static func backWithFade(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_backWithFade, performs: perform)
        }
        public static func dismiss(animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_dismiss__animated_animated(`animated`), performs: perform)
        }
        public static func removeLastView(controllers: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_removeLastView__controllers_controllers(`controllers`), performs: perform)
        }
        public static func showMainScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showMainScreen, performs: perform)
        }
        public static func showLoginScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showLoginScreen, performs: perform)
        }
        public static func showRegisterScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showRegisterScreen, performs: perform)
        }
        public static func showForgotPasswordScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showForgotPasswordScreen, performs: perform)
        }
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, positiveAction: Parameter<String>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, type: Parameter<AlertViewType>, perform: @escaping (String, String, String, @escaping () -> Void, @escaping () -> Void, AlertViewType) -> Void) -> Perform {
            return Perform(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(`alertTitle`, `alertMessage`, `positiveAction`, `onCloseTapped`, `okTapped`, `type`), performs: perform)
        }
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, nextSectionName: Parameter<String?>, action: Parameter<String>, image: Parameter<SwiftUI.Image>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, nextSectionTapped: Parameter<() -> Void>, perform: @escaping (String, String, String?, String, SwiftUI.Image, @escaping () -> Void, @escaping () -> Void, @escaping () -> Void) -> Void) -> Perform {
            return Perform(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(`alertTitle`, `alertMessage`, `nextSectionName`, `action`, `image`, `onCloseTapped`, `okTapped`, `nextSectionTapped`), performs: perform)
        }
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, view: Parameter<any View>, perform: @escaping (UIModalTransitionStyle, any View) -> Void) -> Perform {
            return Perform(method: .m_presentView__transitionStyle_transitionStyleview_view(`transitionStyle`, `view`), performs: perform)
        }
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, content: Parameter<() -> any View>, perform: @escaping (UIModalTransitionStyle, () -> any View) -> Void) -> Perform {
            return Perform(method: .m_presentView__transitionStyle_transitionStylecontent_content(`transitionStyle`, `content`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - BaseRouter

open class BaseRouterMock: BaseRouter, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func backToRoot(animated: Bool) {
        addInvocation(.m_backToRoot__animated_animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_backToRoot__animated_animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func back(animated: Bool) {
        addInvocation(.m_back__animated_animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_back__animated_animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func backWithFade() {
        addInvocation(.m_backWithFade)
		let perform = methodPerformValue(.m_backWithFade) as? () -> Void
		perform?()
    }

    open func dismiss(animated: Bool) {
        addInvocation(.m_dismiss__animated_animated(Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_dismiss__animated_animated(Parameter<Bool>.value(`animated`))) as? (Bool) -> Void
		perform?(`animated`)
    }

    open func removeLastView(controllers: Int) {
        addInvocation(.m_removeLastView__controllers_controllers(Parameter<Int>.value(`controllers`)))
		let perform = methodPerformValue(.m_removeLastView__controllers_controllers(Parameter<Int>.value(`controllers`))) as? (Int) -> Void
		perform?(`controllers`)
    }

    open func showMainScreen() {
        addInvocation(.m_showMainScreen)
		let perform = methodPerformValue(.m_showMainScreen) as? () -> Void
		perform?()
    }

    open func showLoginScreen() {
        addInvocation(.m_showLoginScreen)
		let perform = methodPerformValue(.m_showLoginScreen) as? () -> Void
		perform?()
    }

    open func showRegisterScreen() {
        addInvocation(.m_showRegisterScreen)
		let perform = methodPerformValue(.m_showRegisterScreen) as? () -> Void
		perform?()
    }

    open func showForgotPasswordScreen() {
        addInvocation(.m_showForgotPasswordScreen)
		let perform = methodPerformValue(.m_showForgotPasswordScreen) as? () -> Void
		perform?()
    }

    open func presentAlert(alertTitle: String, alertMessage: String, positiveAction: String, onCloseTapped: @escaping () -> Void, okTapped: @escaping () -> Void, type: AlertViewType) {
        addInvocation(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String>.value(`positiveAction`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<AlertViewType>.value(`type`)))
		let perform = methodPerformValue(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String>.value(`positiveAction`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<AlertViewType>.value(`type`))) as? (String, String, String, @escaping () -> Void, @escaping () -> Void, AlertViewType) -> Void
		perform?(`alertTitle`, `alertMessage`, `positiveAction`, `onCloseTapped`, `okTapped`, `type`)
    }

    open func presentAlert(alertTitle: String, alertMessage: String, nextSectionName: String?, action: String, image: SwiftUI.Image, onCloseTapped: @escaping () -> Void, okTapped: @escaping () -> Void, nextSectionTapped: @escaping () -> Void) {
        addInvocation(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String?>.value(`nextSectionName`), Parameter<String>.value(`action`), Parameter<SwiftUI.Image>.value(`image`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<() -> Void>.value(`nextSectionTapped`)))
		let perform = methodPerformValue(.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(Parameter<String>.value(`alertTitle`), Parameter<String>.value(`alertMessage`), Parameter<String?>.value(`nextSectionName`), Parameter<String>.value(`action`), Parameter<SwiftUI.Image>.value(`image`), Parameter<() -> Void>.value(`onCloseTapped`), Parameter<() -> Void>.value(`okTapped`), Parameter<() -> Void>.value(`nextSectionTapped`))) as? (String, String, String?, String, SwiftUI.Image, @escaping () -> Void, @escaping () -> Void, @escaping () -> Void) -> Void
		perform?(`alertTitle`, `alertMessage`, `nextSectionName`, `action`, `image`, `onCloseTapped`, `okTapped`, `nextSectionTapped`)
    }

    open func presentView(transitionStyle: UIModalTransitionStyle, view: any View) {
        addInvocation(.m_presentView__transitionStyle_transitionStyleview_view(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<any View>.value(`view`)))
		let perform = methodPerformValue(.m_presentView__transitionStyle_transitionStyleview_view(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<any View>.value(`view`))) as? (UIModalTransitionStyle, any View) -> Void
		perform?(`transitionStyle`, `view`)
    }

    open func presentView(transitionStyle: UIModalTransitionStyle, content: () -> any View) {
        addInvocation(.m_presentView__transitionStyle_transitionStylecontent_content(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<() -> any View>.any))
		let perform = methodPerformValue(.m_presentView__transitionStyle_transitionStylecontent_content(Parameter<UIModalTransitionStyle>.value(`transitionStyle`), Parameter<() -> any View>.any)) as? (UIModalTransitionStyle, () -> any View) -> Void
		perform?(`transitionStyle`, `content`)
    }


    fileprivate enum MethodType {
        case m_backToRoot__animated_animated(Parameter<Bool>)
        case m_back__animated_animated(Parameter<Bool>)
        case m_backWithFade
        case m_dismiss__animated_animated(Parameter<Bool>)
        case m_removeLastView__controllers_controllers(Parameter<Int>)
        case m_showMainScreen
        case m_showLoginScreen
        case m_showRegisterScreen
        case m_showForgotPasswordScreen
        case m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(Parameter<String>, Parameter<String>, Parameter<String>, Parameter<() -> Void>, Parameter<() -> Void>, Parameter<AlertViewType>)
        case m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(Parameter<String>, Parameter<String>, Parameter<String?>, Parameter<String>, Parameter<SwiftUI.Image>, Parameter<() -> Void>, Parameter<() -> Void>, Parameter<() -> Void>)
        case m_presentView__transitionStyle_transitionStyleview_view(Parameter<UIModalTransitionStyle>, Parameter<any View>)
        case m_presentView__transitionStyle_transitionStylecontent_content(Parameter<UIModalTransitionStyle>, Parameter<() -> any View>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_backToRoot__animated_animated(let lhsAnimated), .m_backToRoot__animated_animated(let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_back__animated_animated(let lhsAnimated), .m_back__animated_animated(let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_backWithFade, .m_backWithFade): return .match

            case (.m_dismiss__animated_animated(let lhsAnimated), .m_dismiss__animated_animated(let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_removeLastView__controllers_controllers(let lhsControllers), .m_removeLastView__controllers_controllers(let rhsControllers)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsControllers, rhs: rhsControllers, with: matcher), lhsControllers, rhsControllers, "controllers"))
				return Matcher.ComparisonResult(results)

            case (.m_showMainScreen, .m_showMainScreen): return .match

            case (.m_showLoginScreen, .m_showLoginScreen): return .match

            case (.m_showRegisterScreen, .m_showRegisterScreen): return .match

            case (.m_showForgotPasswordScreen, .m_showForgotPasswordScreen): return .match

            case (.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(let lhsAlerttitle, let lhsAlertmessage, let lhsPositiveaction, let lhsOnclosetapped, let lhsOktapped, let lhsType), .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(let rhsAlerttitle, let rhsAlertmessage, let rhsPositiveaction, let rhsOnclosetapped, let rhsOktapped, let rhsType)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlerttitle, rhs: rhsAlerttitle, with: matcher), lhsAlerttitle, rhsAlerttitle, "alertTitle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlertmessage, rhs: rhsAlertmessage, with: matcher), lhsAlertmessage, rhsAlertmessage, "alertMessage"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsPositiveaction, rhs: rhsPositiveaction, with: matcher), lhsPositiveaction, rhsPositiveaction, "positiveAction"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOnclosetapped, rhs: rhsOnclosetapped, with: matcher), lhsOnclosetapped, rhsOnclosetapped, "onCloseTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOktapped, rhs: rhsOktapped, with: matcher), lhsOktapped, rhsOktapped, "okTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher), lhsType, rhsType, "type"))
				return Matcher.ComparisonResult(results)

            case (.m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(let lhsAlerttitle, let lhsAlertmessage, let lhsNextsectionname, let lhsAction, let lhsImage, let lhsOnclosetapped, let lhsOktapped, let lhsNextsectiontapped), .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(let rhsAlerttitle, let rhsAlertmessage, let rhsNextsectionname, let rhsAction, let rhsImage, let rhsOnclosetapped, let rhsOktapped, let rhsNextsectiontapped)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlerttitle, rhs: rhsAlerttitle, with: matcher), lhsAlerttitle, rhsAlerttitle, "alertTitle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAlertmessage, rhs: rhsAlertmessage, with: matcher), lhsAlertmessage, rhsAlertmessage, "alertMessage"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNextsectionname, rhs: rhsNextsectionname, with: matcher), lhsNextsectionname, rhsNextsectionname, "nextSectionName"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAction, rhs: rhsAction, with: matcher), lhsAction, rhsAction, "action"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsImage, rhs: rhsImage, with: matcher), lhsImage, rhsImage, "image"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOnclosetapped, rhs: rhsOnclosetapped, with: matcher), lhsOnclosetapped, rhsOnclosetapped, "onCloseTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOktapped, rhs: rhsOktapped, with: matcher), lhsOktapped, rhsOktapped, "okTapped"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNextsectiontapped, rhs: rhsNextsectiontapped, with: matcher), lhsNextsectiontapped, rhsNextsectiontapped, "nextSectionTapped"))
				return Matcher.ComparisonResult(results)

            case (.m_presentView__transitionStyle_transitionStyleview_view(let lhsTransitionstyle, let lhsView), .m_presentView__transitionStyle_transitionStyleview_view(let rhsTransitionstyle, let rhsView)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsTransitionstyle, rhs: rhsTransitionstyle, with: matcher), lhsTransitionstyle, rhsTransitionstyle, "transitionStyle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsView, rhs: rhsView, with: matcher), lhsView, rhsView, "view"))
				return Matcher.ComparisonResult(results)

            case (.m_presentView__transitionStyle_transitionStylecontent_content(let lhsTransitionstyle, let lhsContent), .m_presentView__transitionStyle_transitionStylecontent_content(let rhsTransitionstyle, let rhsContent)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsTransitionstyle, rhs: rhsTransitionstyle, with: matcher), lhsTransitionstyle, rhsTransitionstyle, "transitionStyle"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsContent, rhs: rhsContent, with: matcher), lhsContent, rhsContent, "content"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_backToRoot__animated_animated(p0): return p0.intValue
            case let .m_back__animated_animated(p0): return p0.intValue
            case .m_backWithFade: return 0
            case let .m_dismiss__animated_animated(p0): return p0.intValue
            case let .m_removeLastView__controllers_controllers(p0): return p0.intValue
            case .m_showMainScreen: return 0
            case .m_showLoginScreen: return 0
            case .m_showRegisterScreen: return 0
            case .m_showForgotPasswordScreen: return 0
            case let .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(p0, p1, p2, p3, p4, p5): return p0.intValue + p1.intValue + p2.intValue + p3.intValue + p4.intValue + p5.intValue
            case let .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(p0, p1, p2, p3, p4, p5, p6, p7): return p0.intValue + p1.intValue + p2.intValue + p3.intValue + p4.intValue + p5.intValue + p6.intValue + p7.intValue
            case let .m_presentView__transitionStyle_transitionStyleview_view(p0, p1): return p0.intValue + p1.intValue
            case let .m_presentView__transitionStyle_transitionStylecontent_content(p0, p1): return p0.intValue + p1.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_backToRoot__animated_animated: return ".backToRoot(animated:)"
            case .m_back__animated_animated: return ".back(animated:)"
            case .m_backWithFade: return ".backWithFade()"
            case .m_dismiss__animated_animated: return ".dismiss(animated:)"
            case .m_removeLastView__controllers_controllers: return ".removeLastView(controllers:)"
            case .m_showMainScreen: return ".showMainScreen()"
            case .m_showLoginScreen: return ".showLoginScreen()"
            case .m_showRegisterScreen: return ".showRegisterScreen()"
            case .m_showForgotPasswordScreen: return ".showForgotPasswordScreen()"
            case .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type: return ".presentAlert(alertTitle:alertMessage:positiveAction:onCloseTapped:okTapped:type:)"
            case .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped: return ".presentAlert(alertTitle:alertMessage:nextSectionName:action:image:onCloseTapped:okTapped:nextSectionTapped:)"
            case .m_presentView__transitionStyle_transitionStyleview_view: return ".presentView(transitionStyle:view:)"
            case .m_presentView__transitionStyle_transitionStylecontent_content: return ".presentView(transitionStyle:content:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func backToRoot(animated: Parameter<Bool>) -> Verify { return Verify(method: .m_backToRoot__animated_animated(`animated`))}
        public static func back(animated: Parameter<Bool>) -> Verify { return Verify(method: .m_back__animated_animated(`animated`))}
        public static func backWithFade() -> Verify { return Verify(method: .m_backWithFade)}
        public static func dismiss(animated: Parameter<Bool>) -> Verify { return Verify(method: .m_dismiss__animated_animated(`animated`))}
        public static func removeLastView(controllers: Parameter<Int>) -> Verify { return Verify(method: .m_removeLastView__controllers_controllers(`controllers`))}
        public static func showMainScreen() -> Verify { return Verify(method: .m_showMainScreen)}
        public static func showLoginScreen() -> Verify { return Verify(method: .m_showLoginScreen)}
        public static func showRegisterScreen() -> Verify { return Verify(method: .m_showRegisterScreen)}
        public static func showForgotPasswordScreen() -> Verify { return Verify(method: .m_showForgotPasswordScreen)}
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, positiveAction: Parameter<String>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, type: Parameter<AlertViewType>) -> Verify { return Verify(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(`alertTitle`, `alertMessage`, `positiveAction`, `onCloseTapped`, `okTapped`, `type`))}
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, nextSectionName: Parameter<String?>, action: Parameter<String>, image: Parameter<SwiftUI.Image>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, nextSectionTapped: Parameter<() -> Void>) -> Verify { return Verify(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(`alertTitle`, `alertMessage`, `nextSectionName`, `action`, `image`, `onCloseTapped`, `okTapped`, `nextSectionTapped`))}
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, view: Parameter<any View>) -> Verify { return Verify(method: .m_presentView__transitionStyle_transitionStyleview_view(`transitionStyle`, `view`))}
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, content: Parameter<() -> any View>) -> Verify { return Verify(method: .m_presentView__transitionStyle_transitionStylecontent_content(`transitionStyle`, `content`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func backToRoot(animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_backToRoot__animated_animated(`animated`), performs: perform)
        }
        public static func back(animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_back__animated_animated(`animated`), performs: perform)
        }
        public static func backWithFade(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_backWithFade, performs: perform)
        }
        public static func dismiss(animated: Parameter<Bool>, perform: @escaping (Bool) -> Void) -> Perform {
            return Perform(method: .m_dismiss__animated_animated(`animated`), performs: perform)
        }
        public static func removeLastView(controllers: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_removeLastView__controllers_controllers(`controllers`), performs: perform)
        }
        public static func showMainScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showMainScreen, performs: perform)
        }
        public static func showLoginScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showLoginScreen, performs: perform)
        }
        public static func showRegisterScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showRegisterScreen, performs: perform)
        }
        public static func showForgotPasswordScreen(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_showForgotPasswordScreen, performs: perform)
        }
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, positiveAction: Parameter<String>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, type: Parameter<AlertViewType>, perform: @escaping (String, String, String, @escaping () -> Void, @escaping () -> Void, AlertViewType) -> Void) -> Perform {
            return Perform(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagepositiveAction_positiveActiononCloseTapped_onCloseTappedokTapped_okTappedtype_type(`alertTitle`, `alertMessage`, `positiveAction`, `onCloseTapped`, `okTapped`, `type`), performs: perform)
        }
        public static func presentAlert(alertTitle: Parameter<String>, alertMessage: Parameter<String>, nextSectionName: Parameter<String?>, action: Parameter<String>, image: Parameter<SwiftUI.Image>, onCloseTapped: Parameter<() -> Void>, okTapped: Parameter<() -> Void>, nextSectionTapped: Parameter<() -> Void>, perform: @escaping (String, String, String?, String, SwiftUI.Image, @escaping () -> Void, @escaping () -> Void, @escaping () -> Void) -> Void) -> Perform {
            return Perform(method: .m_presentAlert__alertTitle_alertTitlealertMessage_alertMessagenextSectionName_nextSectionNameaction_actionimage_imageonCloseTapped_onCloseTappedokTapped_okTappednextSectionTapped_nextSectionTapped(`alertTitle`, `alertMessage`, `nextSectionName`, `action`, `image`, `onCloseTapped`, `okTapped`, `nextSectionTapped`), performs: perform)
        }
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, view: Parameter<any View>, perform: @escaping (UIModalTransitionStyle, any View) -> Void) -> Perform {
            return Perform(method: .m_presentView__transitionStyle_transitionStyleview_view(`transitionStyle`, `view`), performs: perform)
        }
        public static func presentView(transitionStyle: Parameter<UIModalTransitionStyle>, content: Parameter<() -> any View>, perform: @escaping (UIModalTransitionStyle, () -> any View) -> Void) -> Perform {
            return Perform(method: .m_presentView__transitionStyle_transitionStylecontent_content(`transitionStyle`, `content`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - ConnectivityProtocol

open class ConnectivityProtocolMock: ConnectivityProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var isInternetAvaliable: Bool {
		get {	invocations.append(.p_isInternetAvaliable_get); return __p_isInternetAvaliable ?? givenGetterValue(.p_isInternetAvaliable_get, "ConnectivityProtocolMock - stub value for isInternetAvaliable was not defined") }
	}
	private var __p_isInternetAvaliable: (Bool)?

    public var isMobileData: Bool {
		get {	invocations.append(.p_isMobileData_get); return __p_isMobileData ?? givenGetterValue(.p_isMobileData_get, "ConnectivityProtocolMock - stub value for isMobileData was not defined") }
	}
	private var __p_isMobileData: (Bool)?

    public var internetReachableSubject: CurrentValueSubject<InternetState?, Never> {
		get {	invocations.append(.p_internetReachableSubject_get); return __p_internetReachableSubject ?? givenGetterValue(.p_internetReachableSubject_get, "ConnectivityProtocolMock - stub value for internetReachableSubject was not defined") }
	}
	private var __p_internetReachableSubject: (CurrentValueSubject<InternetState?, Never>)?






    fileprivate enum MethodType {
        case p_isInternetAvaliable_get
        case p_isMobileData_get
        case p_internetReachableSubject_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {            case (.p_isInternetAvaliable_get,.p_isInternetAvaliable_get): return Matcher.ComparisonResult.match
            case (.p_isMobileData_get,.p_isMobileData_get): return Matcher.ComparisonResult.match
            case (.p_internetReachableSubject_get,.p_internetReachableSubject_get): return Matcher.ComparisonResult.match
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .p_isInternetAvaliable_get: return 0
            case .p_isMobileData_get: return 0
            case .p_internetReachableSubject_get: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .p_isInternetAvaliable_get: return "[get] .isInternetAvaliable"
            case .p_isMobileData_get: return "[get] .isMobileData"
            case .p_internetReachableSubject_get: return "[get] .internetReachableSubject"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func isInternetAvaliable(getter defaultValue: Bool...) -> PropertyStub {
            return Given(method: .p_isInternetAvaliable_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func isMobileData(getter defaultValue: Bool...) -> PropertyStub {
            return Given(method: .p_isMobileData_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func internetReachableSubject(getter defaultValue: CurrentValueSubject<InternetState?, Never>...) -> PropertyStub {
            return Given(method: .p_internetReachableSubject_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static var isInternetAvaliable: Verify { return Verify(method: .p_isInternetAvaliable_get) }
        public static var isMobileData: Verify { return Verify(method: .p_isMobileData_get) }
        public static var internetReachableSubject: Verify { return Verify(method: .p_internetReachableSubject_get) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - DownloadManagerProtocol

open class DownloadManagerProtocolMock: DownloadManagerProtocol, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func publisher() -> AnyPublisher<Int, Never> {
        addInvocation(.m_publisher)
		let perform = methodPerformValue(.m_publisher) as? () -> Void
		perform?()
		var __value: AnyPublisher<Int, Never>
		do {
		    __value = try methodReturnValue(.m_publisher).casted()
		} catch {
			onFatalFailure("Stub return value not specified for publisher(). Use given")
			Failure("Stub return value not specified for publisher(). Use given")
		}
		return __value
    }

    open func addToDownloadQueue(blocks: [CourseBlock]) throws {
        addInvocation(.m_addToDownloadQueue__blocks_blocks(Parameter<[CourseBlock]>.value(`blocks`)))
		let perform = methodPerformValue(.m_addToDownloadQueue__blocks_blocks(Parameter<[CourseBlock]>.value(`blocks`))) as? ([CourseBlock]) -> Void
		perform?(`blocks`)
		do {
		    _ = try methodReturnValue(.m_addToDownloadQueue__blocks_blocks(Parameter<[CourseBlock]>.value(`blocks`))).casted() as Void
		} catch MockError.notStubed {
			// do nothing
		} catch {
		    throw error
		}
    }

    open func getDownloadsForCourse(_ courseId: String) -> [DownloadData] {
        addInvocation(.m_getDownloadsForCourse__courseId(Parameter<String>.value(`courseId`)))
		let perform = methodPerformValue(.m_getDownloadsForCourse__courseId(Parameter<String>.value(`courseId`))) as? (String) -> Void
		perform?(`courseId`)
		var __value: [DownloadData]
		do {
		    __value = try methodReturnValue(.m_getDownloadsForCourse__courseId(Parameter<String>.value(`courseId`))).casted()
		} catch {
			onFatalFailure("Stub return value not specified for getDownloadsForCourse(_ courseId: String). Use given")
			Failure("Stub return value not specified for getDownloadsForCourse(_ courseId: String). Use given")
		}
		return __value
    }

    open func cancelDownloading(courseId: String, blocks: [CourseBlock]) throws {
        addInvocation(.m_cancelDownloading__courseId_courseIdblocks_blocks(Parameter<String>.value(`courseId`), Parameter<[CourseBlock]>.value(`blocks`)))
		let perform = methodPerformValue(.m_cancelDownloading__courseId_courseIdblocks_blocks(Parameter<String>.value(`courseId`), Parameter<[CourseBlock]>.value(`blocks`))) as? (String, [CourseBlock]) -> Void
		perform?(`courseId`, `blocks`)
		do {
		    _ = try methodReturnValue(.m_cancelDownloading__courseId_courseIdblocks_blocks(Parameter<String>.value(`courseId`), Parameter<[CourseBlock]>.value(`blocks`))).casted() as Void
		} catch MockError.notStubed {
			// do nothing
		} catch {
		    throw error
		}
    }

    open func resumeDownloading() throws {
        addInvocation(.m_resumeDownloading)
		let perform = methodPerformValue(.m_resumeDownloading) as? () -> Void
		perform?()
		do {
		    _ = try methodReturnValue(.m_resumeDownloading).casted() as Void
		} catch MockError.notStubed {
			// do nothing
		} catch {
		    throw error
		}
    }

    open func pauseDownloading() {
        addInvocation(.m_pauseDownloading)
		let perform = methodPerformValue(.m_pauseDownloading) as? () -> Void
		perform?()
    }

    open func deleteFile(blocks: [CourseBlock]) {
        addInvocation(.m_deleteFile__blocks_blocks(Parameter<[CourseBlock]>.value(`blocks`)))
		let perform = methodPerformValue(.m_deleteFile__blocks_blocks(Parameter<[CourseBlock]>.value(`blocks`))) as? ([CourseBlock]) -> Void
		perform?(`blocks`)
    }

    open func fileUrl(for blockId: String) -> URL? {
        addInvocation(.m_fileUrl__for_blockId(Parameter<String>.value(`blockId`)))
		let perform = methodPerformValue(.m_fileUrl__for_blockId(Parameter<String>.value(`blockId`))) as? (String) -> Void
		perform?(`blockId`)
		var __value: URL? = nil
		do {
		    __value = try methodReturnValue(.m_fileUrl__for_blockId(Parameter<String>.value(`blockId`))).casted()
		} catch {
			// do nothing
		}
		return __value
    }


    fileprivate enum MethodType {
        case m_publisher
        case m_addToDownloadQueue__blocks_blocks(Parameter<[CourseBlock]>)
        case m_getDownloadsForCourse__courseId(Parameter<String>)
        case m_cancelDownloading__courseId_courseIdblocks_blocks(Parameter<String>, Parameter<[CourseBlock]>)
        case m_resumeDownloading
        case m_pauseDownloading
        case m_deleteFile__blocks_blocks(Parameter<[CourseBlock]>)
        case m_fileUrl__for_blockId(Parameter<String>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_publisher, .m_publisher): return .match

            case (.m_addToDownloadQueue__blocks_blocks(let lhsBlocks), .m_addToDownloadQueue__blocks_blocks(let rhsBlocks)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsBlocks, rhs: rhsBlocks, with: matcher), lhsBlocks, rhsBlocks, "blocks"))
				return Matcher.ComparisonResult(results)

            case (.m_getDownloadsForCourse__courseId(let lhsCourseid), .m_getDownloadsForCourse__courseId(let rhsCourseid)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCourseid, rhs: rhsCourseid, with: matcher), lhsCourseid, rhsCourseid, "_ courseId"))
				return Matcher.ComparisonResult(results)

            case (.m_cancelDownloading__courseId_courseIdblocks_blocks(let lhsCourseid, let lhsBlocks), .m_cancelDownloading__courseId_courseIdblocks_blocks(let rhsCourseid, let rhsBlocks)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCourseid, rhs: rhsCourseid, with: matcher), lhsCourseid, rhsCourseid, "courseId"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsBlocks, rhs: rhsBlocks, with: matcher), lhsBlocks, rhsBlocks, "blocks"))
				return Matcher.ComparisonResult(results)

            case (.m_resumeDownloading, .m_resumeDownloading): return .match

            case (.m_pauseDownloading, .m_pauseDownloading): return .match

            case (.m_deleteFile__blocks_blocks(let lhsBlocks), .m_deleteFile__blocks_blocks(let rhsBlocks)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsBlocks, rhs: rhsBlocks, with: matcher), lhsBlocks, rhsBlocks, "blocks"))
				return Matcher.ComparisonResult(results)

            case (.m_fileUrl__for_blockId(let lhsBlockid), .m_fileUrl__for_blockId(let rhsBlockid)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsBlockid, rhs: rhsBlockid, with: matcher), lhsBlockid, rhsBlockid, "for blockId"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_publisher: return 0
            case let .m_addToDownloadQueue__blocks_blocks(p0): return p0.intValue
            case let .m_getDownloadsForCourse__courseId(p0): return p0.intValue
            case let .m_cancelDownloading__courseId_courseIdblocks_blocks(p0, p1): return p0.intValue + p1.intValue
            case .m_resumeDownloading: return 0
            case .m_pauseDownloading: return 0
            case let .m_deleteFile__blocks_blocks(p0): return p0.intValue
            case let .m_fileUrl__for_blockId(p0): return p0.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_publisher: return ".publisher()"
            case .m_addToDownloadQueue__blocks_blocks: return ".addToDownloadQueue(blocks:)"
            case .m_getDownloadsForCourse__courseId: return ".getDownloadsForCourse(_:)"
            case .m_cancelDownloading__courseId_courseIdblocks_blocks: return ".cancelDownloading(courseId:blocks:)"
            case .m_resumeDownloading: return ".resumeDownloading()"
            case .m_pauseDownloading: return ".pauseDownloading()"
            case .m_deleteFile__blocks_blocks: return ".deleteFile(blocks:)"
            case .m_fileUrl__for_blockId: return ".fileUrl(for:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func publisher(willReturn: AnyPublisher<Int, Never>...) -> MethodStub {
            return Given(method: .m_publisher, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getDownloadsForCourse(_ courseId: Parameter<String>, willReturn: [DownloadData]...) -> MethodStub {
            return Given(method: .m_getDownloadsForCourse__courseId(`courseId`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func fileUrl(for blockId: Parameter<String>, willReturn: URL?...) -> MethodStub {
            return Given(method: .m_fileUrl__for_blockId(`blockId`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func publisher(willProduce: (Stubber<AnyPublisher<Int, Never>>) -> Void) -> MethodStub {
            let willReturn: [AnyPublisher<Int, Never>] = []
			let given: Given = { return Given(method: .m_publisher, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (AnyPublisher<Int, Never>).self)
			willProduce(stubber)
			return given
        }
        public static func getDownloadsForCourse(_ courseId: Parameter<String>, willProduce: (Stubber<[DownloadData]>) -> Void) -> MethodStub {
            let willReturn: [[DownloadData]] = []
			let given: Given = { return Given(method: .m_getDownloadsForCourse__courseId(`courseId`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([DownloadData]).self)
			willProduce(stubber)
			return given
        }
        public static func fileUrl(for blockId: Parameter<String>, willProduce: (Stubber<URL?>) -> Void) -> MethodStub {
            let willReturn: [URL?] = []
			let given: Given = { return Given(method: .m_fileUrl__for_blockId(`blockId`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (URL?).self)
			willProduce(stubber)
			return given
        }
        public static func addToDownloadQueue(blocks: Parameter<[CourseBlock]>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_addToDownloadQueue__blocks_blocks(`blocks`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func addToDownloadQueue(blocks: Parameter<[CourseBlock]>, willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_addToDownloadQueue__blocks_blocks(`blocks`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
        public static func cancelDownloading(courseId: Parameter<String>, blocks: Parameter<[CourseBlock]>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_cancelDownloading__courseId_courseIdblocks_blocks(`courseId`, `blocks`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func cancelDownloading(courseId: Parameter<String>, blocks: Parameter<[CourseBlock]>, willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_cancelDownloading__courseId_courseIdblocks_blocks(`courseId`, `blocks`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
        public static func resumeDownloading(willThrow: Error...) -> MethodStub {
            return Given(method: .m_resumeDownloading, products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func resumeDownloading(willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_resumeDownloading, products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func publisher() -> Verify { return Verify(method: .m_publisher)}
        public static func addToDownloadQueue(blocks: Parameter<[CourseBlock]>) -> Verify { return Verify(method: .m_addToDownloadQueue__blocks_blocks(`blocks`))}
        public static func getDownloadsForCourse(_ courseId: Parameter<String>) -> Verify { return Verify(method: .m_getDownloadsForCourse__courseId(`courseId`))}
        public static func cancelDownloading(courseId: Parameter<String>, blocks: Parameter<[CourseBlock]>) -> Verify { return Verify(method: .m_cancelDownloading__courseId_courseIdblocks_blocks(`courseId`, `blocks`))}
        public static func resumeDownloading() -> Verify { return Verify(method: .m_resumeDownloading)}
        public static func pauseDownloading() -> Verify { return Verify(method: .m_pauseDownloading)}
        public static func deleteFile(blocks: Parameter<[CourseBlock]>) -> Verify { return Verify(method: .m_deleteFile__blocks_blocks(`blocks`))}
        public static func fileUrl(for blockId: Parameter<String>) -> Verify { return Verify(method: .m_fileUrl__for_blockId(`blockId`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func publisher(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_publisher, performs: perform)
        }
        public static func addToDownloadQueue(blocks: Parameter<[CourseBlock]>, perform: @escaping ([CourseBlock]) -> Void) -> Perform {
            return Perform(method: .m_addToDownloadQueue__blocks_blocks(`blocks`), performs: perform)
        }
        public static func getDownloadsForCourse(_ courseId: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_getDownloadsForCourse__courseId(`courseId`), performs: perform)
        }
        public static func cancelDownloading(courseId: Parameter<String>, blocks: Parameter<[CourseBlock]>, perform: @escaping (String, [CourseBlock]) -> Void) -> Perform {
            return Perform(method: .m_cancelDownloading__courseId_courseIdblocks_blocks(`courseId`, `blocks`), performs: perform)
        }
        public static func resumeDownloading(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_resumeDownloading, performs: perform)
        }
        public static func pauseDownloading(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_pauseDownloading, performs: perform)
        }
        public static func deleteFile(blocks: Parameter<[CourseBlock]>, perform: @escaping ([CourseBlock]) -> Void) -> Perform {
            return Perform(method: .m_deleteFile__blocks_blocks(`blocks`), performs: perform)
        }
        public static func fileUrl(for blockId: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_fileUrl__for_blockId(`blockId`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

