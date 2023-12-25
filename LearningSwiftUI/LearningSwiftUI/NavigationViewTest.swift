//
//  NavigationViewTest.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 15/12/23.
//

import SwiftUI

struct NavigationViewTest: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                    .font(.title)
                NavigationLink(destination: ContentView()) {
                    Text("Do something")
                        .font(.title2)
                }
                    
                
            }
            .navigationTitle("Little Lemon")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationViewTest()
}
