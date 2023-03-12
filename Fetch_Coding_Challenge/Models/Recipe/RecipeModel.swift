//
//  RecipeModel.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import Foundation

struct Recipe: Decodable, Identifiable {
    var id = UUID()
    let mealName: String
    let imgURLString: String
    let ingredients: [Ingredient]
    let instructions: String
    let origin: String
    let tags: String
}

extension Recipe {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let recipeHashMap = try container.decode([String: String?].self)
        
        var index = 1
        var ingredients: [Ingredient] = []
        
        // Loop throught the data of recipe JSON to check which ingredients and measurement
        // required and add them to array. Instead of creating Coding Keys for 20 ingredients
        // and instrument
        while let ingredient = recipeHashMap["strIngredient\(index)"] as? String,
              let measure = recipeHashMap["strMeasure\(index)"] as? String,
              !ingredient.isEmpty, !measure.isEmpty
        {
            ingredients.append(.init(name: ingredient, measure: measure))
            index += 1
        }
        
        mealName = recipeHashMap["strMeal"] as? String ?? ""
        imgURLString = recipeHashMap["strMealThumb"] as? String ?? ""
        self.ingredients = ingredients
        instructions = recipeHashMap["strInstructions"] as? String ?? ""
        origin = recipeHashMap["strArea"] as? String ?? ""
        tags = recipeHashMap["strTags"] as? String ?? ""
    }
}



