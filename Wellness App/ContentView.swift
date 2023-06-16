//
//  ContentView.swift
//  Wellness App
//
//  Created by Tanvee Mantri on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                (Color("Turquoise"))
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("Wellness")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Tan")).padding(.bottom)
                    Text("Wellness is an app that serves as a helpful resource in order to assist users with mental health struggles. Our app utilizes journaling, affirmations, and important resources to help users.")
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .background(Color("Tan"))
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    NavigationLink(destination: JournalView()) {
                        HomeButton(title: "Journal")
                    }
                   
                
                    NavigationLink(destination: Affirmations()) {
                        HomeButton(title: "Affirmations")
                    }
                    
                    NavigationLink(destination: ResourcesView()) {
                        HomeButton(title: "Resources")
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(false)

                    Spacer()
                }
                .padding()
            }
        }
        
    }
}

struct HomeButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            .frame(width: 200, height: 50)
            .background(Color("Tan"))
            .cornerRadius(25)
            .padding()
    }
}


struct ResourcesView: View {
    var body: some View {
        Text("Resources Page")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

