//
//  BackgroundView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 31/10/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        ParabolaShape()
            .stroke(lineWidth: 0.5)
            .rotation(Angle(degrees: 90.0))
            .foregroundStyle(Color(hue: 0.512, saturation: 0.945, brightness: 0.74))
            .position(x: 350, y: 10)
            .ignoresSafeArea()
        
        ParabolaShape()
            .rotation(Angle(degrees: -90.0))
            .stroke(lineWidth: 0.5)
            .foregroundStyle(Color(hue: 0.089, saturation: 0.768, brightness: 0.946))
            .position(x: -40, y: 300)
            .ignoresSafeArea()
        
        ParabolaShape()
            .stroke(lineWidth: 0.5)
            .rotation(Angle(degrees: 90.0))
            .foregroundStyle(Color(hue: 0.512, saturation: 0.945, brightness: 0.74))
            .position(x: 390, y: 590)
            .ignoresSafeArea()
        
        ParabolaShape()
            .rotation(Angle(degrees: -90.0))
            .stroke(lineWidth: 0.5)
            .foregroundStyle(Color(hue: 0.089, saturation: 0.768, brightness: 0.946))
            .position(x: -40, y: 900)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
