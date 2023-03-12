//
//  MealJSONResponse.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/11/23.
//

import Foundation

struct MealJSONResponse: JSONResponse {
    private enum CodingKeys: String, CodingKey {
        case array = "meals"
    }
    
    let array: [Meal]
}
