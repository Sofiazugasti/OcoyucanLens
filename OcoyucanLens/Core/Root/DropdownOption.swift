//
//  DropdownOption.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 01/10/24.
//

import SwiftUI

struct DropdownOption: View{
    @State private var chosenFilter = "Opciones"
    var body: some View{
        VStack{
            Menu {
                Button(action: {
                    chosenFilter = "Fauna recolectada"
                }, label: {
                        HStack{
                            Text("Fauna recolectada")
                            if chosenFilter == "Fauna recolectada"{
                                Image(systemName:"checkmark")
                                    .foregroundColor(Colors.mainGreen)
                        }
                    }
                })
                Button(action: {
                    chosenFilter = "Toda la fauna"
                }, label: {
                    HStack{
                        Text("Toda de fauna")
                        if chosenFilter == "Biblioteca de fauna" {
                            Image(systemName: "checkmark")
                                .foregroundColor(Colors.mainGreen)
                        }
                    }
                })
            } label: {
                Label {
                    Text(chosenFilter)
                        .font(TextStyles.small_body)
                        .foregroundColor(Colors.mainGreen)
                } icon: {
                    Image(systemName: "chevron.down")
                        .foregroundColor(Colors.mainGreen)
                        .imageScale(.small)
                }
                .padding(.horizontal, 50)
                .frame(width: 250, height: 22)
                .roundedBorder()
            }

        }
    }
}


struct DropdownOption_Previews: PreviewProvider{
    static var previews: some View{
        DropdownOption()
    }
}
