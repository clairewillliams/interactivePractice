//
//  ContentView.swift
//  interactivePractice
//
//  Created by Claire Williams on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    @State private var titleText = "Hello! What is your name?"
    
    @State private var presentAlert1 = false
    
    @State private var presentAlert2 = false
    
    var body: some View {
        VStack {
            VStack (spacing: 50) {
                Text(titleText)
                    .font(.title)
            
                TextField("", text: $name)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .border(Color.gray, width: 1)
                
                Button("Submit!") {
                    titleText = "Hello \(name)!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
               
                Text("Pick your favorite pet!")
                    .font(.title2)
            }
            .padding()
            
            HStack(spacing: 75){
                
                Button("🐶") {
                    presentAlert1 = true
                }
                .font(.title)
                
                Button("🐱") {
                    presentAlert2 = true
                }
                .font(.title)
                
            }
            
            .padding(30)
            
            .alert("Ok \(name), I guess dogs are good too!", isPresented: $presentAlert1, actions: {})
            
            .alert("Correct answer \(name)! Cats are the best!", isPresented: $presentAlert2, actions: {})
        }
        .background(Color.pink)
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
}
