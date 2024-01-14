//
//  JournalDetailView.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//

import SwiftUI

struct JournalDetailView: View {
    
    let journalEntryDetail: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(journalEntryDetail.date, style: .date).bold()
                Text("|")
                Text(String(repeating: "⭐️", count: Int(journalEntryDetail.rating)))

            }
                        
            Text(journalEntryDetail.text)
        }.padding()
        .navigationTitle(journalEntryDetail.title)
    }
}

#Preview {
    JournalDetailView(journalEntryDetail: JournalEntry(title: "Woke up feeling shitty", text: "I hate my sleep quality. ", rating: 3, date: Date()))
}
