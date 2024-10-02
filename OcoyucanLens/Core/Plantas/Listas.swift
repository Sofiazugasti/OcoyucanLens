//
//  Listas.swift
//  OcoyucanLens
//
//  Created by sofia zugasti on 05/09/24.
//

import SwiftUI

struct Listas: View {
    let plantName: String
    let plantPoints: String
    let plantImage: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 162, height: 200)
                .foregroundStyle(Color(Colors.lightGreen))
                .shadow(radius: 5)
                .overlay(
                    VStack(spacing:5) {
                        HStack(spacing: 30){
                                Text(plantName)
                                    .font(TextStyles.sub_title)
                                    .foregroundStyle(Color(Colors.mainGreen))

                            HStack(spacing: 2){
                                Text(plantPoints)
                                    .foregroundStyle(Color(Colors.mainGreen))
                                    .font(TextStyles.small_body)
                                
                                Image(systemName: "star.circle.fill")
                                    .foregroundStyle(Color(Colors.mainGreen))
                                    .imageScale(.small)
                            }
                        }
                    
                        
                        ImageView(imageName: "img1", width: 115 , height: 110)
                            .padding(5)
              
                        NavigationLink(destination: VerDetalles()) {
                            Text("Ver detalles")
                                .font(TextStyles.small_body)
                                .frame(width: 95, height: 25)
                                .foregroundColor(Colors.lightGreen)
                                .roundedBorder(borderColor: Colors.mainGreen, backgroundColor: Colors.mainGreen)
                        }
                        
                    }
                )
        }
    }
}

struct Listas_Previews: PreviewProvider {
    static var previews: some View {
        Listas(plantName: "Rosa", plantPoints: "25", plantImage: "img1")
    }
}


