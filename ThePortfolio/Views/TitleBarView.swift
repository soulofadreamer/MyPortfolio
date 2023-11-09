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
            .frame(height: isTapped ? 270 : 170)
            .transition(.offset(y: 25).combined(with: .opacity).animation(.bouncy(duration: 1)))
        
            .overlay {
                VStack(spacing: 20) {
                    
                    Circle()
                        .frame(width: isTapped ? 150 : 170, height: isTapped ? 150 : 170)
                        .foregroundStyle(.blue)
                        .opacity(0.6)
                        .shadow(color: .gray.opacity(0.5), radius: 10, x: -4, y: -3)
                        .shadow(color: .gray.opacity(0.2), radius: 15, x: 9, y: 9)
                        .overlay(content: {
                            Image("Sunil")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: isTapped ? 150 : 170, height: isTapped ? 240 : 240)
                                .position(x: isTapped ? 75 : 85, y: isTapped ? 100 : 108)
                                .clipShape(Circle())
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        
                                        isTapped.toggle()
                                    }
                                }
                            
                            
                        })
                    
                    
                    if isTapped {
                        
                        
                        TheProfileView()
                            .transition(.asymmetric(insertion: .offset(y: -15).combined(with: .opacity).animation(.easeInOut(duration: 1.5)), removal: .opacity.animation(.easeInOut(duration: 0.5))) )
                            .animation(.easeInOut, value: 2)
                            .layoutPriority(1)
                        
                    }
                    
                    
                }
            }
            .padding(.vertical)
        
        
    }
}

#Preview {
    TitleBarView()
}
