//
//  ContentView.swift
//  recipe-list-app
//
//  Created by Waldemar Henszke on 11/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        VStack {
            List(model.recipes) { r in
               
                VStack(alignment: .leading) {
                    Text(r.name)
                        .font(.title)
                    Text(r.cuisine)
                }
            }
            Button("Add Recipe") {
                model.addRecipe()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
