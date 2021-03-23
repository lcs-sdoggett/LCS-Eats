//
//  Menu.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-04.
//

import Foundation

class Menu: ObservableObject {
    
    var mcdonaldsMenu = [
        Item(name: "Bic Mac", price: 6.19, imageName: "MDbigmac", type: FoodType.burger),
        Item(name: "Double Big Mac", price: 8.19, imageName: "MDdoublebigmac", type: FoodType.burger),
        Item(name: "Quarter Pounder With Cheese", price: 6.19, imageName: "MDquarterpounderwithcheese", type: FoodType.burger),
        Item(name: "Double Quarter Pounder With Cheese", price: 8.19, imageName: "MDdoublequarterpounderwithcheese", type: FoodType.burger),
        Item(name: "Coke", price: 2.39, imageName: "MDcoke", type: FoodType.drink)
    ]

    var timsMenu = [
        Item(name: "Donut", price: 0.99, imageName: "THdonut", type: FoodType.pastery),
        Item(name: "Muffin", price: 1.49, imageName: "THmuffin", type: FoodType.pastery),
        Item(name: "Danish", price: 1.49, imageName: "THdanish", type: FoodType.pastery)
    ]
    
}

var testMenu = Menu()
