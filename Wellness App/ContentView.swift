//
//  ContentView.swift
//  Wellness App
//
//  Created by Tanvee Mantri on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Wellness")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
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
            
            Spacer()
        }
        .padding()
    }
}

struct HomeButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.blue)
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

