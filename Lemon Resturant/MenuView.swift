//
//  MenuView.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/17/25.
//

import SwiftUI

struct MenuView: View {
    
    
        let menuItems = [
            "Burger": 8.99,
            "Pasta": 12.99,
            "Salad": 6.99,
            "Steak": 18.00,
            "Soup": 5.00,
            "Tacos": 9.00
        ]
        
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName:"fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Todays menu")
                    .font(.largeTitle)
            }
            .padding()
            List{
                ForEach(menuItems.sorted(by:{ $0.key < $1.key}),id: \.key){ (name,price) in
                    HStack{
                        VStack{
                            Text(name)
                                .font(.headline)
                            Text("$\(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        if price > 10{
                        HStack{
                            Image(systemName:"star.fill")
                                .foregroundColor(Color(.systemYellow))
                            Text("Premium")
                                .font(.caption)
                        }
                        .foregroundColor(.orange)
                        .padding(6)
                        .background(Color.orange.opacity(0.2))
                        .cornerRadius(6)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
