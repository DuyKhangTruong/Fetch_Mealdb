//
//  RecipeView.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/9/23.
//

import SwiftUI

struct RecipeView: View {
    @ObservedObject var viewModel: RecipeViewModel
    
    init(meal: Meal) {
        self.viewModel = RecipeViewModel(meal: meal)
    }
    
    var body: some View {
        self.viewModel.recipe.map { recipe in
            ScrollView {
                VStack(spacing: 20) {
                    HStack(alignment:.center,spacing:10) {
                        RecipeImageCard(recipe: recipe)
                        RecipeInfoCard(recipe: recipe)
                    }
                    .frame(height: 200)
                    if (self.viewModel.recipe?.tags != "") {
                        RecipeTagsCard(recipe: recipe)
                    }
                    RecipeIngredientsCard(recipe: recipe)
                    RecipeInstructionsCard(recipe: recipe)
                }
                .padding(25)
            }
            .navigationTitle(self.viewModel.meal.mealName)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
