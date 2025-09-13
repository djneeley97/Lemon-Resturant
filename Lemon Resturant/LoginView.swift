//
//  LoginView.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/13/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn:Bool
    @Binding var userName:String
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(10)
                
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Log In"){
                    print("Trying to log in")
                    
                    if userName == "Daniel" {
                        isLoggedIn = true
                    }
                }
            }
            .navigationTitle("Login")
        }
    }
}

//#Preview {
//   LoginView()
//}
