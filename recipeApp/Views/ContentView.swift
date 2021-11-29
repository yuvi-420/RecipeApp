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
            VStack(alignment: .leading, spacing: 10){
                Text("All Recipes")
                    .padding(.leading)
                    .padding(.top,40)
                    .font(.largeTitle)
                ScrollView{
                    LazyVStack(alignment: .leading, spacing: 10){
                        ForEach(model.recipes) {
                            
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
                                        .foregroundColor(.black)
                                }
                            })
                            
                        }
                    }
                }
                
                //            .navigationBarTitle("All Recpies")
                .navigationBarHidden(true)
            }
            
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipeModel())
        //.previewInterfaceOrientation(.portraitUpsideDown)
    }
}

