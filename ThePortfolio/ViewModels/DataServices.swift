//
//  DataServices.swift
//  NetClan-clone
//
//  Created by Sunil Sharma on 12/10/23.
//

import Foundation
struct DataServices {
    
    // function to fetch the data for refine view
    func getData() -> [AllSkills] {
        
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
    
    func getWorkData() -> [WorkExperience] {
        
        if  let url = Bundle.main.url(forResource: "Experience", withExtension: "json") {
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    
                    let experience = try decoder.decode([WorkExperience].self, from: data)
                    
                    return experience
                    
                } catch{
                    print("Couldn't parse json: \(error)")
                }
                
            }
            catch {
                print("Couldn't read the file: \(error)")
            }
        }
        return [WorkExperience]()
    }
    
   
    func getProjects() -> [MyProjects] {
        
        return [MyProjects(projectName: "Xylophone", projectIcon: "Icon", projectLinks: "https://github.com/soulofadreamer/Xylophone"),
                MyProjects(projectName: "Restaurant", projectIcon: "RestaurantIcon", projectLinks: "https://github.com/soulofadreamer/Restaurant"),
                MyProjects(projectName: "GuideBook", projectIcon: "GuidebookIcon", projectLinks: "https://github.com/soulofadreamer/Restaurant"),
                MyProjects(projectName: "Xs&Os", projectIcon: "Xs&OsIcon", projectLinks: "https://github.com/soulofadreamer/Xs-Os")]
    }
}

