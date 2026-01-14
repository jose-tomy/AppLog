import Foundation

/// A static accessor for logging across the application.
public enum Log {
    /// The underlying logger instance. Defaults to `SystemLogger`.
    public static var logger: LoggerProtocol = SystemLogger()
    
    /// Logs a debug message.
    public static func debug(
        _ message: String,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        logger.log(level: .debug, message: message, file: file, function: function, line: line)
    }
    
    /// Logs an informational message.
    public static func info(
        _ message: String,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        logger.log(level: .info, message: message, file: file, function: function, line: line)
    }
    
    /// Logs a warning message.
    public static func warning(
        _ message: String,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        logger.log(level: .warning, message: message, file: file, function: function, line: line)
    }
    
    /// Logs an error message.
    public static func error(
        _ message: String,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        logger.log(level: .error, message: message, file: file, function: function, line: line)
    }
    
    /// Logs a critical fault message.
    public static func fault(
        _ message: String,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        logger.log(level: .fault, message: message, file: file, function: function, line: line)
    }
}
