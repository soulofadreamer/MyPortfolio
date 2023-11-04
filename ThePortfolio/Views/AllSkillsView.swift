//
//  AllSkillsView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 29/10/23.
//

import SwiftUI

struct AllSkillsView: View {
    @State var allSkills: [AllSkills] = []
    @State var rows = [ GridItem()]
    @State var showSkills: Bool = false
    var body: some View {
        
        HStack{
            Text("Skills")
                .font(.title2)
                .bold()
                .padding(.leading, 20)
            Spacer()
        }
        ScrollView(.horizontal) {
            HStack{
                ForEach(allSkills) { item in
                    VStack{
                        SkillSetView(allSkills: item)
                        Spacer()
                    }
                }
            }
            .frame(minHeight:0, maxHeight: .infinity)
            .onAppear{
                allSkills = DataServices().getData()
            }
        }
        .scrollIndicators(.hidden)
        .frame(minHeight:0, maxHeight: .infinity)
    }
}

#Preview {
    AllSkillsView()
}
