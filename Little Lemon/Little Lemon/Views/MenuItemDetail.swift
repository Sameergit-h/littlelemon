//
//  FoodDetail.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 23/09/2023.
//

import SwiftUI

struct MenuItemDetail: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    let  foodList : Dish
    var body: some View {
        VStack{
            
            Header_section()
            AsyncImage(url: URL(string: foodList.image ?? "")){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 400, height: 200)
            
            Text (foodList.title ?? "")
                .font(.title)
            Text(foodList.descriptionText ?? "")
                .font(.body)
            
            Spacer()
            
            Button(action:
                    {},
                   label: {
                        Text("Confirm Order")
            })
            
        }
    }
}


