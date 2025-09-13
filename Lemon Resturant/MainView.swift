//
//  MainView.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/13/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = true
    @State private var userName = ""
    
    var body: some View {
        NavigationView {
            if isLoggedIn == true {
                VStack {
                    Text("Welcome, \(userName)")
                        .font(.title)
                    
                    NavigationLink("About Us", destination: AboutView())
                    
                    Button("Logout") {
                        // todo
                        isLoggedIn = false
                        userName = ""
                    }
                }
                
            } else {
                LoginView(isLoggedIn: $isLoggedIn, userName: $userName)
            }
        }
    }
}

#Preview {
    MainView()
}
