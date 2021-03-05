//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject private var store = OrderStore(orders: testData)
    
    @StateObject private var menu = Menu()
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    CreateOrderView(menu: menu, store: store)
                }
                .tabItem {
                    Image(systemName: "car.2")
                    Text("Order")
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
