//
//  TextExt.swift
//  CTSOPallet
//
//  Created by Amran Abdullahi on 4/2/25.
//

import Foundation
import SwiftUI

extension Text {
    
    func hospFont() -> some View {
        
        self.font(.custom("Blacksword", size: 40))
            .bold()
    }
    func Body() -> some View {
        
        self.font(.custom("LEMONMILK-RegularItalic", size: 10))
            .bold()
    }
    
    func ohioFont() -> some View {
        self.font(.custom("LEMONMILK-RegularItalic", size: 25))
    }
    
    func ctsoFont() -> some View {
        self.font(.custom("LEMONMILK-Regular", size: 20))
    }
    
    func subTitleFont() -> some View {
        self.font(.custom("serif", size: 15))
    }

}

extension Color {
    public static var OHBlue: Color {
        return Color(UIColor(red: 43/255, green: 63/255, blue: 112/255, alpha: 1.0))
        
        // header color
        
    }
    
    public static var OHBrown: Color {
        return Color(UIColor(red: 168/255, green: 136/255, blue: 66/255, alpha: 1.0))
        
        // body text color
        
    }
}

#Preview {
    Text(verbatim: "Header")
}
