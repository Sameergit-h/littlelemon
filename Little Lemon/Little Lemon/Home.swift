//
//  Home.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{
            Menu()
                .tabItem({
                    Label("Menu", systemImage: "house")})
            UserProfile()
                .tabItem({
                    Label("Profile", systemImage: "person.crop.circle")})
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
