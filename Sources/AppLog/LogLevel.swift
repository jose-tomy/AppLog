import Foundation

/// Defines the severity level of a log message.
public enum LogLevel: String {
    /// Use for verbose debug information.
    case debug
    /// Use for general informational messages.
    case info
    /// Use for warning messages that indicate a potential problem.
    case warning
    /// Use for error messages that indicate a failure.
    case error
    /// Use for critical system failures.
    case fault
}
