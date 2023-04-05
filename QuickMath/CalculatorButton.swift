//
//  CalculatorButton.swift
//  QuickMath
//
//  Created by Cristi Sandu on 05.04.2023.
//

import SwiftUI

struct CalculatorButton: View {
    var buttonText: String = "1"
    var body: some View {
        Text(buttonText)
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.25))
            .foregroundColor(.white)
            .font(.largeTitle)
            .clipShape(RoundedRectangle(cornerRadius: 50))
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton()
    }
}
