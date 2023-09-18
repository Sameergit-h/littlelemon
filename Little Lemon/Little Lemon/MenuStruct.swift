//
//  MenuStruct.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 19/09/2023.
//

import Foundation

struct JSONMenu: Codable {
    let menu: [MenuItem]
}


struct MenuItem: Codable {
    let name: String
    let price: Float
    let description: String
    let image: String
} 
