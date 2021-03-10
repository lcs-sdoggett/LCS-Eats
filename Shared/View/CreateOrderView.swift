//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct CreateOrderView: View {
    
    @State private var showingMenu = false
    
    @State private var restaurant = Restaurant.mcdonalds
    
    var menu = Menu()
    
    @ObservedObject var store: OrderStore
    
    @State private var name = ""
    @State private var phoneNumberOrEmail = ""
    
    var body: some View {
        VStack{
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
            }
            NavigationLink(destination: MenuView(store: store, restaurantChoice: restaurant, orderName: name, orderphoneNumberOrEmail: phoneNumberOrEmail), label : {
                Text("Next")
                    .bold()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60)
                    .background(Color.blue)
                    .foregroundColor(.white)
            })
        }.navigationTitle("Order")
        
    }
    
    func saveFirstScreen() {
        showingMenu = true
        
        store.orders.append(Order(name: name, phoneOrEmail: phoneNumberOrEmail, restaurant: restaurant))
        
    }
}

struct CreateOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateOrderView(menu: testMenu, store: testStore)
        }
    }
}
