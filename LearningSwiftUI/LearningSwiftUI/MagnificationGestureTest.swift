//
//  MagnificationGestureTest.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 20/12/23.
//

import SwiftUI

struct MagnificationGestureTest: View {
    @State private var amount = 0.0
    @State private var finalAmount = 1.0


    var body: some View {
        Image("littleLemonRestaurant")
                .scaleEffect(finalAmount + amount)
                .gesture(
            MagnificationGesture()
                        .onChanged { value in
                            amount = value - 1
                        }
                        .onEnded { value in
                            finalAmount += amount
                            amount = 0
                        }
                )
    }
}

#Preview {
    MagnificationGestureTest()
}
