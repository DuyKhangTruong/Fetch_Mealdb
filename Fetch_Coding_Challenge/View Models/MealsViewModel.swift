//
//  MealsViewModel.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/9/23.
//

import Foundation
import Combine

class MealsViewModel: ObservableObject {
    @Published var meals: [Meal] = []
    private var cancellable: AnyCancellable?
    
    init() {
        self.fetchMeals()
    }
}

// MARK: - Fetching data
extension MealsViewModel {
        private func fetchMeals() {
            cancellable = URLSession.shared.dataTaskPublisher(for: URL(string: MealsAPI.getURLString(forCategory: Constants.requiredCatelog))!)
                .receive(on: DispatchQueue.main)
                .sink { _ in} receiveValue: { data, _ in
                    if let mealData = try? JSONDecoder().decode(MealJSONResponse.self, from: data) {
                        self.meals = mealData.array
                    }
                    else
                    {
                        print("[ERROR] Fetching data")
                    }
                }
        }
}
