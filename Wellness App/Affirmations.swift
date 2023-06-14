//
//  Affirmations.swift
//  Wellness App
//
//  Created by Tanvee Mantri on 6/14/23.
//

import SwiftUI

struct Affirmations: View {
    var body: some View {
        VStack {
            Text("Affirmations")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding(.vertical)
            Spacer()
            
            Text("I deserve to be treated well.")
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.vertical)
            Spacer()
            
            Text("I am a person that I can admire.")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical)
            Spacer()
            
            Text("I am stronger than my current situation.")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical)
            Spacer()
            Text("I focus on what I can control.")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.vertical)
            
            
            Spacer()
            
        }
    }
    
    struct Affirmations_Previews: PreviewProvider {
        static var previews: some View {
            Affirmations()
        }
    }
}
