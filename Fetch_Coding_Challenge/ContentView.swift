//
//  ContentView.swift
//  Fetch_Coding_Challenge
//
//  Created by Duy Khang Nguyen Truong on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: MealsView.init)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
