//
//  MyTabView.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 15/12/23.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack {
            TabView {
                Text("This is the Share View")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .tabItem ({ Label("share", systemImage: "square.and.arrow.up.fill" )})
                Text("This is the Trash View")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .tabItem { Label("trash", systemImage: "trash.circle.fill") }
            }
        }
    }
}

#Preview {
    MyTabView()
}
