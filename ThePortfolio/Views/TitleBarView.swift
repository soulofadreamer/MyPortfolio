//
//  TitleBarView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 27/10/23.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .foregroundStyle(configuration.isPressed ? .clear : .gray)
            .opacity(configuration.isPressed ? 1.0 : 1.0)
        
    }
}



struct TitleBarView: View {
    
    @State var isTapped: Bool = false
    
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(.clear)
            .opacity(0.6)
            .frame(height: 250)
        
            .overlay {
                VStack(spacing: 20) {
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.blue)
                        .opacity(0.6)
                        .shadow(color: .gray.opacity(0.5), radius: 10, x: -4, y: -3)
                        .shadow(color: .gray.opacity(0.2), radius: 15, x: 9, y: 9)
                        .overlay(content: {
                            Image("Sunil")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 240)
                                .position(x: 75, y: 100)
                                .clipShape(Circle())
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        
                                        isTapped.toggle()
                                    }
                                }
                            
                            
                        })
                    
                    
                    if isTapped {
                        TheProfileView()
                            .transition(.offset(y: 15).combined(with: .opacity).animation(.easeInOut(duration: 1)))
                            .animation(.bouncy, value: 2)
                    }
                   
                    
                }
            }
        
        
    }
}

#Preview {
    TitleBarView()
}
