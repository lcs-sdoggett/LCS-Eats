//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject var order = Order(name: "", phoneNumberOrEmail: "", restaurant: .mcdonalds, items: [], itemPrice: 0.0, tax: 0.0, delivery: 0.0, totalPrice: 0.0)
    @StateObject var store = OrderStore()
    
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
                    
                    ZStack {
                        Circle()
                            .foregroundColor(.red)

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
