//
//  TextValue.swift
//  QuickMath
//
//  Created by Cristi Sandu on 05.04.2023.
//

import SwiftUI

struct TextValue: View {
    var value: String = "0"
    var body: some View {
        Text(value)
            .foregroundColor(.white)
            .font(.system(size: 60))
            .fontWeight(.light)
            .padding()
    }
}

struct TextValue_Previews: PreviewProvider {
    static var previews: some View {
        TextValue()
            .background(.black)
    }
}
