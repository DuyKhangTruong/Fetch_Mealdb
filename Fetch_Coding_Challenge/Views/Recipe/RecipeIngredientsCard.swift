//
//  RecipeIngredientCard.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import SwiftUI

struct RecipeIngredientsCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Ingredients")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .bold))
            ForEach((0..<self.recipe.ingredients.count)) { index in
                IngredientView(ingredient: self.recipe.ingredients[index].name, measurement: self.recipe.ingredients[index].measure)
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .modifier(RecipeCard())
    }
}

struct RecipeIngredientsCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}

