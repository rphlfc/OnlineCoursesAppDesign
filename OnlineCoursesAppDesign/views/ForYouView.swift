//
//  ForYouView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct ForYouView: View {
    var body: some View {
        VStack {
            TitleView(title: "For You")
            
            VStack {
                HStack {
                    ForYouCardView(backgroundColor: Color(#colorLiteral(red: 0.9969789386, green: 0.8654430509, blue: 0.8941680789, alpha: 1)), name: "Tiana Mango", rating: "4.3", courseName: "Animation in\nAfter Effects")
                    
                    Spacer().frame(width: 16)
                    
                    ForYouCardView(backgroundColor: Color(#colorLiteral(red: 0.8653209805, green: 0.8602423072, blue: 0.9867550731, alpha: 1)), name: "Dulce Bator", rating: "4.1", courseName: "Mobile App\nDesign")
                }
                
                HStack {
                    ForYouCardView(backgroundColor: Color(#colorLiteral(red: 0.8256289363, green: 0.944817245, blue: 0.9427717328, alpha: 1)), name: "Lincoln Bator", rating: "4.5", courseName: "Animation in\nAfter Effects")
                    
                    Spacer().frame(width: 16)
                    
                    ForYouCardView(backgroundColor: Color(#colorLiteral(red: 0.9969789386, green: 0.8654430509, blue: 0.8941680789, alpha: 1)), name: "Livia Lubin", rating: "4.7", courseName: "Mobile App\nDesign")
                }.padding(.top, 8)
            }
            .padding(.horizontal, 16)
        }
        .padding(.bottom, 16)
    }
}

struct ForYouView_Previews: PreviewProvider {
    static var previews: some View {
        ForYouView()
    }
}
