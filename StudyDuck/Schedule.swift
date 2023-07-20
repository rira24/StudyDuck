//
//  Schedule.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Schedule: View {
    var body: some View {
        
         ZStack {
             Color(.systemGreen)
                 .ignoresSafeArea()
             
             
             VStack {
                 Spacer().frame(height: 30)
                 Text("Today's Schedule")
                     .font(.largeTitle)
                     .fontWeight(.bold)
                     .foregroundColor(Color.black)
             
                 
                 ZStack{
                  
                         RoundedRectangle(cornerRadius: 20).foregroundColor(Color(.white)).padding()
                     VStack{
                         Text("Friday, July 21, 2023").font(.title).fontWeight(.bold).padding()
                         
                         Text("9:00am - 9:30am: Wake Up")
                             .font(.title2)
                             .fontWeight(.medium)
                         Text("1:00pm: Demo Day!")
                             .font(.title2)
                             .fontWeight(.medium)
                         Spacer().frame(height: 450)
                     }
                 }

             }
             
             
             
         }.background(Rectangle().foregroundColor(Color(.white)))
        
         
         
         
     }
 }
    


struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
