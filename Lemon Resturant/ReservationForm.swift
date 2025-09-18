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
    @State var allergyNotes=""
    @State var showSummary = false
    @State var reservationDate = Date()
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Reservation Details")){
                    TextField("Name ", text: $userName)
                    
                    if userName == "" {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                    }
                    
                    Stepper("Guest: \(guestCount) ", value: $guestCount, in: 1 ... 5)
                    if guestCount >= 5 {
                        Text("We will contact you about large parties")
                            .foregroundColor(.orange)
                    }
                    
                    DatePicker("Date",selection:$reservationDate)
                        
                    TextField("Allergy Notes",text: $allergyNotes)
                        
                    Button("Confirm Reservation"){
                            if !userName.isEmpty{
                                showSummary=true
                            }
                        }
                        .disabled(userName.isEmpty)
                        .navigationDestination(isPresented: $showSummary){
                            reservationSummaryView(name: $userName, guest:$guestCount)
                    }
                }
            }
        }
    }
}
#Preview {
    ReservationForm()
}
