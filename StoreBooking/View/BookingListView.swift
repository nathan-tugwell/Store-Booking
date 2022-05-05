//
//  ListView.swift
//  StoreBooking
//
//  Created by Nathan Tugwell on 03/05/2022.
//

import SwiftUI

struct BookingListView: View {
    var bookings: [Bookings] = testData
    
    var body: some View {
            List(bookings, id: \.id) { booking in
                return NavigationLink(destination: BookingDetailScreen(name: booking.name, reg: booking.reg, department: booking.department)) {
                BookingCell(booking: booking)
            }.navigationTitle(Text("Bookings"))
        }
    }
}

struct BookingCell : View {
    let booking: Bookings
    var body: some View {
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(booking.name)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("Reg: \(booking.reg)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("Department: \(booking.department)")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
    }

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        BookingListView(bookings: testData)
    }
}
