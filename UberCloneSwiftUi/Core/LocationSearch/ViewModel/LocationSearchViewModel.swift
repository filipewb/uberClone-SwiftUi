//
//  LocationSearchViewModel.swift
//  UberCloneSwiftUi
//
//  Created by wolf on 25/03/23.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
  
  // MARK: - Properties
  
  @Published var results = [MKLocalSearchCompletion]()
  @Published var selectedLocation: String?
  
  private var searchCompleter = MKLocalSearchCompleter()
  var queryFragment: String = "" {
    didSet {
      searchCompleter.queryFragment = queryFragment
    }
  }
  
  override init() {
    super.init()
    searchCompleter.delegate = self
    searchCompleter.queryFragment = queryFragment
  }
  
  // MARK: - Helpers
  
  func selectLocation(_ location: String) {
    self.selectedLocation = location
  }
}

// MARK: - MKLocalSearchCompleterDelegate

extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
  func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
    self.results = completer.results
  }
}
