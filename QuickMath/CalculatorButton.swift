//
//  CalculatorButton.swift
//  QuickMath
//
//  Created by Cristi Sandu on 05.04.2023.
//

import SwiftUI

struct CalculatorButton: View {
    var buttonText: String = "1"
    var color: Color = Color(hue: 1.0, saturation: 0.0, brightness: 0.25)
    var width: CGFloat = 90
    var body: some View {
        Text(buttonText)
            .frame(width: width, height: 90, alignment: .center)
            .background(color)
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
