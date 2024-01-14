//
//  ContentView.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//  This project is a follow along code of mine learning SwiftUI via the Udemy lecture of Nick Walter.
//

import SwiftUI

struct JournalEntryListView: View {
    
    var body: some View {
        List{
            Text("Merhaba cnm")
            Circle()
                .frame(height:40)
            Text("mmmm")
        }
        
    }
}


#Preview {
    JournalEntryListView()
}
