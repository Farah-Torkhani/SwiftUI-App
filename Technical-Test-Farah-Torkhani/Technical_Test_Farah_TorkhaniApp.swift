//
//  Technical_Test_Farah_TorkhaniApp.swift
//  Technical-Test-Farah-Torkhani
//
//  Created by Farah Torkhani on 21/2/2024.
//

import SwiftUI

@main
struct Technical_Test_Farah_TorkhaniApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
