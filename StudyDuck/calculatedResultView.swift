//
//  calculatedResultView.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
import Foundation

struct calculatedResultView: View {
    @State var timeBetween = 0
    @State var subject : String
    @State var array = [Int]()
    @State var prevNum = 0
    @State var nextNum = 0
    @State var startDate = Date()
    @State var timeInterval = 0.0
    @State var startDateInSecs = 0
    @State var currentDateHolder = 0
    let dateFormatter = DateFormatter()
    @State var studyDaysArray = [String]()
    @State var clicked = false
    @State var buttonName = "Calculate"
   
    var body: some View {
        ZStack{
            Color(.systemGreen)
                .ignoresSafeArea()
            VStack(spacing: 50.0){
                Button(buttonName){
                    buttonName = ""
                    clicked = true
                    prevNum=timeBetween/(3600*24)
                    array.append(prevNum)
                    repeat {
                        
                        nextNum=prevNum/2
                        array.append(nextNum)
                        prevNum = nextNum
                    }while(prevNum>1)
                    
                    dateFormatter.dateFormat = "YY, MMM d"
                    timeInterval = startDate.timeIntervalSince1970
                    startDateInSecs = Int(timeInterval)
                    currentDateHolder = 0
                    for day in array{
                        currentDateHolder = startDateInSecs + (day*3600*24)
                        studyDaysArray.append(dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(currentDateHolder))))
                        
                    }
                }
                Text("You should review \(subject) on... ")
                if clicked{
                    if((timeBetween/(3600*24))==0){
                        Text("WHAT? Study today!!")
                        Text("Your test is soon, better start reviewing!")
                    }else if((timeBetween/(3600*24))==1){
                        ForEach(studyDaysArray, id: \.self){studyDay in
                            Text(studyDay)
                        }
                        Text("You have \(timeBetween/(60*60*24)) day before your test!")
                    }else{
                        ForEach(studyDaysArray, id: \.self){studyDay in
                            Text(studyDay)
                        }
                        Text("You have \(timeBetween/(60*60*24)) days before your test!")
                    }
                    
                }
            }
        }
    }
}

struct calculatedResultView_Previews: PreviewProvider {
    static var previews: some View {
        calculatedResultView(timeBetween: 0,subject: "",startDate: Date())
    }
}
