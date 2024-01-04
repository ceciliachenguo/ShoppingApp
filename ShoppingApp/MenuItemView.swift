//
//  FoodItemView.swift
//  ShoppingApp
//
//  Created by Cecilia Chen on 1/3/24.
//

import SwiftUI

struct MenuItemView: View {
    let item: MenuItem
    
    var body: some View {
        LabeledContent {
            Text(item.price,
                 format: .currency(code: Locale.current.currency?.identifier ?? ""))
        } label: {
            Text("\(item.name) \(item.title)")
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: foods[0])
            .previewLayout(.sizeThatFits)
    }
}
