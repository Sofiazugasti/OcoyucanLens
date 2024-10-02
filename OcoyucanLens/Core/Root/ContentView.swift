//
//  ContentView.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    // Initializer should be outside the body
    init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("--\(fontName)")
            }
        }
    }

    var body: some View {
        Text("hola")
    }
}




struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
    
}
