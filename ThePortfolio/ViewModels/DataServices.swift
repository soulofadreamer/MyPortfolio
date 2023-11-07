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
    func getUserData() -> [UserInformation]{
        
        return [ UserInformation(name: "Sunil Sharma",
                                 phone: "9877335419",
                                 email: "sunilstan345@gmail.com")
        ]
    }

    func getWorkData() -> [WorkExperience]{
     
        return [WorkExperience(companyName: "Winsple", workedAs: "Content Writer & Video Editor",
                               description: """
                               As a Content Writer at Winsple, I had the opportunity to play a pivotal role in enhancing the digital presence and marketing strategies of the company. My role revolved around creating high-quality, SEO-optimized content that effectively communicated the diverse range of services offered by the company.
                               At Winsple I was also responsible to edit videos for our podcast Show WinTalks. My role involved editing high quality podcast vdieos and learning videos for the YouTube Channel. I also worked on creating the high quality thumbnails and titles to engage more viewers to the show and get high reach on the content produced.
                               As a video editor I worked with multiple tools such as,
                               Adobe Premier Pro & iMovie: Video Editing
                               Adobe After Effects: Adding Effects
                               Adobe PhotoShop: Editing Thumbnails
                               Adobe Illustration: Graphic Designing
                               Blender: Editing Videos and Designing Models
                               Working at winsple was an opportunity for me to know my creaive side to edit high quality videos using different resources.
                               """, summary: "I enhanced Winsple's digital presence by creating SEO-optimized content, edited videos for podcasts, and used various tools to unleash my creative side.", startDate: "Feburary-2022", endDate: "September-2023", companyLogo: "Winsple"),
                WorkExperience(companyName: "TechWhoop", workedAs: "Content Head",
                                       description: """
                                       At Techwhoop I started as a content editor Intern and after one month I was provided with an opportunity to work as a Content Head. As Content head I was responsible for content research and analyse the topics to publish on the website. I worked on wordpress for scheduling and publishing the content on the website.
                                       As a Content Head I was also responsible to lead a team of 5 member and maintain the record of content submission and work together with the manager to make sure the content is good to go on the website. By working at TechWhoop I gained experience in WordPress Plugin, i.e. how to maintain the content of the website, how to edit the posts, how to add images to the content and how to check the SEO to maintain the content to pop up on the top of the search.
                                       Working as a content head I learnt how to manage deadlines, how to find the content keywords, and how to lead a team to maintain the workflow. I worked with dedication and had an amazing experience working at TechWhoop
                                       """, summary: "I started as a content editor intern at TechWhoop, quickly becoming Content Head. Managed team, published content, and learned WordPress and SEO.", startDate: "November-2022", endDate: " May-2023", companyLogo: "techwhoop")
        ]
    }

    
}

