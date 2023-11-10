//
//  MyProjectsView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 11/11/23.
//

import SwiftUI

struct MyProjectsView: View {
    @State var myProjects: [MyProjects] = []
    var body: some View {
        
        VStack {
            
            HStack {
                Text("My Projects")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: [GridItem()], spacing: 20, content: {
                    ForEach(myProjects) { projects in
                        
                        SingleProjectView(myProjects: projects)
                        
                    }
                })
                
                .onAppear(perform: {
                    myProjects = DataServices().getProjects()
                })
            }
            .frame(minHeight: 0, maxHeight: .infinity)
        }
        
    }
}

#Preview {
    MyProjectsView()
}
