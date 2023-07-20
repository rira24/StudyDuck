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
    @State var timeInBetween = 0
    @State var content = ""
    @State var buttonName = "Input data"
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color(.systemGreen)
                    .ignoresSafeArea()
                VStack(spacing: 40.0) {
                   
                    Text("Calculate my schedule")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    
                    HStack{
                        VStack{
                            Text("Subject")
                                .multilineTextAlignment(.leading)
                            TextField("Type here...", text: $subject).multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        }
                    }
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
                   
                    
                    VStack{
                        Text("Content")
                            .multilineTextAlignment(.leading)
                        TextField("Type here...", text: $content).multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    NavigationLink(destination: calculatedResultView(timeBetween: Int(dateTest.timeIntervalSinceReferenceDate - dateLearned.timeIntervalSinceReferenceDate), subject: self.subject, startDate: self.dateLearned)) {
                        Text("Input data")
                    }
                }.padding()//end of vstack
                    
            }//end of zstack
        }//end of navigation stack
    }
}

struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}
