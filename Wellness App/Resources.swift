//
//  Resources.swift
//  Wellness App
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack {
            (Color("Tan"))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Resources")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                
                Text("General Mental Health Resources.")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(width: 200.0, height: 50)
                    .foregroundColor(Color.white)
                    .cornerRadius(25)
                    .padding()
            }
        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
