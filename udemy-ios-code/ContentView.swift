//
//  ContentView.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//  This project is a follow along code of mine learning SwiftUI via the Udemy lecture of Nick Walter.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("bio")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 200,height: 200)
            Text("Berk Ilgar Ozalp")
                .bold()
                .font(.largeTitle)
                .padding()
            Text("Experience")
                .bold()
            Text("Experience")
                .bold()
            Text("Experience")
                .bold()
            Text("Experience")
                .bold()
            Text("Experience")
                .bold()
            
        }
        Spacer()
        
        
    }
}

#Preview {
    ContentView()
}
