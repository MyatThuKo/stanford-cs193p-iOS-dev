//
//  CardView.swift
//  Memorize
//
//  Created by Myat Thu Ko on 5/31/21.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    @State var isFaceUp: Bool = true
    var content: String
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                ZStack {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 5)
                    Text(content)
                        .font(.largeTitle)
                }
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            self.isFaceUp.toggle()
        }
    }
}

// MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🚗")
    }
}
