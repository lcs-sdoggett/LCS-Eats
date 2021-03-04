//
//  MenuView.swift
//  LCS Eats
//
//  Created by Doggett, Scott on 2021-01-28.
//

import SwiftUI

struct MenuView: View {
    
    // Weather to show this view
    @Binding var showing: Bool
    
    var body: some View {
        Form {
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(showing: .constant(true))
    }
}
