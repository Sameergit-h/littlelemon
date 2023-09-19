//
//  Menu.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

import SwiftUI

let checkIsLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn) == true

struct Menu: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @Published var menuItems = [MenuItem] ()
    
    var categories = ["Starters", "Desserts", "Drinks", "Specials"]
    
    
    var body: some View {
        VStack{
            NavigationView{
                VStack(alignment: .leading){
                    Text("Order for Delivery!")
                        .font(.title2)
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(categories) { category in
                                Text(category)
                                    .fixedSize()
                            }
                        }//Stack
                    }//Scrollview
                    List{
                        
                        ForEach(1...6, id: \.self){elementin in
                            Text ("Dish \(elementin)")
                            
                        }
                        
                        //NavigationLink(destination: FoodDetail(menuItem)) {
                        //   FoodItem(menuItem)
                        //  }
                    }//list
                }//VStack
            }//navigation
          //  .searchable(text: $searchText,prompt: "your search placeholder here...")
            
            
        }//Vstack
        .onAppear()
        {
            getMenuData()
        }
    }//body
    
    func getMenuData(){
        let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json"
        let url = URL(string: littleLemonAddress)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request){ data, response, error in
            if let data = data {
                let fullMenu = try? JSONDecoder().decode(MenuList.self, from: data)
                menuItems = fullMenu
            }
        }
        task.resume()
        
    }
    
}//struct

extension String: Identifiable {

    public var id: String {

        self

    }

}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
