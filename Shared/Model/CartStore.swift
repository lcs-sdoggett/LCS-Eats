//
//  CartStore.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-11.
//

import Foundation

class CartStore: ObservableObject {
    @Published var items: [Item]
    
    init(items: [Item] = []) {
        self.items = items
    }
}

let testCartStore = CartStore()
