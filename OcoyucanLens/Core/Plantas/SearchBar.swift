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
                    .foregroundColor(Colors.lightGreen)
                VStack(alignment: .leading, spacing:2) {
                    Text("Alguna fauna en especial?")
                        .font(TextStyles.body)
                        .fontWeight(.bold)
                        .foregroundColor(Colors.lightGreen)
                }
            }
            .frame(width: 370, height: 60)
            .roundedBorder(borderColor: Colors.lightGreen, backgroundColor: Colors.mainGreen)
            
        }
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
