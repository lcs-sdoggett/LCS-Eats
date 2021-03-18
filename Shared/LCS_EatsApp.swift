//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject var order = Order(name: "", phoneNumberOrEmail: "", restaurant: .mcdonalds, items: [])
    @StateObject var store = OrderStore()
        
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    CreateOrderView(store: store)
                        .environmentObject(order)
                }
                .tabItem {
                    Image(systemName: "car.2")
                    Text("Order")
                }
                
                NavigationView {
                    CartView(store: store)
                        .environmentObject(order)
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
