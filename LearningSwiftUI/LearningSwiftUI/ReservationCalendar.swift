//
//  ReservationCalendar.swift
//  LearningSwiftUI
//
//  Created by Sujeet Kumar on 04/12/23.
//

import SwiftUI

struct ReservationCalendar: View {
    @State private var reservationDate = Date()
//    var body: some View {
//        Form {
//            HStack {
//                DatePicker(selection: $reservationDate, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ }
//                )
//                Button(action: { print("do something!") }) {
//                       HStack {
//                           Image(systemName: "arrow.right.circle")
//                           Text("Done")
//                       }
//                   }.padding(20)
//            }
//            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
//    }
//    }
    
    var body: some View {
         Form {
             HStack {
                 DatePicker(
                     selection: $reservationDate, in: Date()...,
                     displayedComponents: [.date, .hourAndMinute]
                 ) {}
                 Button(action: { print("do something!") }) {
                     HStack {
                         Image(systemName: "arrow.right.circle")
                         Text("Done")
                     }
                 }.padding(20)
             }
             Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
         }
     }
}

#Preview {
    ReservationCalendar()
}
