//
//  Buttons_style.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 20/09/2023.
//

import SwiftUI

struct YellowButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 360,height: 50,alignment: .center)
            .background(Color("PrimaryColor2"))
            .foregroundColor(.black)
            .cornerRadius(8)
            .padding()
    }
}

struct BackButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            //.resizable()
            .frame(width: 40,height: 40)
            .foregroundColor(.HighlightColor2)
            .clipShape(Circle())
    }
}

struct ChangeButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
    }
}

struct RemoveButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
    }
}

struct DiscardChangesButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
    }
}

struct SaveChangesButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
    }
}

struct CategoryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
    }
}

struct ToggleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
    }
}
