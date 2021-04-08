//
//  FormatEmail.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-04-08.
//

import Foundation

func returnMessage(order: Order) -> String {
    
    var itemsString = ""
    
    for item in order.items {
        itemsString = "\(itemsString) \(item),"
    }
    
    
    let body = """
Order for: \(order.name)

Contact info: \(order.phoneNumberOrEmail)

Restaurant: \(order.restaurant.rawValue)

Items: \(itemsString)

Item Price: \(order.itemPrice)

Total: \(order.totalPrice)

"""
    return body
}
