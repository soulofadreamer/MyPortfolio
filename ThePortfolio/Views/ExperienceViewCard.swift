//
//  ExperienceViewCard.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 04/11/23.
//

import SwiftUI

struct ExperienceViewCard: View {
    
    @State var experienceInfo: [WorkExperience]
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.cyan)
            
            VStack(alignment: .leading) {
                HStack {
                    
                    Text("Winsple")
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(systemName: "globe")
                }
                
                Spacer()
                
                LazyVGrid(columns: [GridItem()], content: {
                    ForEach(experienceInfo) { item in
                        HStack {
                            Text(item.workedAs)
                            Text("|")
                        }
                    }
                })
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .frame(minHeight: 0, maxHeight: .infinity)
    }
}

#Preview {
    ExperienceViewCard(experienceInfo: [WorkExperience(workedAs: "Content Writer",
                                                       description: """
                                                      
                                                      As a Content Writer at Winsple, I had the opportunity to play a pivotal role in enhancing the digital presence and marketing strategies of the company. My role revolved around creating high-quality, SEO-optimized content that effectively communicated the diverse range of services offered by the company.
                                                      I was responsible for producing engaging and informative content that not only captured the essence of our services but also resonated with our target audience. By conducting in-depth keyword research and staying updated with the latest SEO trends, I ensured that our content was well-positioned on search engine results pages, increasing our online visibility and driving organic traffic to the website.
                                                      My experience involved crafting a wide array of content types, including blog posts, web pages, product descriptions, and more. I worked closely with the marketing and SEO teams to align our content strategies with the company's overarching goals. Additionally, I regularly reviewed and updated existing content to ensure its relevance and accuracy.
                                                      My time as a Content Writer at [Company Name] allowed me to contribute to the company's growth by creating content that not only educated our audience about our services but also established us as a thought leader in our industry. I am proud to have been part of a team that prioritized content excellence to drive success in the digital landscape.
                                                      
""")])
}
