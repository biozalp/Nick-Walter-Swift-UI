//
//  udemy_ios_codeApp.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//

import SwiftUI
import Foundation
import SwiftData

@main
struct udemy_ios_codeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            JournalEntry.self,
        
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    var body: some Scene {
        WindowGroup {
            JournalEntryListView()
        }
        .modelContainer(sharedModelContainer)
    }
}
