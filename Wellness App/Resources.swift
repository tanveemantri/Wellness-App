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
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            Text("Resources")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            padding()
        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
