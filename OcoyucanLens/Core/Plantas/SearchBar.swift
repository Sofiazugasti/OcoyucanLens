//
//  SearchBar.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 01/10/24.
//
import SwiftUI

struct SearchBar: View {
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "magnifyingglass")
                VStack(alignment: .leading, spacing:2) {
                    Text("Buscar")
                        .font(TextStyles.body)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Colors.mainGreen)
                }
            }
            HStack {
                Image(systemName: "magnifyingglass")
                VStack(alignment: .leading, spacing:2) {
                    Text("")
                        .font(TextStyles.body)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Colors.mainGreen)
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        VerDetalles()
    }
}
