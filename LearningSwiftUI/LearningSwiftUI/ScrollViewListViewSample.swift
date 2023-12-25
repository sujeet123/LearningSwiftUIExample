//
//  ScrollViewListViewSample.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 17/12/23.
//

import SwiftUI

struct ScrollViewListViewSample: View {
    let elements = ["Reservation", "Contacts", "Restaurant Locations"]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Important Information")) {
                    Text("This List shows information about our restaurant pages")
                        .font(.headline)
                }
                
                ForEach( elements, id: \.self) { element in
                    NavigationLink(destination: ContentView()) {
                        Text(element.description.capitalized)
                    }
                }
                
                Section(footer: Text("More Information")) {
                    Text("Contact us as (212) 555 3231")
                        .font(.headline)
                }
            }
            .padding()
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    ScrollViewListViewSample()
}
