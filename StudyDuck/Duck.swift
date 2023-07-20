//
//  Duck.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Duck: View {
@State private var clickMe = "Message from Dave: Click Me"
@State private var messages = ["You're working hard!", "Keep up the good work!", "You'll do great on the test!","You got this, remember to take breaks!","You're doing great :)","I believe in you!!","I think you're amazing","Starting is always hard, don't worry too much!","Don't give up, remember success is not a straight line","I know you'll get through this","Quack quack, that means you're awesome in Duck","You will do great things in life"]
func pickMsg() -> String {
    let random = Int.random(in: 0...messages.count)
    let message = messages[random]
        return message
    }
    var body: some View {
        ZStack{
            Color(.systemGreen)
                .ignoresSafeArea()
            
          
            VStack {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20).foregroundColor(Color(.white)).padding()
                    Button(clickMe) {
                        let randomMesssge = pickMsg()
                        clickMe = "\(randomMesssge)"
                    }
                }
                
                .padding(/*@START_MENU_TOKEN@*/.top, 60.0/*@END_MENU_TOKEN@*/)
                .font(.title)
                
                Text("Dave The Duck")
                //make bigger and bolder
                
                Image("duckTwo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .padding(/*@START_MENU_TOKEN@*/.all, 90.0/*@END_MENU_TOKEN@*/)
                    
            }
            
        }
            
            
            
            
    }
}

struct Duck_Previews: PreviewProvider {
    static var previews: some View {
        Duck()
    }
}
