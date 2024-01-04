//
//  IngredientsDetailView.swift
//  ShoppingApp
//
//  Created by Cecilia Chen on 1/3/24.
//

import SwiftUI

struct IngredientsDetailView: View {
    
    let ingredients: [Ingredient]
    
    var body: some View {
        List(ingredients, id: \.name) { ingredient in
            LabeledContent {
                Text(ingredient.quantity / 100, format: .percent)
            } label: {
                Text(ingredient.name)
            }
        }
        .navigationTitle("Ingredients")
    }
}

struct IngredientsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            IngredientsDetailView(ingredients: foods[0].ingredients!)
        }
    }
}
