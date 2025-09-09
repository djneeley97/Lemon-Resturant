//
//  ContentView.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("littlelemonlogo")
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
                Text("Hello, world!")
                    .padding()
                NavigationLink(destination:AboutView()){
                    Text("About")
                        .foregroundStyle(.blue)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
