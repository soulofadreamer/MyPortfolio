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
    @State var experienceInfo: [WorkExperience] = []
    
    var dataServices = DataServices()
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                VStack(spacing: 10) {
                    TitleBarView()
                    ScrollView{
                        AllSkillsView()
                        ExperienceView()
                        
                    }
                    .frame(minHeight:0, maxHeight: .infinity)
                    .scrollIndicators(.hidden)
                    
                    
                }
                .frame(minHeight:0, maxHeight: .infinity)
                
            }
            .monospaced()
            .padding(.horizontal, 12)
        }
    }
    
}


#Preview {
    RootView()
}
