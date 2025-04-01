//
//  BasicAnimation.swift
//  AnimationTest
//
//  Created by Amran Abdullahi on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TextView(textLines: ["NEW", "YORK", "CITY"], animationDuration: 1.0, fadeIn: true)
    }
}

#Preview {
    ContentView()
}
