//
//  TopCoursesView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct TopCoursesView: View {
    var body: some View {
        VStack {
            TitleView(title: "Top Courses")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0 ..< 3) { index in
                        CardView(backgroundColor: cardColors[index])
                    }
                }
                .padding([.leading, .trailing], 16)
            }
        }
    }
}

struct TopCoursesView_Previews: PreviewProvider {
    static var previews: some View {
        TopCoursesView()
    }
}
