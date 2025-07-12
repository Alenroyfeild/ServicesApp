//
//  ServiceMapView.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//


import SwiftUI
import MapKit

struct ServiceMapView: View {
    let coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(
            coordinateRegion: .constant(MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )),
            annotationItems: [MapItem(coordinate: coordinate)]
        ) { item in
            MapAnnotation(coordinate: item.coordinate) {
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 36, height: 36)
                        .overlay(
                            Circle()
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )

                    Image("map-pin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                }
                .shadow(radius: 2)
            }
        }
        .frame(height: 200)
        .cornerRadius(16)
    }
}

/// Simple struct for annotation
private struct MapItem: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
