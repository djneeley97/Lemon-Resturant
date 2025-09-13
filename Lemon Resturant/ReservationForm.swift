//
//  ReservationForm.swift
//  Lemon Resturant
//
//  Created by daniel neeley on 9/10/25.
//

import SwiftUI

struct ReservationForm: View {
    @State var userName=""
    @State var guestCount = 1
    
    var body: some View {
        Form{
            Section(header: Text("Reservation Details")){
                TextField("Name: ", text: $userName)
                
                if userName == "" {
                    Text("Please enter your name")
                        .foregroundColor(.red)
                }
                
                
                Stepper("Guest: \(guestCount) ", value: $guestCount, in: 1 ... 5)
                
                if guestCount >= 5 {
                    Text("We will contact you about large parties")
                        .foregroundColor(.orange)
                }
                
                Button("Confirm Reservation"){
                    
                }
                .disabled(userName == "")
            }
        }
    }
}

#Preview {
    ReservationForm()
}
