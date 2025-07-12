//
//  ServiceDetailView.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//

import SwiftUI
import MapKit

struct ServiceDetailView: View {
    let service: Service
    
    var body: some View {
        ScrollView {
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                ServiceMapView(coordinate: service.coordinate)
            
                HStack() {
                    Text(service.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    Spacer()
                    StatusBadge(service: service)
                }
                
                detailRow(iconName: "user", title: "Customer", value: service.customerName)
                detailRow(iconName: "file-text", title: "Description", value: service.description)
                detailRow(iconName: "clock", title: "Scheduled Time", value: service.date.customFormat)
                detailRow(iconName: "map-pin", title: "Location", value: service.location)
                detailRow(iconName: "message", title: "Service Notes", value: service.notes)
            }
            .padding()
        }
        .navigationTitle("Service Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    private func detailRow(iconName: String, title: String, value: String) -> some View {
        HStack(alignment: .top, spacing: 12) {
            Image(iconName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(.blue)
                .frame(width: 24, height: 24)
                .padding(.top, 2)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                
                Text(value)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
        }
    }

}

// MARK: - Preview
struct ServiceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ServiceDetailView(service: sampleService)
        }
    }
    
    static var sampleService: Service {
        Service(
            id: UUID(),
            title: "Office Space Revamp",
            customerName: "XYZ Industries",
            description: "Transform your office with sleek, contemporary furnishings.",
            status: .planned,
            date: Date(),
            location: "Maple Avenue, Seattle, WA 98101",
            coordinate: CLLocationCoordinate2D(latitude: 47.6062, longitude: -122.3321),
            notes: "Ensure all furniture is removed before the renovation begins. Confirm the layout with the client and finalize color schemes for walls and furnishings.",
            imageName: nil // You can replace with asset name if needed
        )
    }
}
