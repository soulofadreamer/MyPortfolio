//
//  SkillSetView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 28/10/23.
//

import SwiftUI


struct SkillSetView: View {
    @State private var isBlue = false
    var allSkills: AllSkills
    var body: some View {
        
        GeometryReader { geo in
            
            Button(action: {
                
            }, label: {
                ZStack(alignment: .leading){
                    Capsule()
                        .fill(isBlue ? Color.blue : Color.clear)
                        .overlay(content: {
                            Capsule()
                                .stroke(Color.accentColor )
                        })
                        .frame(width: geo.size.width, height: 40)
    //                    .onAppear {
    //                        // Start a timer that changes the color every 1 seconds
    //                      /*  Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
    //                            withAnimation {
    //                                isBlue.toggle()
    //
    //                            }
    //                        }
    //                       */
    //                    }
                    Text(allSkills.skill)
                        .padding(.horizontal)
                        .font(.subheadline)
                        .foregroundStyle(.foreground)
                        
                    
                }
            })
            .buttonStyle(PressableButtonStyle())
            
            
        }
    }
}

#Preview {
    SkillSetView(allSkills: AllSkills(skill: "SwiftUI"))
}
