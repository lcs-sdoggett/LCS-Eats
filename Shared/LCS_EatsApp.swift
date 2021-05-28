//
//  LCS_EatsApp.swift
//  Shared
//
//  Created by Doggett, Scott on 2021-01-28.
//  Test commit Branton Hung yeet

import SwiftUI

@main
struct LCS_EatsApp: App {
    
    @StateObject private var store = OrderStore(orders: testData)
    
    @State private var currentTab = 0
    
    var firstTime = true
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                NavigationView {
                    CreateOrderView(store: store)
                }
                .tabItem {
                    Image(systemName: "car.2")
                    Text("Order")
                }
                
                NavigationView {
                    InfoView()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Info")
                }
                
                NavigationView {
                    
                    TabView(selection: $currentTab,
                                    content:  {
                                        ForEach(OnboardingData.list) { viewData in
                                            OnboardingView(data: viewData)
                                                .tag(viewData.id)
                                        }
                                    })
                                .tabViewStyle(PageTabViewStyle())
                                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        }
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Help")
                    
                    }
                }
                
            }
        }
    }

