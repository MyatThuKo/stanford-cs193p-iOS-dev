//
//  ContentView.swift
//  Memorize
//
//  Created by Myat Thu Ko on 5/31/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State var emojiList = ["🚗", "🚕", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚜", "🚝", "✈️", "🚂", "🚀", "🛸", "🚁", "🛵", "🏍", "🛶", "🛳", "🚢", "🛰", "🚋", "🚲", "🛴"]
    
    @State private var emojiCount = 10
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
                    ForEach(emojiList[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .padding()
                .foregroundColor(.red)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    self.emojiList = ["🚗", "🚕", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚜", "🚝", "✈️", "🚂", "🚀", "🛸", "🚁", "🛵", "🏍", "🛶", "🛳", "🚢", "🛰", "🚋", "🚲", "🛴"].shuffled()
                    self.emojiCount = Int.random(in: 4..<emojiList.count)
                }, label: {
                    VStack {
                        Image(systemName: "car")
                            .font(.system(size: 18))
                        Text("Vehicles")
                            .font(.system(size: 16))
                    }
                })
                
                Spacer()
                
                Button(action: {
                    self.emojiList = ["👮‍♀️", "👮‍♂️", "👷‍♀️", "👷‍♂️", "💂‍♀️", "💂‍♂️", "🧑‍⚕️", "👨‍⚕️", "🧑‍🍳", "👨‍🍳", "👩‍🏫", "👨‍🏫", "👨‍💻", "👩‍💻", "🧑‍🔬", "👨‍🔬", "👩‍🚀", "👨‍🚀", "👩‍⚖️", "👨‍⚖️", "🤵‍♀️", "🤵‍♂️"].shuffled()
                    self.emojiCount = Int.random(in: 4..<emojiList.count)
                }, label: {
                    VStack {
                        Image(systemName: "figure.stand")
                            .font(.system(size: 18))
                        Text("People")
                            .font(.system(size: 16))
                    }
                })
                
                Spacer()
                
                Button(action: {
                    self.emojiList = ["❤️", "💙", "💜", "🧡", "💚", "💛", "🖤", "🤎", "💖", "❤️‍🔥", "💔", "❣️", "💘", "💝"].shuffled()
                    self.emojiCount = Int.random(in: 4..<emojiList.count)
                }, label: {
                    VStack {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 18))
                        Text("Hearts")
                            .font(.system(size: 16))
                    }
                })
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
