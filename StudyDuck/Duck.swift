//
//  Duck.swift
//  StudyDuck
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct Duck: View {
@State private var clickMe = "Click Me"
@State private var messages = ["You're working hard!", "Keep up the good work!", "You'll do great on the test!"]
func pickMsg() -> String {
    let random = Int.random(in: 0...2)
    let message = messages[random]
        return message
    }
    var body: some View {
        VStack {
            Button(clickMe) {
                let randomMesssge = pickMsg()
                clickMe = "\(randomMesssge)"
            }
            .font(.title)
        }
    }
}

struct Duck_Previews: PreviewProvider {
    static var previews: some View {
        Duck()
    }
}
