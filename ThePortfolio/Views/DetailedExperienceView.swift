//
//  DetailedExperienceView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 08/11/23.
//

import SwiftUI

struct DetailedExperienceView: View {
    @Environment(\.colorScheme) var colorScheme
    var experienceinfo: WorkExperience
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(colorScheme == .dark ? experienceinfo.companyLogo : experienceinfo.darkLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            ScrollView {
                
                HStack {
                    Text(experienceinfo.workedAs)
                        .font(.title)
                        .bold()
                    Spacer()
                }
                Spacer()
                Text(experienceinfo.description)
                
            }
            .scrollIndicators(.hidden)
            
        }
        .navigationTitle(experienceinfo.companyName)
        .padding(.horizontal)
    }
}

#Preview {
    DetailedExperienceView(experienceinfo:  WorkExperience(companyName: "TechWhoop", workedAs: "Content Head",
                                                           description: """
                                                            At Techwhoop I started as a content editor Intern and after one month I was provided with an opportunity to work as a Content Head. As Content head I was responsible for content research and analyse the topics to publish on the website. I worked on wordpress for scheduling and publishing the content on the website.
                                                            As a Content Head I was also responsible to lead a team of 5 member and maintain the record of content submission and work together with the manager to make sure the content is good to go on the website. By working at TechWhoop I gained experience in WordPress Plugin, i.e. how to maintain the content of the website, how to edit the posts, how to add images to the content and how to check the SEO to maintain the content to pop up on the top of the search.
                                                            Working as a content head I learnt how to manage deadlines, how to find the content keywords, and how to lead a team to maintain the workflow. I worked with dedication and had an amazing experience working at TechWhoop
                                                            """, summary: "I started as a content editor intern at TechWhoop, quickly becoming Content Head. Managed team, published content, and learned WordPress and SEO. ", startDate: "November 01, 2022", endDate: " May 01, 2023", companyLogo: "Techwhoopwhite", darkLogo: "Techwhoopblack"))
}
