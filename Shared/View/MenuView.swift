//
//  MenuView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct MenuView: View {
    
    // Weather to show this view
    @Binding var showing: Bool
    
    @ObservedObject var store: OrderStore
    
    @ObservedObject var menu: Menu
                
    var body: some View {
        
        let restaurantChoice = store.orders[store.orders.count-1].restaurant
        
        if restaurantChoice.rawValue == "Mcdonalds" {
            Form {
            
            }
        } else if restaurantChoice.rawValue == "Tim Hortons" {
            Form {
                
            }
        } else if restaurantChoice.rawValue == "Pizza Hut" {
            Form {
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(showing: .constant(true), store: testStore, menu: testMenu)
    }
}
