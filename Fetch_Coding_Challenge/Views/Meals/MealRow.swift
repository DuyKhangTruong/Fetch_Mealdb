//
//  MealRow.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/9/23.
//

import SwiftUI

struct MealRow: View {
    var meal: Meal
    var body: some View {
        NavigationLink(destination: RecipeView(meal: meal)) {
            ThumbnailRow(imgURL: self.meal.imgURLString, title: meal.mealName)
        }
    }
}

struct MealRow_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
