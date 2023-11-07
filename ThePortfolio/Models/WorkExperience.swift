//
//  WorkExperience.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 06/11/23.
//

import Foundation

struct WorkExperience: Identifiable {
    var id = UUID()
    var companyName: String
    var workedAs:  String
    var description: String
    var summary: String
    var startDate: String
    var endDate: String
    var companyLogo: String
    init(id: UUID = UUID(), companyName: String, workedAs: String, description: String, summary: String, startDate: String, endDate: String, companyLogo: String) {
        self.id = id
        self.companyName = companyName
        self.workedAs = workedAs
        self.description = description
        self.summary = summary
        self.startDate = startDate
        self.endDate = endDate
        self.companyLogo = companyLogo
        
    }
    
    
}
