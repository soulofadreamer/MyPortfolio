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
        
        return [AllSkills(skill: "SwiftUI", description: "I excel in SwiftUI, a powerful framework for building sleek, intuitive iOS apps. With my expertise, I create dynamic, user-friendly interfaces, ensuring a seamless user experience."),
                AllSkills(skill: "Swift",
                          description: "I'm proficient in Swift, Apple's versatile programming language. With strong Swift skills, I develop efficient and scalable iOS, macOS, and watchOS applications, delivering elegant solutions to complex challenges."),
                AllSkills(skill: "XCode", 
                          description: "I possess advanced proficiency in Xcode, Apple's integrated development environment. Leveraging its robust features, I efficiently build, debug, and deploy high-quality iOS applications, ensuring seamless user experiences."),
                AllSkills(skill: "MVVM Design Pattern",
                          description: "I'm adept at MVVM (Model-View-ViewModel), a design pattern for building well-structured and maintainable software. With MVVM, I create clean and modular code, enhancing application reliability and flexibility.")
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
