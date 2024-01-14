//
//  ContentView.swift
//  udemy-ios-code
//
//  Created by Berk Ilgar Özalp on 14.01.2024.
//  This project is a follow along code of mine learning SwiftUI via the Udemy lecture of Nick Walter.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = ""
    @State var capMode = 1
    
    var body: some View {
        VStack{
            if capMode == 1{
                Text(userText.uppercased())
                    .bold()
                    
            }
            if capMode == 2{
                Text(userText.capitalized)
                    .bold()
            }
            if capMode == 3{
                Text(userText.lowercased())
                    .bold()
            }
            
            
        
            HStack{
                Button(action: {capMode = 1 }){
                    CustomButtonView(title: "All Caps", color: .green)
                    
                }
                Button(action:{capMode = 2}){
                    CustomButtonView(title: "First Letter", color: .green)
                }
                Button(action:{capMode = 3}){
                    CustomButtonView(title: "Lower Case", color: .green)
                }
            }
            .padding()
            
            Spacer()
            
            TextField("Please enter your prompt here", text: $userText)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
