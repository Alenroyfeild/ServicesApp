//
//  Service.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//

import Foundation
import MapKit
import SwiftUI

enum ServiceStatus: String {
    case planned
    case scheduled
    case confirmed
    case approved
    
    var label: String {
        switch self {
        case .planned: return "Planned"
        case .scheduled: return "Scheduled"
        case .confirmed: return "Confirmed"
        case .approved: return "Approved"
        }
    }
    
    var color: Color {
        switch self {
        case .planned: return Color.blue
        case .scheduled: return Color.green
        case .confirmed: return Color.indigo
        case .approved: return Color.orange
        }
    }
}

struct Service: Identifiable {
    let id: UUID
    let title: String
    let customerName: String
    let description: String
    let status: ServiceStatus
    let date: Date
    let location: String
    let coordinate: CLLocationCoordinate2D
    let notes: String
    let imageName: String?
}
