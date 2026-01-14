import Foundation

/// Protocol defining the interface for a logger.
public protocol LoggerProtocol {
    /// Logs a message with the specified level and context.
    /// - Parameters:
    ///   - level: The severity level of the log.
    ///   - message: The message to log.
    ///   - file: The file where the log call originated.
    ///   - function: The function where the log call originated.
    ///   - line: The line number where the log call originated.
    func log(
        level: LogLevel,
        message: String,
        file: String,
        function: String,
        line: Int
    )
}
