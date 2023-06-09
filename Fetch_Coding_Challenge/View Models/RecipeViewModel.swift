//
//  RecipeViewModel.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/9/23.
//

import Foundation
import Combine

class RecipeViewModel: ObservableObject {
    @Published var recipe: Recipe?
    let meal: Meal
    private var cancellable: AnyCancellable?
    
    init(meal: Meal) {
        self.meal = meal
        
        self.fetchRecipe()
    }
}

//MARK: - Fetching data
extension RecipeViewModel {
    private func fetchRecipe() {
        cancellable = URLSession.shared.dataTaskPublisher(for: URL(string: MealsAPI.getURLString(forMealID: self.meal.mealID))!)
            .receive(on: DispatchQueue.main)
            .sink { _ in} receiveValue: { data, _ in
                if let recipeData = try? JSONDecoder().decode(RecipeJSONResponse.self, from: data)
                {
                    self.recipe = recipeData.array.first
                }
                else
                {
                    print("[ERROR] Fetching data")
                }
            }
    }
}
