//
//  MyProjects.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 11/11/23.
//

import Foundation
struct MyProjects: Identifiable, Decodable {
    let id = UUID()
    var projectName: String
    var projectIcon: String
    var projectLinks: String
}
