//
//  BackgroundView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 01/08/20.
//

import SwiftUI

struct BackgroundView<Content: View>: View {
    var color: Color
    var opacity: Double
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    let content: Content
    
    init(_ color: Color, opacity: Double = 0.1, width: CGFloat = 90.0, height: CGFloat = 0.0, cornerRadius: CGFloat = 0, @ViewBuilder content: () -> Content) {
        self.color = color
        self.opacity = opacity
        self.width = width
        self.height = height
        self.cornerRadius = cornerRadius
        self.content = content()
    }
    
    var body: some View {
        return ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(Color.white.opacity(opacity))
                    .frame(width: width, height: height == 0.0 ? width : height)
                    .offset(x: -(width / 5), y: -(width / 5))
                
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(Color.white.opacity(opacity))
                    .frame(width: width, height: height == 0.0 ? width : height)
                    .offset(x: width / 3, y: width / 4)
            }
            .background(color)
            .cornerRadius(cornerRadius)
            
            content
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BackgroundView(.pink) {
                Text(".pink")
            }
            
            BackgroundView(.pink, width: 300) {
                Text(".pink")
            }
            
            BackgroundView(.pink, opacity: 0.2, width: 300, cornerRadius: 30) {
                Text(".pink")
            }
            
        }
        
    }
}
