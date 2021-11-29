//
//  RecipeFeaturedView.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/21/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        VStack(alignment:.leading, spacing:0){
            Text("Featured Recpie")
                .bold()
                .padding(.leading)
                .padding(.top,40)
                .font(.largeTitle)
                
        GeometryReader{geo in
            
            TabView{
                ForEach (0..<model.recipes.count){
                    index in
                    if model.recipes[index].featured == true{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.white)
                            VStack(spacing: 0){
                                Image(model.recipes[index].image)                                 .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                    
                                Text(model.recipes[index].name)
                                    .padding(5)
                            }
                           
                                
                        }
                        .frame(width: geo.size.width - 40, height:geo.size.height - 100, alignment:.center)
                        .cornerRadius(15)
                        .shadow(color:.black, radius: 10, x:-5,y:5)
                    }
                }

            
            
        }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
//            .indexViewStyle(PageTabViewStyle(BackgroundDisplayMode: .never))
      
    }
            
            VStack{
                Text("Prepartion Time")
                Text("1 hour")
                Text("Highlights")
                Text("healthly")
            }
            .padding([.bottom,.leading])
        
        
        
            
            
        
            
            
        }
        
    
        
    }

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
}
