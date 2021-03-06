//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct CreateOrderView: View {
    
    // Created instance of menu
    @State private var menu = Menu()
    
    // Store
    @ObservedObject var store: OrderStore
    
    // User inputed values
    @State private var name = ""
    @State private var phoneNumberOrEmail = ""
    @State private var restaurant = Restaurant.mcdonalds
    
    var body: some View {
        VStack{
            Form {
                
                // User inputs name
                Section {
                    Text("Name:")
                    
                    TextField("Name", text: $name)
                }
                
                // User inputs phone number or email
                Section {
                    Text("Phone Number:")
                    
                    TextField("Phone Number/Email", text: $phoneNumberOrEmail)
                }
                
                // User choses restaraunt
                Section {
                    Text("Restaurant:")
                    Picker("Restaurant", selection: $restaurant) {
                        Text(Restaurant.mcdonalds.rawValue).tag(Restaurant.mcdonalds)
                        Text(Restaurant.timHortons.rawValue).tag(Restaurant.timHortons)
                        Text(Restaurant.pizzaHut.rawValue).tag(Restaurant.pizzaHut)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            
            // Navigation link brings user to the menu view
            NavigationLink(destination: MenuView(store: store, orderName: name, orderphoneNumberOrEmail: phoneNumberOrEmail, restaurantChoice: restaurant), label : {
                Text("Next")
                    .bold()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60)
                    .background(Color.blue)
                    .foregroundColor(.white)
            })
        }.navigationTitle("Order")
        
    }
}

struct CreateOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateOrderView(store: testStore)
        }
    }
}
