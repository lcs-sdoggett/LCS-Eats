//
//  OrderStore.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-02.
//

import Foundation

class OrderStore: ObservableObject {
    @Published var orders: [Order]
    
    init(orders: [Order] = []) {
        self.orders = orders
    }
}

let testStore = OrderStore(orders: testData)

