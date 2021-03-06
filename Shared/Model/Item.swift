//
//  MenuItems.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-04.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var itemChosen = false
    let name: String
    let price: Double
    let imageName: String
    
    //Custom changes to item. Lazy variables will only effect some items
    var quantity = 1
    var customization = ""
    lazy var size = Size.medium
}

enum Size: String {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
}


var testItem = Item(name: "Burger", price: 4.00, imageName: "MDbigmac")
