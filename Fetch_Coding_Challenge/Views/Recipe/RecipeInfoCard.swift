//
//  RecipeInfoCard.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import SwiftUI

struct RecipeInfoCard: View {
    let recipe: Recipe
    
    var body: some View {
            Text("Origin: \(self.recipe.origin)")
                .font(.system(size: 20, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .modifier(RecipeCard())
    }
}

struct RecipeInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
