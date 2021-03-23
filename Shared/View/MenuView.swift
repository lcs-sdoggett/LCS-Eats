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
    
    @State var itemType = FoodType.all
    
    var itemList: [Item] {
        if order.restaurant.rawValue == "Mcdonald's" {
            return store.filteredItems(menu: menu.mcdonaldsMenu, itemType: itemType, order: order)
        } else {
            return store.filteredItems(menu: menu.timsMenu, itemType: itemType, order: order)
        }
    }
    
    var body: some View {
        Form {
            
            Section {
                // Picker for the user to chose what type of item they want to see
                Picker("Sort Menu", selection: $itemType) {
                    Text(FoodType.all.rawValue).tag(FoodType.all)
                    Text(FoodType.burger.rawValue).tag(FoodType.burger)
                    Text(FoodType.chicken.rawValue).tag(FoodType.chicken)
                    Text(FoodType.fries.rawValue).tag(FoodType.fries)
                    Text(FoodType.iceCream.rawValue).tag(FoodType.iceCream)
                    Text(FoodType.combo.rawValue).tag(FoodType.combo)
                    Text(FoodType.drink.rawValue).tag(FoodType.drink)
                }.pickerStyle(MenuPickerStyle())
                
            }
            
            Section(header: Text(itemType.rawValue)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding(.top)) {
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
