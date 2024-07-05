//
//  ContentView.swift
//  Memory
//
//  Created by Salman Abdiaziz on 04/07/2024.
//

import SwiftUI




struct ContentView: View {
    let emojis: [String] = ["👻","🎃","🕷️","😈","😈"]
    var body: some View {

        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index], isFaceUp: true)
            }
        }
        .foregroundColor(.orange)
        .padding()
        

        }

    }




struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.stroke(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else{
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
