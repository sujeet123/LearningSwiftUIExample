//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing = true // toggle state – A toggle won’t work unless you’ve give a truth state

    @State private var value = 1
    @State private var size: CGFloat = 0.1
    var body: some View {
//
//              Toggle(isOn: $isShowing) {
//                    Text("Hello World")
//            }
//              .frame(width: 200, height: 50)
//        
//        Button(role: .destructive) {
//                   print("do something!")
//               } label: {
//                   HStack {
//                       Image(systemName: "trash")
//                       Text("")
//                   }
//               }
        NavigationView {
                   VStack {
                       Text("Current value: \(value)")
                       Stepper("Number of guests", value: $value, in:1...20)
                           .padding()
                       Text("Little Lemon").font(.system(size: size * 50))
                                         Slider(value: $size)
                      
                                     
                   }
                   .padding()
               .navigationTitle("Reservation form")
               .navigationBarTitleDisplayMode(.inline)
               }
//        VStack {
//                   Text("Little Lemon").font(.system(size: size * 50))
//                   Slider(value: $size)
//                   
//               }
//               .padding()
        }
}

#Preview {
    ContentView()
}
