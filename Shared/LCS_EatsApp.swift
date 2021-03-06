//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//  Test commit Branton Hung yeet

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject private var store = OrderStore(orders: testData)
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    CreateOrderView(store: store)
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
