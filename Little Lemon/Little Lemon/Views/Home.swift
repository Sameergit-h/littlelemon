//
//  Home.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//
import Foundation
import SwiftUI
import CoreData

struct Home: View {
    
    let persistence = PersistenceController.shared
    
    @State var showUserProfile : Bool = false
    @State var searchText = ""
    
    var body: some View {
        
        
        ZStack(alignment: .leadingFirstTextBaseline){                NavigationStack{
            
            VStack(alignment: .leading){
                
                Header_section()
                
                //  .background(Color.cyan)
                
                Hero_section()
                    .frame(alignment: .topLeading)
                    
                VStack{
                    //Header_section()
                    TextField("Search...", text: $searchText)
                        .textFieldStyle(.roundedBorder)
                        .foregroundColor(.gray)
                }.padding(20)
                    .background(Color.gray)
                
                Menu()
                    .environment(\.managedObjectContext, persistence.container.viewContext)
            }
            
        }//Navigation
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .navigationBar)
            
        }
    }//body
}//struct

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
