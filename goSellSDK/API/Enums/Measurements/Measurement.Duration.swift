//
//  Measurement.Duration.swift
//  goSellSDK
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

/// Duration extension to measurement.
public extension Measurement {
    
    /// Duration measurement unit.
    public enum Duration {
        
        /// Seconds.
        case seconds
        
        /// Minutes.
        case minutes
        
        /// Hours.
        case hours
        
        /// Days.
        case days
        
        /// Weeks.
        case weeks
        
        /// Months.
        case months
        
        /// Quarters.
        case quarters
        
        /// Years.
        case years
        
        // MARK: - Private -
        
        private struct Constants {
            
            fileprivate static let seconds  = "seconds"
            fileprivate static let minutes  = "minutes"
            fileprivate static let hours    = "hours"
            fileprivate static let days     = "days"
            fileprivate static let weeks    = "weeks"
            fileprivate static let months   = "months"
            fileprivate static let quarters = "quarters"
            fileprivate static let years    = "years"
            
            @available(*, unavailable) private init() {}
        }
    }
}

// MARK: - InitializableWithString
extension Measurement.Duration: InitializableWithString {
    
    internal init?(string: String) {
        
        switch string {
            
        case Constants.seconds  : self = .seconds
        case Constants.minutes  : self = .minutes
        case Constants.hours    : self = .hours
        case Constants.days     : self = .days
        case Constants.weeks    : self = .weeks
        case Constants.months   : self = .months
        case Constants.quarters : self = .quarters
        case Constants.years    : self = .years
            
        default: return nil

        }
    }
}

// MARK: - CountableCasesEnum
extension Measurement.Duration: CountableCasesEnum {
    
    public static let all: [Measurement.Duration] = [
    
        .seconds,
        .minutes,
        .hours,
        .days,
        .weeks,
        .months,
        .quarters,
        .years
    ]
}

// MARK: - CustomStringConvertible
extension Measurement.Duration: CustomStringConvertible {
    
    public var description: String {
        
        switch self {
            
        case .seconds   : return Constants.seconds
        case .minutes   : return Constants.minutes
        case .hours     : return Constants.hours
        case .days      : return Constants.days
        case .weeks     : return Constants.weeks
        case .months    : return Constants.months
        case .quarters  : return Constants.quarters
        case .years     : return Constants.years
            
        }
    }
}

// MARK: - ProportionalToOrigin
extension Measurement.Duration: ProportionalToOrigin {
    
    internal var inUnitsOfOrigin: Decimal {
        
        switch self {
            
        case .seconds   : return            1.0
        case .minutes   : return           60.0
        case .hours     : return        3_600.0
        case .days      : return       86_400.0
        case .weeks     : return      604_800.0
        case .months    : return    2_592_000.0 // 1 months is considered as 30 days.
        case .quarters  : return    7_776_000.0 // 1 quarter is considered as 3 months.
        case .years     : return   31_536_000.0 // 1 year is considered as 365 days.

        }
    }
}