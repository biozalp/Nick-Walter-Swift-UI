//
//  JournalEntryRowView.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                Text(rowJournalEntry.title).bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)

            }
            HStack{
                Text(rowJournalEntry.date, style: .date)
                Text("-")
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
                    .lineLimit(1)
                    .foregroundStyle(.secondary)

            }
        }
       
    }
}

#Preview {
    JournalEntryRowView(rowJournalEntry: JournalEntry(title: "Woke up feeling shitty", text: "I hate my sleep quality. I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.", rating: 3, date: Date()))
}
