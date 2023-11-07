//
//  WorkExperience.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 06/11/23.
//

import Foundation

struct WorkExperience: Identifiable, Decodable {
    let id = UUID()
    var companyName: String
    var workedAs:  String
    var description: String
    var summary: String
    var startDate: String
    var endDate: String
    var companyLogo: String
    
    
}
