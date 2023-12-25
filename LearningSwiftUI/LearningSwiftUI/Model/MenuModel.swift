//
//  MenuModel.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 18/12/23.
//

import Foundation
class MenuModel: ObservableObject {
    @Published var meals: [MenuItem] = getMenuItems()
    
    public static func getMenuItems() -> [MenuItem] {
        return [
            MenuItem(name: "Lasagna"),
            MenuItem(name: "Fettuccini Alfredo"),
            MenuItem(name: "Spaghetti"),
            MenuItem(name: "Avocado Toast"),
            MenuItem(name: "Tortellini"),
            MenuItem(name: "Pizza")
        ]
    }
}
