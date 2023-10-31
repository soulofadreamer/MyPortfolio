//
//  ExpandedSkillView.swift
//  ThePortfolio
//
//  Created by Sunil Sharma on 01/11/23.
//

import SwiftUI

struct ExpandedSkillView: View {
    
    var body: some View {
        GeometryReader { geo in
                     ZStack {

                         RoundedRectangle(cornerRadius: 12)
                             .fill(Color(hue: 0.512, saturation: 0.945, brightness: 0.74))
                             .frame(width: geo.size.width)
                             .offset(x: 5, y: 5)
                             .opacity(0.5)

                         RoundedRectangle(cornerRadius: 12)
                             .fill(Color.clear)
                             .frame(width: geo.size.width)

                         RoundedRectangle(cornerRadius: 12)
                             .stroke(Color(hue: 0.089, saturation: 0.768, brightness: 0.946), lineWidth: 2)
                             .frame(width: geo.size.width)
                             .cornerRadius(12)
                     }
                 }
    }
}

#Preview {
    ExpandedSkillView()
}
