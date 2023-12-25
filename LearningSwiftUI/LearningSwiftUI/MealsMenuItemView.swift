//
//  MealsMenuItemView.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 18/12/23.
//

import SwiftUI

struct MealsMenuItemView: View {
    @ObservedObject var menuModel = MenuModel()
    var body: some View {
        VStack {
            List {
                ForEach(menuModel.meals) { menuItem in
                    Text(menuItem.name)
                }
            }
        }
    }
}

#Preview {
    MealsMenuItemView()
}
