//
//  MealsView.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/9/23.
//

import SwiftUI

struct MealsView: View {
    @ObservedObject var viewModel = MealsViewModel()
    
    var body: some View {
        List(self.viewModel.meals, rowContent: MealRow.init)
            .navigationBarTitle("Pick your dessert today")
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
        MealsView()
    }
}
