//
//  ContentView.swift
//  BetterRest
//
//  Created by jatin foujdar on 15/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount) hours", value : $sleepAmount)
    }
}

#Preview {
    ContentView()
}
