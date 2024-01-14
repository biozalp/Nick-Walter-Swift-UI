//
//  ContentView.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//  This project is a follow along code of mine learning SwiftUI via the Udemy lecture of Nick Walter.
//

import SwiftUI
import SwiftData

struct JournalEntryListView: View {
    @Environment(\.modelContext) private var modelContext
   
    @Query private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournal in
                NavigationLink(destination: JournalDetailView(journalEntryDetail: listedJournal)){
                    JournalEntryRowView(rowJournalEntry: listedJournal)
                }
            }
            .navigationTitle("\(journalEntries.count) Sucuk")
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showCreateView = true
//                        let newJournalEntry =
//                        JournalEntry(title: "Woke up", text: "Shitty Day", rating: 3, date: Date())
//                        modelContext.insert(newJournalEntry)
                    }) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
                
            }
            .sheet(isPresented: $showCreateView){
                CreateJournalEntryView()
            }            
        }
    }
}


#Preview {
    JournalEntryListView()
        .modelContainer(for: JournalEntry.self, inMemory:true)
}
