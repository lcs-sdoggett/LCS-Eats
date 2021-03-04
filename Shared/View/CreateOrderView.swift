//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI
import Combine



struct CreateOrderView: View {
    
    @State private var showingRestaurantMenu = false
    
    @State private var restaurant = Restaurant.mcdonalds
    
    @ObservedObject var store: OrderStore
        
    @State private var name = ""
    @State private var phoneNumberOrEmail = ""
    
    var body: some View {
        Form {
            
            Section {
                Text("Name:")
                
                TextField("Name", text: $name)
            }
            
            Section {
                Text("Phone Number:")
                
                TextField("Phone Number/Email", text: $phoneNumberOrEmail)
            }
            
            Section {
                Text("Restaurant:")
                Picker("Restaurant", selection: $restaurant) {
                    Text(Restaurant.mcdonalds.rawValue).tag(Restaurant.mcdonalds)
                    Text(Restaurant.timHortons.rawValue).tag(Restaurant.timHortons)
                    Text(Restaurant.pizzaHut.rawValue).tag(Restaurant.pizzaHut)
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section {
                Button("Next") {
                    self.saveFirstScreen()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.accentColor)
            }
            
        }.navigationTitle("Order")
        .sheet(isPresented: $showingRestaurantMenu) {
            MenuView(showing: $showingRestaurantMenu)
        }
        
    }
    
    func saveFirstScreen() {
        showingRestaurantMenu = true
        
        store.orders.append(Order(name: name, phoneOrEmail: phoneNumberOrEmail, restaurant: restaurant))
     
    }
}

struct CreateOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateOrderView(store: testStore)
        }
    }
}
