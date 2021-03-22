//
//  MenuView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct MenuView: View {
        
    @ObservedObject var store: OrderStore
        
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
                            order.items.append(item)
                        }) {
                            Image(systemName: "plus.circle")
                        }
                    }
                }.navigationTitle("Mcdonalds Menu")
            }
        } else if order.restaurant.rawValue == "Tim Hortons" {
            Form {
                ForEach(0..<menu.timsmenu.count) { item in
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
            MenuView(store: testStore)
            
        }
    }
}
