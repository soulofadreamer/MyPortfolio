//
//  SkillSetView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 28/10/23.
//

import SwiftUI


struct SkillSetView: View {
    @State private var showExpanded = false
    var allSkills: AllSkills
    var body: some View {
        
        GeometryReader { geo in
            
            Button(action: {
                withAnimation(.easeInOut(duration: 1)) {
                    showExpanded.toggle()
                }
                
                
            }, label: {
                if !showExpanded {
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(showExpanded ? Color.blue : Color.clear)
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.accentColor )
                            })
                            .frame(width: geo.size.width, height: 40)
                        
                        Text(allSkills.skill)
                            .padding(.horizontal)
                            .font(.subheadline)
                            .foregroundStyle(.foreground)
                        
                        
                    }
                    //.transition(.opacity.animation(.easeInOut))
                } else {
                    
                    withAnimation(.easeInOut(duration: 2)) {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(showExpanded ? Color.blue : Color.clear)
                                .overlay(content: {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.accentColor )
                                })
                                .frame(width: geo.size.width)
                            
                            Text(allSkills.skill)
                                .padding(.horizontal)
                                .font(.subheadline)
                                .foregroundStyle(.foreground)
                            
                            
                        }
                    }
                }
                
            })
            .buttonStyle(PressableButtonStyle())
            
        }
    }
}

#Preview {
    SkillSetView(allSkills: AllSkills(skill: "SwiftUI"))
}
