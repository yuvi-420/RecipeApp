//
//  DataService.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/11/21.
//

import Foundation


class DataServices{
    
    func getLocalData() -> [Recipe] {
        
        //Parse local json filee
        
        // get a url path to the json file
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        
        guard pathString !=  nil else {
            return [Recipe]()
        }
        
        //create a url link
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            
            //create a dataobject
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData{

                    r.id = UUID()

                }
                
                
                
                return recipeData
            }
            catch{
                print(error)
            }
            
            

    }
        catch{
            
            print(error)
            
        }
        return [Recipe]()
  }

}
    
    
    


