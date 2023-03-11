//
//  RecipeInstructionsCard.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import SwiftUI

struct RecipeInstructionsCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Instructions")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .bold))
            Text(self.recipe.instructions)
                .font(.system(size: 18, weight: .medium))
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .modifier(RecipeCard())
    }
}

struct RecipeInstructionsCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
