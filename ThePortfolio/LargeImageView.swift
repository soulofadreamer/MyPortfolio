//
//  LargeImageView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 28/10/23.
//

import SwiftUI

struct LargeImageView: View {
    @Binding var isTapped: Bool
    @State var showUserName: Bool = false
    @State var userInfo: UserInformation = UserInformation(name: "Sunil Sharma", phone: "9877335419", email: "sunilstan345@gmail.com")
    var body: some View {
        
        VStack {
            
            HStack {
                Spacer()
                Button(action: {
                    
                    isTapped = false
                    
                }, label: {
                    Text("Done")
                        .bold()
                })
            }
            Spacer()
            
            Circle()
                .frame(width: 350, height: 350)
                .foregroundStyle(.blue)
                .opacity(0.6)
                .shadow(color: .gray.opacity(0.5), radius: 10, x: -4, y: -3)
                .shadow(color: .gray.opacity(0.2), radius: 15, x: 9, y: 9)
                .overlay(content: {
                    Image("Sunil")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 500)
                        .position(x: 180, y: 250)
                        .clipShape(Circle())
                        .onTapGesture {
                            withAnimation(.easeInOut) {
                                showUserName.toggle()
                            }
                        }
                    
                })
            
            if showUserName {
                
                    TheProfileView()
                
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LargeImageView(isTapped: .constant(true))
}
