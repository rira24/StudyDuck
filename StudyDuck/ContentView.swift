//
//  ContentView.swift
//  StudyDuck_homepage
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .ignoresSafeArea()
            
            VStack{
                Text("StudyDuck")
                    .font(.title)
                    .fontWeight(.bold)
              
                
                Button("Calendar") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.font(.title2)
                    .buttonStyle(.borderedProminent)
                   // .tint(.yellow)
                HStack{
                    Button("Today's Schedule") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.title2)
                        .buttonStyle(.borderedProminent)
                    // .tint(.yellow)
                    Button("Duck") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.title2)
                        .buttonStyle(.borderedProminent)
                        
                }
                
                HStack {
                    Button("Resources") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.title2)
                        .buttonStyle(.borderedProminent)
                      
                    
                    Button("Calculator") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.title2)
                        .buttonStyle(.borderedProminent)
                       // .tint(.yellow)
                    Button("Notes") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.font(.title2)
                        .buttonStyle(.borderedProminent)
                       // .tint(.yellow)
                }

            }
            
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
