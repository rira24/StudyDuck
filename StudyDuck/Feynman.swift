//
//  Feynman.swift
//  StudyDuck
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Feynman: View {
    var body: some View {
        VStack{
            Text("Feynman Technique")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
                .frame(height: 20)
            
            Text("The Feynman Technique is used to understand a concept more and is effective when used with STEM and history. The first step is to learn the concept, then teach it, review it next, and lastly review it regularly with other study techniques.")
        }
        .padding()
    }
}

struct Feynman_Previews: PreviewProvider {
    static var previews: some View {
        Feynman()
    }
}
