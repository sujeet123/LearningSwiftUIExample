//
//  ButtonTapGestureChangeButtonColor.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 21/12/23.
//

import SwiftUI

struct ButtonTapGestureChangeButtonColor: View {
    @State var flag: Bool = false
    var body: some View {
       Text("Tap me")
            .font(.largeTitle)
            .background(flag ? Color.green : Color.yellow)
            .foregroundColor(.white)
            .padding(15)
            .onTapGesture {
                flag = true
            }
    }
}

#Preview {
    ButtonTapGestureChangeButtonColor()
}
