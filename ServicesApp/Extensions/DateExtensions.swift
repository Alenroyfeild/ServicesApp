//
//  DateExtensions.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//

import Foundation

extension Date {
    var customFormat: String {
        let calendar = Calendar.current
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        
        if calendar.isDateInToday(self) {
            return "Today, \(formatter.string(from: self))"
        } else if calendar.isDateInTomorrow(self) {
            return "Tomorrow, \(formatter.string(from: self))"
        } else if calendar.isDateInYesterday(self) {
            return "Yesterday, \(formatter.string(from: self))"
        } else {
            formatter.dateFormat = "dd/MM/yyyy, h:mm a"
            return formatter.string(from: self)
        }
    }
}
