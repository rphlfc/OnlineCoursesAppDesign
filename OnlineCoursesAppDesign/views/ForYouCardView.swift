//
//  ForYouCardView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct ForYouCardView: View {
    var backgroundColor: Color
    var name: String
    var rating: String
    var courseName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("timcook")
                    .resizable()
                    .frame(width: 44, height: 44)
                    .cornerRadius(22)
                
                Text(name)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.leading, 4)
            }
            .padding([.top, .leading, .bottom], 16)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1284347475, blue: 0.3080869913, alpha: 1)))
                        
                        Text(rating)
                            .font(.system(size: 18))
                    }
                    
                    Text(courseName)
                        .font(.system(size: 18, weight: .bold))
                        .lineLimit(2)
                        .padding(.top, 8)
                }.padding(.leading, 16)
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 120)
            .background(Color.white)
            .cornerRadius(30)
        }
        .background(backgroundColor)
        .cornerRadius(30)
        .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 20)
    }
}

struct ForYouCardView_Previews: PreviewProvider {
    static var previews: some View {
        ForYouCardView(backgroundColor: Color.purple, name: "Tim Cook", rating: "4.4", courseName: "Animation in After Effects")
    }
}
