//
//  Feynman.swift
//  StudyDuck
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Feynman: View {
    var body: some View {
        ZStack{
            Color(.systemGreen)
                .ignoresSafeArea()
            VStack{
                Text("Feynman Technique")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                    .frame(height: 20)
                
                Text("\nThe Feynman Technique is used to understand a concept more and is effective when used with STEM and history. The first step is to learn the concept, then teach it, review it next, and lastly review it regularly with other study techniques.\n")
                    
                    .multilineTextAlignment(.center)
                    .background(Rectangle().foregroundColor(.white)).shadow(radius: 15)
                    .cornerRadius(15)
                    .padding()
                    
                    
                
            }
            .padding()
            
        }
    }
}

struct Feynman_Previews: PreviewProvider {
    static var previews: some View {
        Feynman()
    }
}
