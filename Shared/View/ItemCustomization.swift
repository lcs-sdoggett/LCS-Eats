//
//  ItemCustomization.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-03-05.
//

import SwiftUI

struct ItemCustomization: View {
    
    @Binding var showingItemCustomization: Bool
    
    @State var menu = Menu()
        
    var body: some View {
        NavigationView {
            
        }
    }
}

struct ItemCustomization_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemCustomization(showingItemCustomization: .constant(true))
        }
    }
}
