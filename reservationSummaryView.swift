//
//  reservationSummaryView.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/15/25.
//

import SwiftUI

struct reservationSummaryView: View {
    @Binding var name: String
    @Binding var guest: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing:10){
            Text("Reservation Summary").font(.title)
            Text("Name: \(name)")
            Text("Guest: \(guest)")
        }
    }
}

//#Preview {
//    reservationSummaryView()
//}
