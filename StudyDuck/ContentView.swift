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
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.144, saturation: 0.272, brightness: 1.0))
                                            
                    Spacer().frame(height: 50)
                    NavigationLink(destination: calendar()) {  (Text("Calendar")
                        .foregroundColor(Color.black))
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.152, saturation: 0.256, brightness: 0.95))
                    HStack{
                        NavigationLink(destination: Schedule()) {  (Text("Schedule")
                                                                    
                            .foregroundColor(Color.black))
                        }
                        .tint(Color(hue: 0.152, saturation: 0.256, brightness: 0.95))
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        // .tint(.yellow)
                        NavigationLink(destination: Duck()) {
                            (Image("duckP1")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit) )
                            
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        
                    }.padding()
                    
                    //Spacer().frame(width:5)
                    //}
                }
                
                VStack {
                    HStack(spacing: 100.0) {
                        NavigationLink(destination: Resources()) {  (Image("book")
                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                                                                     
                        )
                        }
                        .font(.title2)
                        .background(Circle().foregroundColor(Color(.yellow)).frame(width: 100)
                            .frame(height: 90)
                        )
                        
                        NavigationLink(destination: Calculator()) {  (Image("calc")
                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        )
                        }
                        .font(.title2)
                        .background(Circle().foregroundColor(Color(.yellow)).frame(width: 100)
                            .frame(height: 90)
                        )
                        
                        NavigationLink(destination: Notes()) {  (Image("pencil")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        )
                            
                        }
                        .font(.title2)
                        .background(Circle().foregroundColor(Color(.yellow)  ).frame(width: 100)
                            .frame(height: 90))
                        
                        
                    } .padding()
                } .padding(.top, 670.00) .padding(.horizontal, 20.00)
                    
             //   }
                    
                
            }
        }
    }
}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

