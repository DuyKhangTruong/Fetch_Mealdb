//
//  MealsAPI.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/8/23.
//

import Foundation

struct MealsAPI {
    static func getURLString(forCategory category: String) -> String {
        let enpoint = "filter.php?c=\(category)"
        return Constants.JSONURLString + "/\(enpoint)"
    }
    
    static func getURLString(forMealID id: String) -> String {
        let enpoint = "lookup.php?i=\(id)"
        return Constants.JSONURLString + "/\(enpoint)"
    }
    
    static func getImgURLString(forIngredient ingredient: String) -> String? {
        guard let percentEncodedIngredient = ingredient.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) else {
            return nil
        }
        return Constants.baseURLString + "/images/ingredients/\(percentEncodedIngredient).png"
    }
}
