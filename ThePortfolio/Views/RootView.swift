//
//  ContentView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 26/10/23.
//

import SwiftUI


struct ParabolaShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: rect.size.height))
            path.addQuadCurve(to: CGPoint(x: rect.size.width, y: rect.size.height), control: CGPoint(x: rect.size.width / 2, y: 0))
        }
    }
}


struct RootView: View {
    
    @State private var isTapped: Bool = false
    
    var body: some View {
        
        ZStack{
            
            BackgroundView()
            
            GeometryReader { geo in
                
                
                VStack(spacing: 10) {
                    
                    TitleBarView()
                    ScrollView {
                        AllSkillsView()
                    }
                    
                }
                .frame(height: .infinity)
                
            }
        }
        .padding(.horizontal, 10)
        
    }
    
}


#Preview {
    RootView()
}
