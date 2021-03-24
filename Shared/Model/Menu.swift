//
//  Menu.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-04.
//

import Foundation

class Menu: ObservableObject {
    
    var mcdonaldsMenu = [
        // Burgers
        Item(name: "Big Mac", price: 6.19, imageName: "MDbigmac", type: FoodType.burger),
        Item(name: "Double Big Mac", price: 8.19, imageName: "MDdoublebigmac", type: FoodType.burger),
        Item(name: "Quarter Pounder With Cheese", price: 6.19, imageName: "MDquarterpounderwithcheese", type: FoodType.burger),
        Item(name: "Double Quarter Pounder With Cheese", price: 8.19, imageName: "MDdoublequarterpounderwithcheese", type: FoodType.burger),
        Item(name: "Cheeseburger", price: 2.39, imageName: "MDcheeseburger", type: FoodType.burger),
        Item(name: "Double Cheeseburger", price: 2.99, imageName: "MDdoublecheeseburger", type: FoodType.burger),
        Item(name: "Hamburger", price: 2.19, imageName: "MDhamburger", type: FoodType.burger),
        Item(name: "McDouble", price: 2.79, imageName: "MDmcdouble", type: FoodType.burger),
        
        // Chicken
        Item(name: "McChicken", price: 6.19, imageName: "MDmcchicken", type: FoodType.chicken),
        Item(name: "Junior Chicken", price: 2.49, imageName: "MDjuniorchicken", type: FoodType.chicken),
        Item(name: "6 Chicken McNuggets", price: 6.99, imageName: "MD6piecenuggets", type: FoodType.chicken),
        Item(name: "10 Chicken McNuggets", price: 8.99, imageName: "MD10piecenuggets", type: FoodType.chicken),
        Item(name: "20 Chicken McNuggets", price: 13.99, imageName: "MD20piecenuggets", type: FoodType.chicken),

        // Fries
        Item(name: "Small Fries", price: 1.99, imageName: "MDsmallfries", type: FoodType.fries),
        Item(name: "Medium Fries", price: 3.19, imageName: "MDmediumfries", type: FoodType.fries),
        Item(name: "Large Fries", price: 3.59, imageName: "MDlargefries", type: FoodType.fries),
        
        // IceCream
        Item(name: "Vanilla Cone", price: 1.79, imageName: "MDvanillacone", type: FoodType.iceCream),
        Item(name: "Fudge Sundae", price: 2.89, imageName: "MDfudgesundae", type: FoodType.iceCream),
        Item(name: "Caramel Sundae", price: 2.89, imageName: "MDcaramelsundae", type: FoodType.iceCream),

        
        // Drinks
        Item(name: "Coke", price: 2.39, imageName: "MDcoke", type: FoodType.drink)
    ]

    var timsMenu = [
        Item(name: "Donut", price: 0.99, imageName: "THdonut", type: FoodType.bakery),
        Item(name: "Muffin", price: 1.49, imageName: "THmuffin", type: FoodType.bakery),
        Item(name: "Danish", price: 1.49, imageName: "THdanish", type: FoodType.bakery)
    ]
    
}

var testMenu = Menu()
