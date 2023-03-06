//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Ammar on 2023-03-06.
//

import Foundation

extension Date {
    // Just an arbitrary date range allowed
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
