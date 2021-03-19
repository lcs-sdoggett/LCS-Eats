//
//  CreateOrderView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct CreateOrderView: View {
    
    @EnvironmentObject var order: Order
            
    @ObservedObject var store: OrderStore
        
    var body: some View {
        VStack{
            Form {
                
                Section {
                    Text("Name:")
                    
                    TextField("Name", text: $order.name)
                }
                
                Section {
                    Text("Phone Number:")
                    
                    TextField("Phone Number/Email", text: $order.phoneNumberOrEmail)
                }
                
                Section {
                    Text("Restaurant:")
                    Picker("Restaurant", selection: $order.restaurant) {
                        Text(Restaurant.mcdonalds.rawValue).tag(Restaurant.mcdonalds)
                        Text(Restaurant.timHortons.rawValue).tag(Restaurant.timHortons)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            NavigationLink(destination: MenuView(store: store).environmentObject(order), label : {
                Text("Next")
                    .bold()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 60)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .padding(.top, -10)
            })
        }.navigationTitle("Cart")
        
    }
}

struct CreateOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateOrderView(store: testStore)
                .environmentObject(Order(name: "", phoneNumberOrEmail: "", restaurant: Restaurant.mcdonalds, items: []))
        }
    }
}
