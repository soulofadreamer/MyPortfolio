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
        
        return [AllSkills(skill: "SwiftUI"),
                AllSkills(skill: "Swift"),
                AllSkills(skill: "XCode"),
                AllSkills(skill: "Web Development")
//                ,
//                AllSkills(skill: "Web Programming with JS")
        ]
    }
    
    func getUserData() -> [UserInformation]{
        
        return [ UserInformation(name: "Sunil Sharma", 
                                 phone: "9877335419",
                                 email: "sunilstan345@gmail.com")
        ]
    }
}
