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
            ZStack {
                Color(.systemGreen)
                    .ignoresSafeArea()
                VStack {
                    Group {
                        Text("Study Techniques")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: Pomodoro()) {
                            Text("Pomodoro Technique")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: SQ3R()) {
                            Text("S3QR Method")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                    }
                        NavigationLink(destination: ActiveRecall()) {
                            Text("Active Recall")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                    Group {
                        NavigationLink(destination: SpacedRepitition()) {
                            Text("Spaced Repition")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: Blurting()) {
                            Text("Blurting")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: Feynman()) {
                            Text("Feynman Technique")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                    }
                    
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

