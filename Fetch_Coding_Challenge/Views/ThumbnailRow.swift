//
//  ThumbnailRow.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/9/23.
//

import SwiftUI
import Kingfisher
struct ThumbnailRow: View {
    let imgURL: String?
    let title: String
    
    var body: some View {
        HStack(spacing: 15) {
            KFImage(URL(string: imgURL!))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 20)
            Text(self.title)
                .bold()
        }
    }
}

struct ThumbnailRow_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailRow(imgURL: "https://www.themealdb.com/images/media/meals/58bkyo1593350017.jpg", title: "Polskie Naleśniki (Polish Pancakes)")
    }
}
