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
}
