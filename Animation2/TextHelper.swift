//
//  KIst.swift
//  AnimationInSUI
//
//  Created by Derek Fitzer on 2/26/25.
//

import SwiftUI

enum animationDirection {
    case top, bottom, leading, trailing
}
struct TextHelper: View {

    @State var textToDisplay: [String]

    @State var isAnimating = [false,false,false, false,false,false,false,false,false,false]

    @State var MessageIndex = 0
    @State var myFont: CGFloat
    @State var offsetDistance: CGFloat
    @State var reload: Bool
    @State var direction: animationDirection = .top
    
    var body: some View {
        Spacer()
        ForEach(0..<textToDisplay.count, id: \.self) { index in
            Text(textToDisplay[index])
                .font(.system(size: CGFloat(myFont)))
                .fontWeight(.bold)
                .offset(y: isAnimating[index] ? 0 : offsetDistance)
                .animation(.easeInOut(duration: 0.5)
                    .delay(Double(index) * 0.11), value: isAnimating[index])
          

        }.onAppear{
            for i in 0..<isAnimating.count {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    isAnimating[i] = true
                }
            }
    }
        Spacer()

    }
    func getOffset(for index: Int) -> CGSize {
        switch direction {
        case .top:
            return CGSize(width: 0, height: isAnimating[index] ? 0 : -offsetDistance)
        
        }
    }
}

#Preview {
    TextHelper(textToDisplay: ["A","M","R","A","N"], myFont: 30.5, offsetDistance: -600, reload: true)
}
