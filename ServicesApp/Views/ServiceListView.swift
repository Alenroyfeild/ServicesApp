//
//  ServiceListView.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//


import SwiftUI

struct ServiceListView: View {
    @StateObject private var viewModel = ServiceListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                List {
                    ForEach(viewModel.filteredServices) { service in
                        ZStack {
                            NavigationLink(destination: ServiceDetailView(service: service)) {
                                EmptyView()
                            }
                            .opacity(0)
                            
                            ServiceRowView(service: service)
                                .padding(.vertical, 8)
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color(.systemBackground))
                                        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.gray.opacity(0.2), lineWidth: 1) // ✅ 1pt border
                                )
                                .padding(.horizontal, 8)
                        }
                        .listRowSeparator(.hidden)
                    }
                }
                .listStyle(PlainListStyle())
                .refreshable {
                    await viewModel.refresh()
                }
            }
            .navigationTitle("Services")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $viewModel.searchText, prompt: "Search")
        }
    }
}

// MARK: - Preview
struct ServiceListView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceListView()
    }
}


