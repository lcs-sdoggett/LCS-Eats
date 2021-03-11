//
//  MenuView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct MenuView: View {
    
    // Store
    @ObservedObject var store: OrderStore
    
    // Created instance of menu
    @State private var menu = Menu()
    
    // User inputed values
    @State var orderName: String
    @State var orderphoneNumberOrEmail: String
    @State var restaurantChoice: Restaurant
    
    var body: some View {
        
        if restaurantChoice.rawValue == "Mcdonalds" {
            Form {
                // Iterates over mcdonalds menu
                ForEach(menu.mcdonaldsMenu, id: \.id) { item in
                    // Creates navigation link to ItemCustomization view and passes in the item
                    NavigationLink(destination:(ItemCustomization(item: item))) {
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70, alignment: .center)
                            Text(item.name)
                        }
                    }
                }.navigationTitle("Mcdonalds Menu")
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
        NavigationView {
            MenuView(store: testStore, orderName: "", orderphoneNumberOrEmail: "", restaurantChoice: Restaurant.mcdonalds)
            
        }
    }
}
