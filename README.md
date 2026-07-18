# ServicesApp

ServicesApp is a focused SwiftUI list/detail sample for browsing scheduled service jobs. It uses local fixture data so reviewers can inspect the UI and state flow without API keys or backend setup.

## What it demonstrates

- `NavigationStack` list-to-detail navigation
- MVVM separation with an `ObservableObject` view model
- Combine search with a 300 ms debounce and duplicate suppression
- Pull-to-refresh using Swift concurrency
- Reusable rows and status badges
- MapKit presentation for a service location
- Dynamic Type-friendly native text styles and system colors

## Data flow

```text
MockServiceProvider
        ↓
ServiceListViewModel
        ├── all services
        ├── debounced search
        └── filtered services
                ↓
ServiceListView → ServiceDetailView → ServiceMapView
```

The two-second loading and refresh delays intentionally simulate asynchronous data work; no network request is made.

## Requirements

- iOS 16+
- Xcode 14+
- SwiftUI, Combine, and MapKit (no third-party dependencies)

## Run

1. Open `ServicesApp.xcodeproj`.
2. Select an iOS simulator or device.
3. Build and run.

Try searching by service title, customer, or description, then open a row to review the reusable detail sections and map.

## Current scope

This repository is intentionally small. It does not include persistence, a production API, offline support, or automated tests. Natural next steps would be protocol-based data injection and view-model tests—not additional features solely for demo size.
