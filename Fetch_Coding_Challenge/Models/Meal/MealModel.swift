//
//  MealModel.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import Foundation

struct MealData: Decodable {
    let meals: [Meal]
}

struct Meal: Decodable, Identifiable {
    let id = UUID()
    let mealName: String
    let imgURLString: String
    let mealID: String
}

extension Meal {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let mealHashMap = try container.decode([String: String?].self)
        
        mealName = mealHashMap["strMeal"] as? String ?? ""
        imgURLString = mealHashMap["strMealThumb"] as? String ?? ""
        mealID = mealHashMap["idMeal"] as? String ?? ""
    }
}
