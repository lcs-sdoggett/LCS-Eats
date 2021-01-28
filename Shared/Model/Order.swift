//
//  Order.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import Foundation

struct Order: Identifiable {
    let id = UUID()
    let date = NSDate()
    var name: String
    var phoneOrEmail: String
    var specialInstructions: String
    var restaurant: Restaurant
}
