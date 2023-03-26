//
//  UberCloneSwiftUiApp.swift
//  UberCloneSwiftUi
//
//  Created by wolf on 25/03/23.
//

import SwiftUI

@main
struct UberCloneSwiftUiApp: App {
  @StateObject var locationViewModel = LocationSearchViewModel()
  
  var body: some Scene {
    WindowGroup {
      HomeView()
        .environmentObject(locationViewModel)
    }
  }
}
