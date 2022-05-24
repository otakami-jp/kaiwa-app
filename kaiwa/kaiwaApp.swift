//
//  kaiwaApp.swift
//  kaiwa
//
//  Created by Rayane guemmoud on 24/05/2022.
//

import SwiftUI

@main
struct kaiwaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
