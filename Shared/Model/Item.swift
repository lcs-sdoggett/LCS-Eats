//
//  MenuItems.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-04.
//

import Foundation

struct Item: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String
}

var testItem = Item(name: "Burger", price: 4.00, imageName: "MDbigmac")
