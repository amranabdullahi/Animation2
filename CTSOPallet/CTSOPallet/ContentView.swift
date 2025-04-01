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
            Text("Header")
                .foregroundStyle(.sampleBlue)
                .font(Font.custom("myFont", size: 40))
//                .foregroundColor(UIColor.sampleBlue)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet lorem sit amet hendrerit porta. Fusce posuere libero sed nunc ullamcorper, nec condimentum metus varius. Vivamus massa nisi, tempus sed mi sed, euismod porta nisl. Etiam ultricies magna a diam gravida fringilla. Suspendisse potenti. Pellentesque condimentum tempor ex, ac accumsan nunc elementum ac.")
                .foregroundStyle(.sampleBrown)
                .font(.body)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
