//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

@main
struct LCS_EatsApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    CreateOrderView()
                }
                .tabItem {
                    Image(systemName: "car.2")
                    Text("Order")
                }
            }
        }
    }
}
