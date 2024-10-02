//
//  PlantsList.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 05/09/24.
//

import SwiftUI

struct PlantsList: View {
    let columns = [
        GridItem(.flexible(), spacing:0),
        GridItem(.flexible(), spacing:0)
        ]
    // se definene que hay dos columnas con poner dos GridItems
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(Colors.mainGreen)
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        SearchBar()
                        VStack{
                            DropdownOption()
                        }
                        .padding(.leading)
                    }
                    .padding(20)
                    VStack {
                        LazyVGrid(columns: columns, spacing : 20) {
                                           ForEach(0 ... 50, id: \.self) { value in
                                               Listas(plantName: "Rosa", plantPoints: "25", plantImage: "img1")
                                           }
                            }
                        }
                    }
            }
        }
    }
}

struct PlantsList_Previews: PreviewProvider {
    static var previews: some View {
        PlantsList()
    }
}
