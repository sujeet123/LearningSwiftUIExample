//
//  DragGestureTest.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 20/12/23.
//

import SwiftUI

struct DragGestureTest: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        Image("littleLemonLogo")
           .offset(offsetValue)
               .gesture(
                   DragGesture()
                       .onChanged { gesture in
                           print("offsetValue before", offsetValue)
                           offsetValue = gesture.translation
                           print("offsetValue after", offsetValue)
                       })
    }
}

#Preview {
    DragGestureTest()
}
