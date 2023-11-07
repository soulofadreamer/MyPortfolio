//
//  ExperienceView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 01/11/23.
//

import SwiftUI

struct ExperienceView: View {
    
    @State var experienceInfo: [WorkExperience] = []
    var dataServices = DataServices()
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack{
                    Text("Work Experience")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                LazyVGrid(columns: [GridItem()], content: {
                    
                    ForEach(experienceInfo) { item in
                        
                        NavigationLink (destination: DetailedExperienceView(), label: {
                            
                            ExperienceViewCard(experienceInfo: [WorkExperience(companyName: item.companyName, workedAs: item.workedAs, description: item.description, summary: item.summary, startDate: item.startDate, endDate: item.endDate, companyLogo: item.companyLogo)])
                            
                        })
                        
                        
                    }
                })
                .onAppear(perform: {
                    experienceInfo = dataServices.getWorkData()
                })
                
            }
            .frame(minHeight: 0, maxHeight: .infinity)
        }
        .foregroundStyle(.black)
        
    }
}

#Preview {
    ExperienceView()
}
