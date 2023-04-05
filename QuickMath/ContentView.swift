//
//  ContentView.swift
//  QuickMath
//
//  Created by Cristi Sandu on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
            
            VStack {
                TextValue()
                HStack {
                    CalculatorButton()
                    CalculatorButton(buttonText: "2")
                    CalculatorButton(buttonText: "3")
                    CalculatorButton(buttonText: "+", color: .orange)
                }
                HStack {
                    CalculatorButton(buttonText: "4")
                    CalculatorButton(buttonText: "5")
                    CalculatorButton(buttonText: "6")
                    CalculatorButton(buttonText: "-", color: .orange)
                }
                HStack {
                    CalculatorButton(buttonText: "7")
                    CalculatorButton(buttonText: "8")
                    CalculatorButton(buttonText: "9")
                    CalculatorButton(buttonText: "x", color: .orange)
                }
                HStack {
                    CalculatorButton(buttonText: "0",width: 190)
                    CalculatorButton(buttonText: "C",color: .gray)
                    CalculatorButton(buttonText: "=", color: .orange)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
