//
//  LCS_EatsApp.swift
//  Shared
//
//  Created on 2021-01-28.
//
// Reasource used to create badge in tab view.
// Accessed 2021-03-21
//https://medium.com/flawless-app-stories/swiftui-tutorial-showing-badge-on-tab-bar-item-d71e4075b67a
//
//

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject var order = Order(name: "", phoneNumberOrEmail: "", pickup: false, restaurant: .mcdonalds, items: [])
    @StateObject var store = OrderStore()
    
    // These are used to make sure the badge is located in the correct spot
    private var badgePosition: CGFloat = 2
    private var tabsCount: CGFloat = 3
    
    var body: some Scene {
        WindowGroup {
            
            GeometryReader { geo in
                
                ZStack(alignment: .bottomLeading) {
                    
                    TabView {
                        
                        NavigationView {
                            CreateOrderView(store: store)
                                .environmentObject(order)
                        }
                        .tabItem {
                            Image(systemName: "car.2")
                            Text("Order")
                        }
                        
                        NavigationView {
                            CheckoutView(store: store)
                                .environmentObject(order)
                        }
                        .tabItem {
                            Image(systemName: "cart")
                            Text("Checkout")
                        }
                        
                        NavigationView {
                            InfoView()
                        }
                        .tabItem {
                            Image(systemName: "person.fill.questionmark")
                            Text("Info")
                        }
                    }
                    
                    // Badge
                    ZStack {
                        Circle()
                            .foregroundColor(.red)
                        
                        // The number in the badge changes based on number of items in the order
                        Text("\(order.items.count)")
                            .foregroundColor(.white)
                            .font(Font.system(size: 12))
                    }
                    .frame(width: 15, height:15)
                    .offset(x: (( 2 * badgePosition) - 0.95) * (geo.size.width / (2 * tabsCount)) + 2, y: -30)
                    .opacity(order.items.count == 0 ? 0 : 1.0)
                }
                
            }
        }
    }
}
