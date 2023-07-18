//
//  calculatedResultView.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct calculatedResultView: View {
    @State var startDate = Date()
    @State var endDate = Date()
    @State var subject : String
    
    var body: some View {
        Text("You should review \(subject) on... ")
        
    }
    
}

struct calculatedResultView_Previews: PreviewProvider {
    static var previews: some View {
        calculatedResultView(startDate: Date(), endDate: Date(), subject: "")
    }
}
