//
//  CardView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct CardView: View {
    var backgroundColor: Color
    
    var body: some View {
        NavigationLink(destination: CourseView()) {
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1284347475, blue: 0.3080869913, alpha: 1)))
                        
                        Text("4.9")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                    }
                    .padding([.leading, .trailing], 16)
                    .padding([.top, .bottom], 16)
                    .background(Color.white)
                    .cornerRadius(24)
                    .padding(.top, 20)
                    
                    Text("UX - UI Design")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 16)
                    
                    HStack {
                        Image("timcook")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 100, height: 100)
                            .cornerRadius(50)
                        
                        VStack(alignment: .leading) {
                            Text("Teacher")
                                .font(.system(size: 18, weight: .regular))
                                .opacity(0.7)
                            
                            Text("Gustavo Kenter")
                                .font(.system(size: 24, weight: .bold))
                                .padding(.top, 12)
                        }
                        .foregroundColor(.white)
                        .padding(.leading, 8)
                    }
                    .padding(.bottom, 16)
                }
                .padding(.leading, 16)
                
                Spacer()
            }
            .background(backgroundColor)
            .frame(width: 360)
            .cornerRadius(30)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(backgroundColor: Color.purple)
    }
}
