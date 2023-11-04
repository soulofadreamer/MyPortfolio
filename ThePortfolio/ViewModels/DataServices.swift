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
        if let url = Bundle.main.url(forResource: "AllSkillsData", withExtension: "JSON") {
            
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

