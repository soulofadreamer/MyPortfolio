//
//  MiddleView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 01/11/23.
//

import SwiftUI

struct MiddleView: View {
    var body: some View {
        
        ScrollView{
            AllSkillsView()
           
            ExperienceView()
        }
        .frame(minHeight:0, maxHeight: .infinity)
        .scrollIndicators(.hidden)
        
        
    }
}

#Preview {
    MiddleView()
}
