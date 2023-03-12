//
//  RecipeTagsCard.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import SwiftUI

struct RecipeTagsCard: View {
    let recipe: Recipe
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Tags")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .medium))
            Text(self.recipe.tags)
                .font(.system(size: 18, weight: .bold))
        }
        .padding(20)
        .frame(maxWidth: .infinity,alignment: .leading)
        .modifier(RecipeCard())
    }
}

struct RecipeTagsCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
