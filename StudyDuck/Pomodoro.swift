//
//  Pomodoro.swift
//  StudyDuck
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Pomodoro: View {
    var body: some View {
        ZStack{
            Color("lighterGreen")
                .ignoresSafeArea()
            VStack{
                Text("Pomodoro Technique")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                    .frame(height: 20)
                
                Text("\nThe Pomodoro Technique is a time management method. The method is used while studying for a while then taking a short break; a longer break is then added when studying for an hour. An example would be studying for 25 minutes then taking a 5 minute break. After doing this 4 times, take a 15 minute break then move on to the next subject. You can make your own routine by basing it off on how long and how much you want to study a certain subject;  you don’t have to stick to the 25/5 method.  The Pomodoro Technique is effective because it gives motivation and helps fight against distractions. \n")
                    
                    .multilineTextAlignment(.center)
                    .background(Rectangle().foregroundColor(.white)).shadow(radius: 15)
                    .cornerRadius(15)
                    .padding()
                    
                    
                
            }
            .padding()
            
        }
    }
}

struct Pomodoro_Previews: PreviewProvider {
    static var previews: some View {
        Pomodoro()
    }
}
