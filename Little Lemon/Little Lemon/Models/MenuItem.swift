//
//  MenuItem.swift
//  Little Lemon
//
//  Created by Sameer Ghauri on 20/09/2023.
//

import Foundation

struct MenuItem: Decodable {
    let title: String
    let price: Float
    let description: String?
    let image: String
}
