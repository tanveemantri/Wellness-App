//
//  Affirmations.swift
//  Wellness App
//
//  Created by Tanvee Mantri on 6/14/23.
//

import SwiftUI

struct Affirmations: View {
    @State private var affirmations: [String] = [
        "I deserve to be treated well.",
        "I am a person that I can admire.",
        "I am stronger than my current situation.",
        "I focus on what I can control."
    ]
    
    var body: some View {
        ZStack {
            (Color("Cyan"))
                .ignoresSafeArea()
            VStack {
                
                Text("Affirmations")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                
                VStack(spacing: 20) {
                    ForEach(affirmations, id: \.self) { affirmation in
                        Text(affirmation)
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        
                    }
                }
                
                Button(action: generateNewAffirmations) {
                    Text("New Affirmations")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
    private func generateNewAffirmations() {
        // Generate new affirmations and replace the existing ones
        let newAffirmations = [
            "I am confident in my abilities.",
            "I am worthy of success.",
            "I am surrounded by positive and supportive people.",
            "I am in control of my own happiness."
        ]
        
        affirmations = newAffirmations
    }
}

struct Affirmations_Previews: PreviewProvider {
    static var previews: some View {
        Affirmations()
    }
}
