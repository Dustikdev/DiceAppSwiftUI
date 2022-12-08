//
//  ContentView.swift
//  DiceAppSwiftUI
//
//  Created by Никита Швец on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                        .padding(.trailing)
                    DiceView(n: rightDiceNumber)
                        .padding(.leading)
                }
                .padding(.horizontal, 30.0)
                Spacer()
                Button("Roll") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .padding()
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(Color.red)
                Spacer()
            }
                
        }
    }
}

struct DiceView: View {
    
    var n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

