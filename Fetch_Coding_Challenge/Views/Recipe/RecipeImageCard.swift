//
//  RecipeImageCard.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import SwiftUI
import Kingfisher

struct RecipeImageCard: View {
    let recipe: Recipe
    
    var body: some View {
        KFImage(URL(string: self.recipe.imgURLString))
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .modifier(RecipeCard())

    }
}

struct RecipeImageCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}

