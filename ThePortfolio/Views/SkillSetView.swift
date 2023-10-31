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
                                    .stroke(Color(hue: 0.089, saturation: 0.768, brightness: 0.946))
                                    .foregroundStyle(Color(hue: 0.512, saturation: 0.945, brightness: 0.74))
                                
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
                            
                            ExpandedSkillView()
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text(allSkills.skill)
                                    .padding(.horizontal)
                                    .font(.subheadline)
                                    .foregroundStyle(.foreground)
                                
                                Text(allSkills.description)
                                    .padding(.horizontal)
                                    .font(.subheadline)
                                    .foregroundStyle(.foreground)
                                Spacer(minLength: 12)
                            }
                            .padding(.top, 10)
                            .frame(height: geo.size.height)
                            
                            
                        }
                    }
                }
                
            })
            .buttonStyle(PressableButtonStyle())
            
        }
    }
}

#Preview {
    SkillSetView(allSkills: AllSkills(skill: "XCode",
                                      description: "I possess advanced proficiency in Xcode, Apple's integrated development environment. Leveraging its robust features, I efficiently build, debug, and deploy high-quality iOS applications, ensuring seamless user experiences."))
}
