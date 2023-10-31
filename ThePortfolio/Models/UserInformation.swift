//
//  UserInformation.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 29/10/23.
//

import Foundation
struct UserInformation: Identifiable {
    
    var id = UUID()
    var name: String
    var phone: String
    var email: String
}
