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
    
    @State var menu = Menu()
    
    var body: some View {
        
        let restaurantChoice = store.orders[store.orders.count-1].restaurant
        
        if restaurantChoice.rawValue == "Mcdonalds" {
            Form {
                ForEach(0..<menu.mcdonaldsMenu.count) { item in
                    Toggle(isOn: $menu.mcdonaldsMenu[item].itemChosen) {
                        HStack {
                            Image(menu.mcdonaldsMenu[item].imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                            Text(menu.mcdonaldsMenu[item].name)
                        }
                    }
                }
            }
        } else if restaurantChoice.rawValue == "Tim Hortons" {
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
