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
    @Published var name: String
    @Published var phoneNumberOrEmail: String
    @Published var restaurant: Restaurant
    @Published var items: [Item]
    @Published var itemPrice: Double
    @Published var tax: Double
    @Published var delivery: Double
    @Published var totalPrice: Double
    
    
    internal init(name: String, phoneNumberOrEmail: String, restaurant: Restaurant, items: [Item], itemPrice: Double, tax: Double, delivery: Double, totalPrice: Double) {
        self.name = name
        self.phoneNumberOrEmail = phoneNumberOrEmail
        self.restaurant = restaurant
        self.items = items
        self.itemPrice = itemPrice
        self.tax = tax
        self.delivery = delivery
        self.totalPrice = totalPrice
    }

        
}

let testData = [Order(name: "scott", phoneNumberOrEmail: "9057853261", restaurant: .mcdonalds, items: [testItem], itemPrice: 0.0, tax: 0.0, delivery: 0.0, totalPrice: 0.0)]
