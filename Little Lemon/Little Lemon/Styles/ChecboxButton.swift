//
//  ChecboxButton.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

import SwiftUI

struct ChecboxButton: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {
            
            // 2
            configuration.isOn.toggle()
            
        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                
                configuration.label
                    .foregroundColor(.PrimaryColor1)
            }
        })
        
    }
}
