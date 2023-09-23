//
//  FoodItems.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 23/09/2023.
//

import SwiftUI



struct FoodItems: View {
    let foodList : Dish
    
    var body: some View {
        VStack (alignment: .leading){
            
            Text (foodList.title ?? "")
                .font(.headline)
                .padding(10)
            HStack{
                VStack(alignment: .leading){
                    Text (foodList.descriptionText ?? "")
                        .font(.caption)
                        .padding(10)
                    Text ("$ \(foodList.price ?? "")")
                        .bold()
                        .padding(10)
                }
                Spacer()
                AsyncImage(url: URL(string: foodList.image ?? "")){ image in
                    image.resizable()
                        .scaledToFill()
                        
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 70, height: 80)
                
            }
        }
    }
}


