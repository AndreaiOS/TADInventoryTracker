//
//  TADInventoryTrackerApp.swift
//  TADInventoryTracker
//
//  Created by Andrea Murru on 21/11/2023.
//

import SwiftUI

@main
struct TADInventoryTrackerApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

  var body: some Scene {
    WindowGroup {
        NavigationStack {
            InventoryListView()
        }
    }
  }
}
