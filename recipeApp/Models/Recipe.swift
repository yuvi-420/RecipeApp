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
    var servings:Int?
    var highlights:[String]
    
    var cookTime:String
    var totalTime:String
//    var servings:[String]
        var ingredients:[Ingredients]

    
    
}

class Ingredients: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
