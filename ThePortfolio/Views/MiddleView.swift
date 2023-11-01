//
//  MiddleView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 01/11/23.
//

import SwiftUI

struct MiddleView: View {
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 10) {
                AllSkillsView()
                
              //  ExperienceView()
            }
        }
        
    }
}

#Preview {
    MiddleView()
}
