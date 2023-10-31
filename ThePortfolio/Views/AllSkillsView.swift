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
        
        VStack(alignment: .leading) {
            
            Text("Skills")
                .font(.title2)
                .bold()
              
            GeometryReader { geo in
                    
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows, spacing: 10, content: {
                            
                            ForEach(allSkills) { item in
                                withAnimation(.bouncy){
                                    
                                    SkillSetView(allSkills: item)
                                        .frame(width: geo.size.width/2)
                                    
                                }
                                
                                
                            }
                            
                        })
                        .onAppear{
                            
                            allSkills = DataServices().getData()
                        }
                    }
                    .scrollIndicators(.hidden)
                    
                    
                }
            
            
        }
        .frame(height: 100)
    }
}

#Preview {
    AllSkillsView()
}
