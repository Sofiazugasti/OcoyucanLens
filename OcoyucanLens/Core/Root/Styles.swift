//
//  Styles.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 24/09/24.
//

import SwiftUI

struct TextStyles {
    static let logo_title = Font.custom("Verbatim-ExtendedThin", size: 30)
    static let body = Font.custom("Avenir", size: 18)
    static let title = Font.custom("Avenir-Black", size: 25)
    static let sub_title = Font.custom("Avenir-Black", size: 20)
    static let small_body = Font.custom("Avenir", size: 12)

}

struct Colors {
    static let mainGreen = Color(red: 83/255, green: 134/255, blue: 86/255)
    static let lightGreen = (Color(red: 234/255, green: 244/255, blue: 202/255))
}

struct RoundedBorderModifier: ViewModifier {
    let cornerRadius: CGFloat
    let borderColor: Color
    let backgroundColor: Color

    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor))
        
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    . stroke(borderColor))
    }
}

extension View {
    func roundedBorder(cornerRadius: CGFloat = 50, borderColor: Color = Color(red: 83/255, green: 134/255, blue: 86/255), backgroundColor:Color = Color(red: 234/255, green: 244/255, blue: 202/255)) -> some View {
        self.modifier(RoundedBorderModifier(cornerRadius: cornerRadius, borderColor: borderColor, backgroundColor: backgroundColor))
    }
}

struct CustomButton: View {
    let action: () -> Void
    let color: Color


    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(color)
            }
        }
    }
}

struct ImageView: View {
    let imageName: String
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: width, height: height)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 5)
    }
}


