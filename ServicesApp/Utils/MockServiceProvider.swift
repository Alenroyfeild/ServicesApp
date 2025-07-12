//
//  MockServiceProvider.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//

import Foundation
import CoreLocation

struct MockServiceProvider {
    static let mockServices: [Service] = [
        Service(id: UUID(), title: "Office Space Revamp", customerName: "XYZ Industries", description: "Transform your office with sleek, contemporary furnishings.", status: .planned, date: Date(), location: "Maple Avenue, Seattle, WA 98101", coordinate: CLLocationCoordinate2D(latitude: 47.6062, longitude: -122.3321), notes: "Ensure all furniture is removed before the renovation begins.", imageName: "office-1"),
        
        Service(id: UUID(), title: "Modern Workspace Makeover", customerName: "Acme Corp", description: "Revitalize your workspace with stylish, modern decor.", status: .scheduled, date: Date().addingTimeInterval(1800), location: "1st Ave, San Francisco, CA", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), notes: "Review lighting plans with client.", imageName: "office-2"),
        
        Service(id: UUID(), title: "Contemporary Office Transformation", customerName: "Beta Solutions", description: "Chic, innovative designs to spark inspiration.", status: .confirmed, date: Date().addingTimeInterval(3600), location: "Downtown LA, CA", coordinate: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437), notes: "Use warm tones and open space layout.", imageName: "office-3"),
        
        Service(id: UUID(), title: "Modern Workspace Overhaul", customerName: "Alpha Innovations", description: "Stylish, cutting-edge workspace upgrade.", status: .approved, date: Date().addingTimeInterval(7200), location: "Broadway St, NY", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), notes: "Finalize material selection for flooring.", imageName: "office-4"),
        
        Service(id: UUID(), title: "Revamp Your Workspace Today", customerName: "Innovative Solutions Inc.", description: "Fresh, modern office layout designs.", status: .planned, date: Date().addingTimeInterval(10800), location: "Market St, Philadelphia, PA", coordinate: CLLocationCoordinate2D(latitude: 39.9526, longitude: -75.1652), notes: "Include breakout zones in layout.", imageName: "office-5"),
        
        Service(id: UUID(), title: "Eco Office Setup", customerName: "GreenTech", description: "Sustainable and eco-friendly workspace setup.", status: .scheduled, date: Date().addingTimeInterval(86400), location: "Fremont, CA", coordinate: CLLocationCoordinate2D(latitude: 37.5483, longitude: -121.9886), notes: "Use recyclable furnishings and plants.", imageName: "office-6"),
        
        Service(id: UUID(), title: "Executive Lounge Upgrade", customerName: "Prime Associates", description: "Luxury upgrade to executive lounges.", status: .confirmed, date: Date().addingTimeInterval(172800), location: "Madison Ave, NY", coordinate: CLLocationCoordinate2D(latitude: 40.7612, longitude: -73.9826), notes: "Add high-end seating and beverage stations.", imageName: "office-7"),
        
        Service(id: UUID(), title: "Startup Space Revamp", customerName: "LaunchPad Inc.", description: "Open and dynamic space tailored for startups.", status: .approved, date: Date().addingTimeInterval(-86400), location: "Mission St, SF", coordinate: CLLocationCoordinate2D(latitude: 37.7599, longitude: -122.4148), notes: "Use modular furniture for flexibility.", imageName: "office-8"),
        
        Service(id: UUID(), title: "Remote Work Pods Installation", customerName: "CloudFlow", description: "Private pods to enable remote work culture.", status: .confirmed, date: Date().addingTimeInterval(432000), location: "Palo Alto, CA", coordinate: CLLocationCoordinate2D(latitude: 37.4419, longitude: -122.1430), notes: "Confirm noise-insulation quality.", imageName: "office-9"),
        
        Service(id: UUID(), title: "Innovation Lab Setup", customerName: "FutureX", description: "Create a space to fuel innovation and experimentation.", status: .scheduled, date: Date().addingTimeInterval(259200), location: "Boston, MA", coordinate: CLLocationCoordinate2D(latitude: 42.3601, longitude: -71.0589), notes: "Tech setup with whiteboard walls.", imageName: "office-10")
    ]
}
