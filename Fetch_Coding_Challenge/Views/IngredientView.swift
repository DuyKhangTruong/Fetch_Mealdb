//
//  IngredientView.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/10/23.
//

import SwiftUI
import Kingfisher

struct IngredientView: View {
    let ingredient: String
    let measurement: String
    
    var body: some View {
        HStack(spacing: 10) {
            KFImage(URL(string: MealsAPI.getImgURLString(forIngredient: ingredient)!))
                .resizable()
                .frame(width: 25, height: 25)
            Text(self.ingredient)
                .bold()
            Spacer()
            Text(self.measurement)
                .foregroundColor(.secondary)
                .bold()
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(ingredient: "Onion", measurement: "2 Cups")
    }
}
