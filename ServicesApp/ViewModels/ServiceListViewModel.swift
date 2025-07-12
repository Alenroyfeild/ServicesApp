//
//  ServiceListViewModel.swift
//  ServicesApp
//
//  Created by Balaji Royal on 12/07/25.
//


import Foundation
import Combine

class ServiceListViewModel: ObservableObject {
    @Published var allServices: [Service] = []
    @Published var searchText: String = ""
    @Published var filteredServices: [Service] = []

    private var cancellables = Set<AnyCancellable>()

    init() {
        loadServices()

        $searchText
            .debounce(for: .milliseconds(300), scheduler: RunLoop.main)
            .removeDuplicates()
            .combineLatest($allServices)
            .map { (searchText, services) in
                guard !searchText.isEmpty else { return services }
                return services.filter {
                    $0.title.localizedCaseInsensitiveContains(searchText) ||
                    $0.customerName.localizedCaseInsensitiveContains(searchText) ||
                    $0.description.localizedCaseInsensitiveContains(searchText)
                }
            }
            .assign(to: &$filteredServices)
    }

    func loadServices() {
        // Simulate network call
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allServices = MockServiceProvider.mockServices
            self.filteredServices = self.allServices
        }
    }

    func refresh() async {
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        await MainActor.run {
            loadServices()
        }
    }
}
