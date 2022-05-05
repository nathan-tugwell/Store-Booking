//
//  ContentView.swift
//  StoreBooking
//
//  Created by Nathan Tugwell on 14/04/2022.
//

import SwiftUI

let storedUsername = "Myusername"
let storedPassword = "Mypassword"

struct LoginView: View {
    
    @State var username: String = ""
    @State private var passcode: String = ""
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    var body: some View {
        NavigationView{
            VStack {
                UserImage()
                UsernameTextfield(username: $username)
                PasswordTextfield(passcode: $passcode)
                Button(action: {
                    
                    print("login tapped!")
                }){
                    NavigationLink(destination: BookingListView()){
                        LoginButtonContent()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct UserImage: View {
    var body: some View {
        return Image("Logo")
            .resizable()
            .aspectRatio(UIImage(named: "Logo")!.size, contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
    }
}

struct UsernameTextfield: View {
    @Binding var username: String
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View {
        return TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordTextfield: View {
    @Binding var passcode: String
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View {
        return SecureField("Password", text: $passcode)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct LoginButtonContent : View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
            .padding(.bottom, 20)
    }
}

