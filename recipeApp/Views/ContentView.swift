//
//  ContentView.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/11/21.
//

import SwiftUI

struct ContentView: View {
    
   
//    @ObservedObject var model = RecipeModel()
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        
        NavigationView {
            List(model.recipes) {
                
                r in
               
                NavigationLink(destination: RecipeDetalisView(recipe:r), label: {
                    HStack(spacing: 20){
                        
                        Image(r.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width:50, height:50, alignment:.center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                })
                
            }
            .navigationBarTitle("All Recpies")
        
        }

        }
    }
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

