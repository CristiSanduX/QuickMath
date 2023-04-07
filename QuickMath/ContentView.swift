//
//  ContentView.swift
//  QuickMath
//
//  Created by Cristi Sandu on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State var currentValue = "0"
    var body: some View {
        ZStack {
            Color(.black)
            
            VStack {
                TextValue(value: currentValue)
                HStack {
                    CalculatorButton(action: didPressNumber)
                    CalculatorButton(buttonText: "2", action: didPressNumber)
                    CalculatorButton(buttonText: "3", action: didPressNumber)
                    CalculatorButton(buttonText: "+", color: .orange, action: didPressOperation)
                }
                HStack {
                    CalculatorButton(buttonText: "4", action: didPressNumber)
                    CalculatorButton(buttonText: "5", action: didPressNumber)
                    CalculatorButton(buttonText: "6", action: didPressNumber)
                    CalculatorButton(buttonText: "-", color: .orange, action: didPressOperation)
                }
                HStack {
                    CalculatorButton(buttonText: "7", action: didPressNumber)
                    CalculatorButton(buttonText: "8", action: didPressNumber)
                    CalculatorButton(buttonText: "9", action: didPressNumber)
                    CalculatorButton(buttonText: "x", color: .orange, action: didPressOperation)
                }
                HStack {
                    CalculatorButton(buttonText: "0", width: 190, action: didPressNumber)
                    CalculatorButton(buttonText: "C",color: .gray, action: didPressClear)
                    CalculatorButton(buttonText: "=", color: .orange, action: didPressEqual)
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func didPressNumber(button: CalculatorButton) {
        if let parsedValue = Int(currentValue+button.buttonText) {
            currentValue = "\(parsedValue)"
        }
        else {
            currentValue = "Error"
        }
    }
    func didPressOperation(button: CalculatorButton) {
        
    }
    func didPressEqual(button: CalculatorButton) {
        
    }
    func didPressClear(button: CalculatorButton) {
        currentValue = "0"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
