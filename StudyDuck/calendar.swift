//
//  calendar.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct calendar: View {
    var body: some View {
        ZStack{
            Color("greenBackground")
                .ignoresSafeArea()
            Image("calendar")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct calendar_Previews: PreviewProvider {
    static var previews: some View {
        calendar()
    }
}
