//
//  SlidingTextViewwww.swift
//  Animation2
//
//  Created by Amran Abdullahi on 2/26/25.
//

import SwiftUI
struct TextView: View {
    
    @State var isAnimating = false
    @State var visibleLines: Int = 0
    let textLines: [String]
    let animationDuration: Double
    let fadeIn: Bool
    var body: some View {
        VStack {
            ForEach(0..<textLines.count, id: \.self) { index in
                Text(textLines[index])
                    .offset(x: isAnimating ? 0 : -UIScreen.main.bounds.width)
                    .opacity(fadeIn ? (isAnimating ? 1 : 0) : 1)
                    .animation(.smooth.delay(Double(index) * animationDuration), value: isAnimating)
            }
            if visibleLines >= textLines.count {
                Text("Next")
                    .foregroundColor(Color.blue)

            }
            
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                isAnimating.toggle()
                visibleLines = textLines.count
                
            
        }
    }
        
    }
}

#Preview {
    TextView(textLines: ["NEW", "YORK", "CITY"], animationDuration: 1.0, fadeIn: true)
}
