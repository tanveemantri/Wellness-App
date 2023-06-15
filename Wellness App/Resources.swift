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
                    .padding([.top, .leading, .bottom], 00.0)
                    .frame(height: 100)
                
                Text("General Mental Health Resources:")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding(.bottom, 170.0)
                    .frame(width: 500.0)
                    .cornerRadius(25)
                
                Text("Mental Health America: https://mhanational.org/")
                    .padding(.bottom, 300.0)
                    .frame(width: 300.0, height: 50)

                Text("Suicide & Crisis Lifeline: https://988lifeline.org or text 988")
                    .padding(.bottom, 300.0)
                    .frame(width: 300.0,height: 50)

                Text("Disaster Distress Helpline: https://www.samhsa.gov/disaster-preparedness")
                    .padding(.bottom, 300.0)
                    .frame(width: 300.0,height: 50)

                Text("CDC Tools and Resources: https://www.cdc.gov/mentalhealth/tools-resources/index.htm")                    .padding(.bottom, 300.0)
                    .frame(width: 300.0,height: 50)
            }
        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
