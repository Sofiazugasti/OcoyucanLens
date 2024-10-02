//
//  Inicio.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 25/09/24.
//

import SwiftUI

struct Inicio: View {
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

#Preview {
    Inicio()
    
}
