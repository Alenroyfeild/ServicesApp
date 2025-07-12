//
//  StatusBadge.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//


import SwiftUI

struct StatusBadge: View {
    let service: Service
    
    var body: some View {
        HStack(spacing: 6) {
            RoundedRectangle(cornerRadius: 2)
                .fill(service.status.color)
                .frame(width: 10, height: 10)
            
            Text(service.status.label)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(service.status.color)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
        .background(service.status.color.opacity(0.15))
        .clipShape(Capsule())
    }
}
