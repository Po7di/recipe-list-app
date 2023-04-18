//
//  Recipe.swift
//  recipe-list-app
//
//  Created by Waldemar Henszke on 13/04/2023.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var cuisine = ""
    
}
