//
//  Calculator.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Calculator: View {
    @State var clicked=false
    @State var subject=""
    @State private var dateLearned = Date()
    @State private var dateTest = Date()
    @State var isDifficult = false
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 40.0) {
               
                Text("Calculate my schedule")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                HStack(spacing: 40.0){
                    
                
                    VStack{
                        Text("Date learned")
                            .multilineTextAlignment(.leading)
                        DatePicker(selection: $dateLearned, displayedComponents: .date, label: {  })
                            .padding()
                    }
                    VStack{
                        Text("Test Date")
                            .multilineTextAlignment(.center)
                        DatePicker(selection: $dateTest, displayedComponents: .date, label: {  }).padding()
                        
                    }
                }
                HStack{
                    VStack{
                        Text("Subject")
                            .multilineTextAlignment(.leading)
                        TextField("Type here...", text: $subject).multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    Toggle(isOn: $isDifficult) {
                        Text("Is it difficult?")
                            .multilineTextAlignment(.center)
                    }
                }
                
                VStack{
                    Text("Content")
                        .multilineTextAlignment(.leading)
                    TextField("Type here...", text: $subject).multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Button("Calculate"){
                    clicked=true
                }
            } .padding()
        }

        if clicked{
            calculatedResultView(startDate: self.dateLearned, endDate: self.dateTest, subject: self.subject)
        }
       
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}
