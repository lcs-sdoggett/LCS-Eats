//
//  Order.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import Foundation
import Combine

class Order: ObservableObject, Identifiable {
    
    var id = UUID()
    var name: String
    var phoneNumberOrEmail: String
    var restaurant: Restaurant
    var items: [Item]
    
    internal init(name: String, phoneNumberOrEmail: String, restaurant: Restaurant, items: [Item]) {
        self.name = name
        self.phoneNumberOrEmail = phoneNumberOrEmail
        self.restaurant = restaurant
        self.items = items
    }

        
}

let testData = [Order(name: "scott", phoneNumberOrEmail: "9057853261", restaurant: .mcdonalds, items: [testItem])]
