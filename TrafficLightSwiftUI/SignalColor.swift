//
//  SignalColor.swift
//  TrafficLightSwiftUI
//
//  Created by MacBook Pro on 21.07.2020.
//  Copyright © 2020 Artem K. All rights reserved.
//

import SwiftUI



struct SignalColor: View {
    
        let red: Double
        let yellow: Double
        let green: Double
        
        var body: some View {
            VStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
                    .opacity(red)
                
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                    .opacity(yellow)
                
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                    .opacity(green)
            }
        }
    }

struct SignalColor_Previews: PreviewProvider {
    static var previews: some View {
        SignalColor(red: 1, yellow: 1, green: 1)
    }
}
