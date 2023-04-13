//
//  RecipeModel.swift
//  recipe-list-app
//
//  Created by Waldemar Henszke on 13/04/2023.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create some dummy recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    
    func addRecipe() {
     
        recipes.append(Recipe(name: "Burger", cuisine: "American"))
        
    }
}
