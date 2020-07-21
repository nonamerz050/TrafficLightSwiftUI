//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by MacBook Pro on 21.07.2020.
//  Copyright © 2020 Artem K. All rights reserved.
//

import SwiftUI

enum CurrentColor {
    case red
    case yellow
    case green
}

struct Trafficlight: View {
    
    @State private var currentColor = CurrentColor.red
    @State private var textButton = "START"
    @State private var colorButton = Color.blue
    
    @State private var red = 0.3
    @State private var yellow = 0.3
    @State private var green = 0.3
    
    var body: some View {
        VStack {
            ZStack {
                Color(.black)
                    .frame(width: 150, height: 400, alignment: .center)
                    .border(Color.gray, width: 3)
                SignalColor(red: red, yellow: yellow, green: green)
            }
            
            Spacer()
            
            Button(action: { self.setColor() }) {
                Text( textButton )
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .foregroundColor(.black)
                    .background(colorButton)
                    .font(.title)
                    .padding(3)
                    .border(colorButton, width: 2)
            }
        }
    }
    
    private func setColor() {

        switch currentColor {
        case .red:
            textButton = "NEXT"
            green = 0.3
            red = 1.0
            colorButton = .yellow
            currentColor = .yellow
        case .yellow:
            red = 0.3
            yellow = 1.0
            colorButton = .green
            currentColor = .green
        case .green:
            yellow = 0.3
            green = 1.0
            colorButton = .red
            currentColor = .red
        }
    }
}

struct Trafficlight_Previews: PreviewProvider {
    static var previews: some View {
        Trafficlight()
    }
}
