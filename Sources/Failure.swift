public protocol FailureType: ErrorType {
	var file: String { get }
	var line: UInt { get }
	var function: String { get }

	var reason: String { get }
}

public struct Failure : FailureType {
	public let file: String
	public let line: UInt
	public let function: String

	public let reason: String

	public init(reason: String = "-", function: String = __FUNCTION__, file: String = __FILE__, line: UInt = __LINE__) {
		self.reason = reason
		self.function = function
		self.file = file
		self.line = line
	}
}

