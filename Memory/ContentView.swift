//
//  ContentView.swift
//  Memory
//
//  Created by Salman Abdiaziz on 04/07/2024.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
        

        }

    }




struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.stroke(lineWidth: 2)
                Text("👻").font(.largeTitle)
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
