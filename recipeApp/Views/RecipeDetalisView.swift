//
//  RecipeDetalisView.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/16/21.
//

import SwiftUI

struct RecipeDetalisView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            
            VStack(alignment:.leading){
                
                // image
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
    //                .frame(minWidth: 100, idealWidth: 150, maxWidth: 300, minHeight: 200, idealHeight: 250, maxHeight: 300, alignment:.center)
                
                //Mark Ingredients
                VStack(alignment:.leading){
                    
                    
                    Text("ingredients")
                        .font(.headline)
                        .padding([.top,.bottom],5)
                    
                    ForEach (recipe.ingredients) {
                        
                        item in
                        
                        Text(". " + item.name)
                    }
                        
//                        Divider()
                   
                        VStack(alignment:.leading) {

                            // Directions starts
                            Text("directions")
                                        .font(.headline)
                                        .padding([.top,.bottom],5)

                            ForEach(0..<recipe.directions.count, id: \.self) {
                                        index in

                                Text(String(index+1) + ". " + recipe.directions[index])
                                            .padding([.top,.bottom],5)
                                    }
                        
                    
                            
                            
                        
                    }
                    
                }
                .padding(.horizontal)
                
                
                
            }
            .navigationBarTitle(recipe.name)
            
            
        }
        
    }
       
}

struct RecipeDetalisView_Previews: PreviewProvider {
    static var previews: some View {
        
        //create dummy recipe ..
        
        let model = RecipeModel()
        RecipeDetalisView(recipe: model.recipes[0])
    }
}

