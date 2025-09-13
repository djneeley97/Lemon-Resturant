//
//  AboutView.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/8/25.
//

import SwiftUI

struct AboutView: View {
    
    let userName = "Daniel"
    @State var orders = 0
    @State var customerName = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome \(userName) to Little Lemon")
                    .font(.title)
                
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding()
                Text("You have ordered \(orders) times")
                Button("Order Again"){
                    orders += 1
                }
                .padding(10)
                Button("Reset"){
                    orders = 0
                }
                .padding(10)
                TextField("Enter customer name", text: $customerName)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                Text("Hi, \(customerName)")
            }
            .navigationTitle("About Us")
        }
    }
}
#Preview {
    AboutView()
}

