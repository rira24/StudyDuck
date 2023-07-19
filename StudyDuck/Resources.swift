//
//  Resources.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        NavigationStack {
            ZStack{
                VStack {
                    
                    Text("Study Techniques")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                }
            }
        }
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
