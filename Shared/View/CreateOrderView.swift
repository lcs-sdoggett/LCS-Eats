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
                
                // Name section
                Section(header: Text("Name:").font(.headline).padding([.bottom, .top])) {
                    TextField("Name", text: $order.name)
                }
                
                // Contact info section
                Section(header: Text("Phone Number:").font(.headline).padding([.bottom, .top])) {
                    TextField("Phone Number/Email", text: $order.phoneNumberOrEmail)
                }
                
                // Restaurant choice section
                Section(header: Text("Restaurant:").font(.headline).padding([.bottom, .top])) {
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
        }.navigationTitle("Order")
        
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
