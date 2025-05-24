//
//  ClassTrackrApp.swift
//  ClassTrackr
//
//  Created by Andrius Shiaulis on 24.05.2025.
//

import SwiftUI

@main
struct ClassTrackrApp: App {
    let persistenceController = PersistenceController.shared
    let model = Model()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
