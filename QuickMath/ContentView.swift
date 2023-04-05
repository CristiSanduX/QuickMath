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
            TextValue()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
