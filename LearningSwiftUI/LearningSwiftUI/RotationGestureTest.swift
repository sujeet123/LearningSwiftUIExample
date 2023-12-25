//
//  RotationGestureTest.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 20/12/23.
//

import SwiftUI

struct RotationGestureTest: View {
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    var body: some View {
        Image("littleLemonLogo")
               .rotationEffect(amount + finalAmount)
               .gesture(
                   RotationGesture()
                       .onChanged { value in
                           amount = value
                       }
                       .onEnded { value in
                           finalAmount += amount
                           amount = .zero
                       }
               )
    }}

#Preview {
    RotationGestureTest()
}
