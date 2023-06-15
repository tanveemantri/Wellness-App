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
                    Text("Wellness is an app that serves as a helpful resource in order to assist its viewers in helping with mental health struggles, such has stress and anxiety management. According to Mental Health Disorder Statistics,  “An estimated 26% of Americans ages 18 and older – about 1 in 4 adults – suffers from a diagnosable mental disorder in a given year” (John Hopkins Medicine). When looking at these statistics, we decided to create our app and design it to improve the mental health for those who struggle with it by helping with journaling, utilizing affirmations, and providing resources.")
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .background(Color("Tan"))
                        .cornerRadius(25)
                    
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

