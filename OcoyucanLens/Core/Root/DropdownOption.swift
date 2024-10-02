//
//  DropdownOption.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 01/10/24.
//

import SwiftUI

struct DropdownOption: View{
    @State var chosenFilter = "Filtros"
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
                    chosenFilter = "Biblioteca de fauna"
                }, label: {
                    HStack{
                        Text("Biblioteca de fauna")
                        if chosenFilter == "Biblioteca de fauna" {
                            Image(systemName: "checkmark")
                                .foregroundColor(Colors.mainGreen)
                        }
                    }
                })
            } label: {
                Label {
                    Text(chosenFilter)
                        .font(TextStyles.body)
                        .foregroundColor(Colors.lightGreen)
                } icon: {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(Colors.lightGreen)
                }
                .padding(.horizontal, 50)
                .frame(width: 300, height: 35)
                .roundedBorder(borderColor: Colors.lightGreen, backgroundColor: Colors.mainGreen)
            }

        }
    }
}


struct DropdownOption_Previews: PreviewProvider{
    static var previews: some View{
        DropdownOption()
    }
}
