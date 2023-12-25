//
//  GestureLongPressStateTest.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 19/12/23.
//

import SwiftUI

struct GestureLongPressStateTest: View {
    var body: some View {
        Text("Little Lemon Restaurant")
                    .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
                        print("Long Press Detected!")
                    },
                    onPressingChanged: { state in
                        print (state)
                    })
                   
    }
    
}

#Preview {
    GestureLongPressStateTest()
}
