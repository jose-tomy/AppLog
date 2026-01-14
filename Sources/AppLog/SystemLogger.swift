import Foundation
import os

/// A logger implementation using Apple's unified logging system (OSLog).
public class SystemLogger: LoggerProtocol {
    private let logger: Logger
    
    /// Initializes a new SystemLogger.
    /// - Parameters:
    ///   - subsystem: The subsystem identifier, typically the bundle identifier.
    ///   - category: The category identifier for grouping logs.
    public init(subsystem: String = Bundle.main.bundleIdentifier ?? "AppLog", category: String = "general") {
        self.logger = Logger(subsystem: subsystem, category: category)
    }
    
    public func log(
        level: LogLevel,
        message: String,
        file: String,
        function: String,
        line: Int
    ) {
        let filename = (file as NSString).lastPathComponent
        let logMessage = "\(message) [\(filename):\(line) \(function)]"
        
        switch level {
        case .debug:
            logger.debug("\(logMessage, privacy: .public)")
        case .info:
            logger.info("\(logMessage, privacy: .public)")
        case .warning:
            logger.warning("\(logMessage, privacy: .public)")
        case .error:
            logger.error("\(logMessage, privacy: .public)")
        case .fault:
            logger.fault("\(logMessage, privacy: .public)")
        }
    }
}
