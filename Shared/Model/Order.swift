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
    var phoneOrEmail: String
    var restaurant: Restaurant
    
    internal init(name: String, phoneOrEmail: String, restaurant: Restaurant) {
        self.name = name
        self.phoneOrEmail = phoneOrEmail
        self.restaurant = restaurant
    }

        
}

let testData = [Order(name: "scott", phoneOrEmail: "9057853261", restaurant: .mcdonalds)]
