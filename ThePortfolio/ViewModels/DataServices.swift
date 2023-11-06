//
//  DataServices.swift
//  NetClan-clone
//
//  Created by Sunil Sharma on 12/10/23.
//

import Foundation
struct DataServices {
    
    // function to fetch the data for refine view
    func getData() -> [AllSkills]{
        
        // get file path
        if let url = Bundle.main.url(forResource: "AllSkillsData", withExtension: "json") {
            
            do {
                
                // read the file and turn into Data
                let data = try Data(contentsOf: url)
                
                // Parse Data into Swift Instances
                let decoder = JSONDecoder()
                
                do {
                    let skills = try decoder.decode([AllSkills].self, from: data)
                    return skills
                }
                catch{
                    print("Couldn't parse json: \(error)")
                }
                
            }
            catch{
                print("Couldn't read the file: \(error)")
            }
        }
        
        return [AllSkills]()
    }
    
    
}

func getUserData() -> [UserInformation]{
    
    return [ UserInformation(name: "Sunil Sharma",
                             phone: "9877335419",
                             email: "sunilstan345@gmail.com")
    ]
}

func getWorkData() -> [WorkExperience]{
 
    return [WorkExperience(workedAs: "Content Writer",
                           description: """
                           As a Content Writer at Winsple, I had the opportunity to play a pivotal role in enhancing the digital presence and marketing strategies of the company. My role revolved around creating high-quality, SEO-optimized content that effectively communicated the diverse range of services offered by the company.

                           I was responsible for producing engaging and informative content that not only captured the essence of our services but also resonated with our target audience. By conducting in-depth keyword research and staying updated with the latest SEO trends, I ensured that our content was well-positioned on search engine results pages, increasing our online visibility and driving organic traffic to the website.

                           My experience involved crafting a wide array of content types, including blog posts, web pages, product descriptions, and more. I worked closely with the marketing and SEO teams to align our content strategies with the company's overarching goals. Additionally, I regularly reviewed and updated existing content to ensure its relevance and accuracy.

                           My time as a Content Writer at [Company Name] allowed me to contribute to the company's growth by creating content that not only educated our audience about our services but also established us as a thought leader in our industry. I am proud to have been part of a team that prioritized content excellence to drive success in the digital landscape.
                           """),
            WorkExperience(workedAs: "Video Editor",
                                   description: """
                                   I also worked as a Video Editor at Winsple. I played the role of the lead editor at the firm. Wintalks project is an initiative to share the inspiring stories of various guests. 
                                   """)
    ]
}
