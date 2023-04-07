//
//  ContentView.swift
//  QuickMath
//
//  Created by Cristi Sandu on 05.04.2023.
//

import SwiftUI

enum CalculatorMode {
    case notSet
    case addition
    case subtraction
    case multiplication
}

struct ContentView: View {
    @State var currentValue = "0"
    @State var currentMode: CalculatorMode = .notSet
    @State var lastButtonWasMode: Bool = false
    @State var savedNumber = 0
    @State var currentValueInt = 0
    var body: some View {
        ZStack {
            Color(.black)
            
            VStack {
                TextValue(value: currentValue)
                HStack {
                    CalculatorButton(action: didPressNumber)
                    CalculatorButton(buttonText: "2", action: didPressNumber)
                    CalculatorButton(buttonText: "3", action: didPressNumber)
                    CalculatorButton(buttonText: "+", color: .orange, action: didPressMode, mode: .addition)
                }
                HStack {
                    CalculatorButton(buttonText: "4", action: didPressNumber)
                    CalculatorButton(buttonText: "5", action: didPressNumber)
                    CalculatorButton(buttonText: "6", action: didPressNumber)
                    CalculatorButton(buttonText: "-", color: .orange, action: didPressMode, mode: .subtraction)
                }
                HStack {
                    CalculatorButton(buttonText: "7", action: didPressNumber)
                    CalculatorButton(buttonText: "8", action: didPressNumber)
                    CalculatorButton(buttonText: "9", action: didPressNumber)
                    CalculatorButton(buttonText: "x", color: .orange, action: didPressMode, mode: .multiplication)
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
        if lastButtonWasMode {
            lastButtonWasMode = false
            currentValueInt = 0
        }
        
        if let parsedValue = Int("\(currentValueInt)"+button.buttonText) {
            currentValueInt = parsedValue
            updateText()
        }
        else {
            currentValue = "Error"
            currentValueInt = 0
        }
    }
    func didPressMode(button: CalculatorButton) {
        currentMode = button.mode
        lastButtonWasMode = true
    }
    func didPressEqual(button: CalculatorButton) {
        if currentMode == .notSet || lastButtonWasMode {
            return
        }
    }
    func didPressClear(button: CalculatorButton) {
        currentValue = "0"
    }
    func updateText() {
        if currentMode == .notSet {
            savedNumber = currentValueInt
        }
        currentValue = "\(currentValueInt)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
