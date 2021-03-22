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
    
    var itemList: [Item] {
        if order.restaurant.rawValue == "Mcdonald's" {
            return menu.mcdonaldsMenu
        } else {
            return menu.timsMenu
        }
    }
    
    var body: some View {
        Form {
            ForEach(itemList, id: \.id) { item in
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
            }
        }.navigationTitle("\(order.restaurant.rawValue) Menu")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView(store: testStore)
            
        }
    }
}
