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
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        
    }
}
