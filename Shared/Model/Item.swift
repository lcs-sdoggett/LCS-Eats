//
//  MenuItems.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-04.
//

import Foundation

class Item: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String
    
    internal init(name: String, price: Double, imageName: String) {
        self.name = name
        self.price = price
        self.imageName = imageName
    }
}

let mcdonaldsMenu = [
    Item(name: "Bic Mac", price: 6.19, imageName: "MDbigmac"),
    Item(name: "Double Big Mac", price: 8.19, imageName: "MDbigmac"),
    Item(name: "Quarter Pounder With Cheese", price: 6.19, imageName: "MDquarterpounderwithcheese"),
    Item(name: "Double Quarter Pounder With Cheese", price: 8.19, imageName: "MDdoublequarterpounderwithcheese")
]

let timsmenu = [
    Item(name: "Donut", price: 0.99, imageName: "THdonut"),
    Item(name: "Muffin", price: 1.49, imageName: "THmuffin"),
    Item(name: "Danish", price: 1.49, imageName: "THdanish")
]


