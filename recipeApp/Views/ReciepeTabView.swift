//
//  ReciepeTabView.swift
//  recipeApp
//
//  Created by yuvipreet love on 11/16/21.
//

import SwiftUI

struct ReciepeTabView: View {
    var body: some View {
       
        TabView{
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                    
                    
                }
            ContentView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("list")
                    }
                }
         
        }
        .environmentObject(RecipeModel())
        
    }
}

struct ReciepeTabView_Previews: PreviewProvider {
    static var previews: some View {
        ReciepeTabView()
    }
}
