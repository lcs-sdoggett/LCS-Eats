//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject private var store = OrderStore()
    @StateObject private var cart = CartStore()
        
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    CreateOrderView(store: store, cart: cart)
                }
                .tabItem {
                    Image(systemName: "car.2")
                    Text("Order")
                }
                
                NavigationView {
                    CartView(store: store, cart: cart)
                }
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                
                NavigationView {
                    InfoView()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Info")
                }
                
            }
        }
    }
}
