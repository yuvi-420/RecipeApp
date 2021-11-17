//
//  Recipe.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/11/21.
//

import Foundation



class Recipe: Identifiable, Decodable{
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var directions:[String]
    var prepTime:String
    var cookTime:String
    var totalTime:String
//    var servings:[String]
        var ingredients:[String]

    
    
}
