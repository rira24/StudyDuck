//
//  ContentView.swift
//  StudyDuck_homepage
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGreen)
                    .ignoresSafeArea()
                
                VStack{
                    Text("StudyDuck")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                    NavigationLink(destination: calendar()) {  (Text("Calendar"))
                    }
                    .font(.title2)
                        .buttonStyle(.borderedProminent)
                    // .tint(.yellow)
                    HStack{
                        NavigationLink(destination: Schedule()) {  (Text("Schedule"))
                        }
                        .font(.title2)
                            .buttonStyle(.borderedProminent)
                        // .tint(.yellow)
                        NavigationLink(destination: Duck()) {  (Text("Duck"))
                        }
                        .font(.title2)
                            .buttonStyle(.borderedProminent)
                        // .tint(.yellow)
                        
                    }
                    
                    HStack {
                        NavigationLink(destination: Resources()) {  (Text("Resources"))
                        }
                        .font(.title2)
                            .buttonStyle(.borderedProminent)
                        // .tint(.yellow)
                        
                        
                        NavigationLink(destination: Calculator()) {  (Text("Calculator"))
                        }
                        .font(.title2)
                             .buttonStyle(.borderedProminent)
                         // .tint(.yellow)
                        
                        NavigationLink(destination: Notes()) {  (Text("Notes"))
                        }
                        .font(.title2)
                            .buttonStyle(.borderedProminent)
                        // .tint(.yellow)
                    }
                    
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

