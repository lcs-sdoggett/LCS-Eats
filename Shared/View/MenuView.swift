//
//  MenuView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct MenuView: View {
        
    @ObservedObject var store: OrderStore
    
    @ObservedObject var cart: CartStore
    
    @EnvironmentObject var order: Order
    
    @State private var menu = Menu()
    
    var body: some View {
        
        if order.restaurant.rawValue == "Mcdonalds" {
            Form {
                ForEach(menu.mcdonaldsMenu, id: \.id) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70, alignment: .center)
                        Text(item.name)
                        
                        Spacer()
                        
                        Button(action: {
                            cart.items.append(item)
                        }) {
                            Image(systemName: "plus.circle")
                        }
                    }
                }.navigationTitle("Mcdonalds Menu")
            }.toolbar {
                Button(action: {
                    for item in cart.items {
                        print(item.name)
                    }
                }) {
                    Image(systemName: "cart")
                }
            }
        } else if order.restaurant.rawValue == "Tim Hortons" {
            Form {
                ForEach(0..<menu.timsmenu.count) { item in
                    Toggle(isOn: $menu.timsmenu[item].itemChosen) {
                        HStack {
                            Image(menu.timsmenu[item].imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                            Text(menu.timsmenu[item].name)
                        }
                    }
                }
            }
        } else if order.restaurant.rawValue == "Pizza Hut" {
            Form {
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView(store: testStore, cart: testCartStore)
            
        }
    }
}
