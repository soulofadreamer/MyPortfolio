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
    var cornerRadius: CGFloat = 12
    var body: some View {
        if !showExpanded {
            Button(action: {
                withAnimation(.easeInOut(duration: 0.25)) {
                    showExpanded.toggle()
                }
            }, label: {
                
                Text(allSkills.skill)
                    .padding(.horizontal)
                    .font(.subheadline)
                    .foregroundStyle(.foreground)
                
                
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .controlSize(.large)
            .background(
                RoundedRectangle(cornerRadius: 10).strokeBorder(.orange, lineWidth: 2)
            )
            .transition(.opacity.animation(.easeInOut(duration: 0.25)))
        } else {
            Button(action: {
                withAnimation(.bouncy(duration: 0.25)) {
                    showExpanded.toggle()
                }
            }, label: {
                ZStack{
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        HStack{
                            Text(allSkills.skill)
                                .font(.subheadline)
                                .foregroundStyle(.black)
                                .bold()
                            Spacer()
                        }
                        Text(allSkills.description)
                            .font(.subheadline)
                            .foregroundStyle(.black)
                            .layoutPriority(1)
                    }
                    .multilineTextAlignment(.leading)
                }
                .frame(width: 250)
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .controlSize(.large)
            .background(
                ExpandedSkillView()
                    .transition(.opacity.animation(.easeInOut(duration: 1)))
            )
        }
    }
}

#Preview {
    SkillSetView(allSkills: AllSkills(skill: "XCode",
                                      description: "I possess advanced proficiency in Xcode, Apple's integrated development environment. Leveraging its robust features, I efficiently build, debug, and deploy high-quality iOS applications, ensuring seamless user experiences."))
}
