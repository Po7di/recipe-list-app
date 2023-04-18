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
        
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
           
            // Create a url object
            let url = URL(fileURLWithPath: path)
            
            // Error handling
            do {
                // Put the code that potentially thorws an error
                
                // Create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // Set unique IDs for each instance
                    for r in recipeData {
                        
                        // Set a unique ID for each recipe in the recipeData array
                        r.id = UUID()
                        
                    }
                    
                    // Assign the data to the published property
                    self.recipes = recipeData
                }
                catch {
                    // Log Couldn't decode json
                    print(error)
                }
                
                
            }
            catch {
                // Execusion will come here if an error is thrown
                // Handle error
                print(error)
            }
            

        }

    }
    
    func addRecipe() {
     

        
    }
}
