//
//  WelcomeView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image("timcook")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
            
            VStack(alignment: .leading) {
                Text("Hi, Davis")
                    .font(.system(size: 32, weight: .bold))
                
                Text("learning is easier and faster with us")
                    .font(.system(size: 14, weight: .semibold))
                    .padding(.top, 16)
            }
            .foregroundColor(.white)
            .padding(.leading, 8)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding([.leading, .trailing], 16)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().background(Color.gray)
    }
}
