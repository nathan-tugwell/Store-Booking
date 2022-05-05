//
//  BookingData.swift
//  StoreBooking
//
//  Created by Nathan Tugwell on 04/05/2022.
//

import Foundation

struct Bookings: Identifiable {
    var id = UUID()
    var name: String
    var reg: String
    var department: String
}

let testData = [
    Bookings(name: "Test 1", reg: "NT09QWE", department: "IT"),
    Bookings(name: "Test 2", reg: "NT09YUI", department: "Finance"),
    Bookings(name: "Test 3", reg: "NT09BGH", department: "HR"),
    Bookings(name: "Test 4", reg: "AD07YVD", department: "Servive Desk"),
    Bookings(name: "Test 5", reg: "QW09YUI", department: "CEO"),
]
