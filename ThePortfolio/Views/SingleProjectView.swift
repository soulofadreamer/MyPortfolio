//
//  SingleProjectView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 11/11/23.
//

import SwiftUI

struct SingleProjectView: View {
    
    var myProjects: MyProjects
    var body: some View {
        
        VStack {
            
            Link(destination: URL(string: myProjects.projectLinks)!, label: {
                Image(myProjects.projectIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: .gray, radius: 5, y: 5)
            })
            .buttonStyle(PressableButtonStyle())
            
            Text(myProjects.projectName)
            
            
        }
        
    }
}

#Preview {
    SingleProjectView(myProjects: MyProjects(projectName: "Xylophone", projectIcon: "Icon", projectLinks: "https://github.com/soulofadreamer/Xylophone"))
}
