//
//  ContentView.swift
//  CTSOPallet
//
//  Created by Amran Abdullahi on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            //logo text
            VStack(spacing: 5) {
                
                Text("OHIO")
                    .ohioFont()
                    .foregroundStyle(Color.OHBrown)

                
                Text("Hospitality")
                    .hospFont()
                    .foregroundStyle(Color.OHBlue)
              
                
                Text("CTSO")
                    .ctsoFont()
                    .foregroundStyle(Color.OHBrown)

                
                Text("Career Technical Student Organization")
                    .subTitleFont()
                    .foregroundStyle(Color.OHBlue)

            
            }
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
