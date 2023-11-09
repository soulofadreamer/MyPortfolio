//
//  ExperienceViewCard.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 04/11/23.
//

import SwiftUI

struct ExperienceViewCard: View {
    @Environment(\.colorScheme) var colorScheme
    @State var experienceInfo: [WorkExperience]
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(hue: 0.089, saturation: 0.049, brightness: 0.926))
                .opacity(0.5)
            LazyVGrid(columns: [GridItem()], spacing: 12, content: {
                ForEach(experienceInfo) { item in
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.companyName)
                                    .font(.title2)
                                    .bold()
                                Text(item.workedAs)
                                    .font(.headline)
                                    .bold()
                                Spacer()
                                HStack {
                                    Text(item.startDate)
                                    Text("-")
                                    Text(item.endDate)
                                }
                                .font(.custom("times", size: 12))
                                
                            }
                            
                            Spacer()
                            Image(colorScheme == .dark ? item.companyLogo : item.darkLogo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        Spacer()
                        
                        Text(item.summary)
                            .font(.callout)
                    }
                    .monospaced()
                    .padding()
                }
                
            })
            .multilineTextAlignment(.leading)
            
            
        }
        .frame(minHeight: 0, maxHeight: .infinity)
    }
}

#Preview {
    ExperienceViewCard(experienceInfo: [ WorkExperience(companyName: "TechWhoop", workedAs: "Content Head",
                                                        description: """
                                                        At Techwhoop I started as a content editor Intern and after one month I was provided with an opportunity to work as a Content Head. As Content head I was responsible for content research and analyse the topics to publish on the website. I worked on wordpress for scheduling and publishing the content on the website.
                                                        As a Content Head I was also responsible to lead a team of 5 member and maintain the record of content submission and work together with the manager to make sure the content is good to go on the website. By working at TechWhoop I gained experience in WordPress Plugin, i.e. how to maintain the content of the website, how to edit the posts, how to add images to the content and how to check the SEO to maintain the content to pop up on the top of the search.
                                                        Working as a content head I learnt how to manage deadlines, how to find the content keywords, and how to lead a team to maintain the workflow. I worked with dedication and had an amazing experience working at TechWhoop
                                                        """, summary: "I started as a content editor intern at TechWhoop, quickly becoming Content Head. Managed team, published content, and learned WordPress and SEO. ", startDate: "November 01, 2022", endDate: " May 01, 2023", companyLogo: "Techwhoopwhite", darkLogo: "Techwhoopblack")])
}
