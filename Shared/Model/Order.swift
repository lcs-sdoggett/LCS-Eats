//
//  Order.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import Foundation
import Combine

class Order: Identifiable, ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    let id = UUID()
    let date = NSDate()
    var name = "" { didSet { update() }}
    var phoneOrEmail = "" { didSet { update() }}
    var restaurant = 0 { didSet { update() }}
    static let restaurants = ["Mcdonalds", "Tim Hortons", "Pizza Hut"]
    
    func update() {
        didChange.send(())
    }
}
