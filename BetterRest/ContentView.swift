//
//  ContentView.swift
//  BetterRest
//
//  Created by jatin foujdar on 15/10/24.
//

import SwiftUI
import CoreML

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    @State private var coffeeAmount = 1
    var body: some View {
        NavigationStack{
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                
                DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                
                Stepper("\(sleepAmount.formatted()) hours", value : $sleepAmount, in: 4...12,step: 0.25)
                
                Text("Daily coffee intake")
                    .font(.headline)
                
                Stepper("\(coffeeAmount) cup(s)",value: $coffeeAmount , in: 1...20)
            }
            .navigationTitle("Better Text")
            .toolbar{
                Button("Calculate", action: calculatedBedtime)
            }
          }
        }
    func calculatedBedtime(){
        do{
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
        } catch{
            
        }
     }
    }


#Preview {
    ContentView()
}
