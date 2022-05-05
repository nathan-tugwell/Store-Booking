//
//  BookingDetailScreen.swift
//  StoreBooking
//
//  Created by Nathan Tugwell on 04/05/2022.
//

import SwiftUI

struct BookingDetailScreen: View {
    @State var name: String
    @State var reg: String
    @State var department: String
    @State private var didTap: Bool = false
    @State private var showingPopUp = false
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            DetailsView(name: $name, reg: $reg, department: $department)
            Button(action: {
                showingPopUp = true
            }) {
                CheckInButtonContent()
            }
            
            .alert("Checked in", isPresented: $showingPopUp) {
                Button("Ok") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
            
            }.padding().navigationBarTitle(Text(name), displayMode: .inline)
        }
    }

struct DetailsView : View {
    @Binding var name: String
    @Binding var reg: String
    @Binding var department: String
    var body: some View {
        Text("Booking Details")
        Text(name)
            .font(.title)
        Text(reg)
            .font(.headline)
            .multilineTextAlignment(.center)
            .lineLimit(50)
        Text(department)
            .font(.headline)
            .multilineTextAlignment(.center)
            .lineLimit(50)
    }
}

struct CheckInButtonContent : View {
    var body: some View {
        return Text("Check In")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
