//
//  ServiceRowView.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//


import SwiftUI

struct ServiceRowView: View {
    let service: Service
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .top) {
                Text(service.title)
                    .font(.headline)
                Spacer()
                Circle()
                    .fill(service.status.color)
                    .frame(width: 8, height: 8)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 8) {
                    Image("user")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 16, height: 16)
                        .foregroundColor(.blue)
                    Text(service.customerName)
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
                
                HStack(spacing: 8) {
                    Image("file-text")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 16, height: 16)
                        .foregroundColor(.blue)
                        .padding(.bottom)
                    
                    Text(service.description)
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
            }
            
            HStack(spacing: 8) {
                StatusBadge(service: service)
                
                Spacer()
                
                Text(service.date.customFormat)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
        }
        .padding(12)
    }
}

//// MARK: - Preview
//struct ServiceListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ServiceListView()
//    }
//}
