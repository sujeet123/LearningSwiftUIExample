//
//  ParentView.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 13/12/23.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(.brown)
                .frame(width: 50,height: 50)
            Text("Rectangle One")
                .foregroundStyle(.white)
                .padding(20)
                .background(.yellow)
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 30)
        }
    }
}

#Preview {
    ParentView()
}
