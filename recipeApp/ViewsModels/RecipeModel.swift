//
//  RecipeModel.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/11/21.
//

import Foundation


class RecipeModel: ObservableObject {
    
    
    @Published var recipes = [Recipe]()
    
    init(){
        
       
        let service = DataServices()
        self.recipes = service.getLocalData()
        
    }
    


}

