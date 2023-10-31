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
                    .font(.headline)
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
                    .font(.headline)
                
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
        }
        
    }
}

#Preview {
    TheProfileView()
}
