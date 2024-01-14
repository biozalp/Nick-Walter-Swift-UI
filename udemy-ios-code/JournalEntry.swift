//
//  JournalEntry.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

//let journalEntries: [JournalEntry] = [
//    JournalEntry(title: "Woke up feeling shitty", text: "I hate my sleep quality. I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.I hate my sleep quality.", rating: 3, date: Date()),
//    JournalEntry(title: "Had an awesome breakfast", text: "I love my wife", rating: 5, date: Date()),
//    JournalEntry(title: "Started working on Swift", text: "I am gonna be rich", rating: 4, date: Date())
//]
