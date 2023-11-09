//
//  TheProfileView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 29/10/23.
//

import SwiftUI

struct TheProfileView: View {
    
    @State var userInfo: UserInformation = UserInformation(name: "Sunil Sharma", phone: "9877335419", email: "sunilstan345@gmail.com")
    @State var isTapped: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(userInfo.name)
                .font(.title)
                .bold()
            
            
            
            HStack {
                Text("Mobile Number:")
                    .bold()
                Button(action: {
                    
                    if let url = URL(string: "tel://\(userInfo.phone)"){
                        
                        if UIApplication.shared.canOpenURL(url){
                            
                            //Open the URL
                            UIApplication.shared.open(url)
                        }
                    }
                    
                }, label: {
                    withAnimation(.easeInOut) {
                        Text(userInfo.phone)
                    }
                })
            }
            HStack {
                
                Text("Email ID:")
                    .bold()
                
                Button(action: {
                    
                    if let url = URL(string: "mailto:\(userInfo.email)"){
                        
                        if UIApplication.shared.canOpenURL(url){
                            
                            //Open the URL
                            UIApplication.shared.open(url)
                        }
                    }
                    
                }, label: {
                    Text(userInfo.email)
                    
                })
                
            }
            HStack {
                
                Text("Social:")
                    .bold()
                Link("LinkedIn", destination: URL(string: "https://www.linkedin.com/in/sunil-sharma--a0a273151/")! )
                Text("|")
                Link("Github", destination: URL(string: "https://github.com/soulofadreamer")!)
                Text("|")
                Link("Instagram" , destination: URL(string: "https://www.instagram.com/soul_ofadreamer/")!)
                
            }
            
            
        }
        .font(.subheadline)
    }
}

#Preview {
    TheProfileView()
}
