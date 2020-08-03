//
//  ContentView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.4251609743, green: 0.3892422318, blue: 0.9996522069, alpha: 1)).edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        WelcomeView()
                            .padding(.top, 16)
                        
                        VStack(alignment: .leading) {
                            TopCoursesView()
                                .padding(.top, 16)
                            
                            ForYouView()
                                .padding(.top, 16)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.top, 16)
                    }
                }
            }
            .navigationBarTitle("Back")
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let cardColors = [
    Color(#colorLiteral(red: 0.3582481742, green: 0.79794842, blue: 0.7927541137, alpha: 1)),
    Color(#colorLiteral(red: 1, green: 0.4348478317, blue: 0.5478091836, alpha: 1)),
    Color(#colorLiteral(red: 0.4512226582, green: 0.4147087932, blue: 0.9988538623, alpha: 1))
]
