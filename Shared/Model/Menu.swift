//
//  Menu.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-04.
//

import Foundation

class Menu: ObservableObject {
    
    var mcdonaldsMenu = [
        Item(name: "Bic Mac", price: 6.19, imageName: "MDbigmac", index: 0),
        Item(name: "Double Big Mac", price: 8.19, imageName: "MDdoublebigmac", index: 1),
        Item(name: "Quarter Pounder With Cheese", price: 6.19, imageName: "MDquarterpounderwithcheese", index: 2),
        Item(name: "Double Quarter Pounder With Cheese", price: 8.19, imageName: "MDdoublequarterpounderwithcheese", index: 3)
    ]

    var timsmenu = [
        Item(name: "Donut", price: 0.99, imageName: "THdonut", index: 0),
        Item(name: "Muffin", price: 1.49, imageName: "THmuffin", index: 1),
        Item(name: "Danish", price: 1.49, imageName: "THdanish", index: 2)
    ]
}

var testMenu = Menu()
