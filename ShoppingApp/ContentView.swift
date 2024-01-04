//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Cecilia Chen on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Foods") {
                    ForEach(foods) { food in
                        NavigationLink(value: food) {
                            MenuItemView(item: food)
                        }
                    }
                }
                Section("Drinks") {
                    ForEach(drinks) { drink in
                        NavigationLink(value: drink) {
                            MenuItemView(item: drink)
                        }
                    }
                }
                Section("Desserts") {
                    ForEach(desserts) { dessert in
                        NavigationLink(value: dessert) {
                            MenuItemView(item: dessert)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("🪄 Surprise Me") {
                        let items: [any Hashable] = foods + drinks + desserts
                        if let randomItem = items.randomElement() {
                            path.append(randomItem)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Menu")
            .navigationDestination(for: Food.self) { food in
                FoodDetailView(food: food)
            }
            .navigationDestination(for: Drink.self) { drink in
                DrinkDetailView(drink: drink)
            }
            .navigationDestination(for: Dessert.self) { item in
                DessertDetailView(dessert: item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
