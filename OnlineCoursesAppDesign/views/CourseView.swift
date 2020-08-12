//
//  CourseView.swift
//  OnlineCoursesAppDesign
//
//  Created by Raphael Cerqueira on 31/07/20.
//

import SwiftUI

struct CourseView: View {
    
    init() {
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.4251609743, green: 0.3892422318, blue: 0.9996522069, alpha: 1)).edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) { // white rounded background
                    CourseHaderView()
                        .padding(.top, 16)
                    
                    CourseDetailsView()
                    
                    CourseTeacherView()
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Start")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                    }
                    .background(Color(#colorLiteral(red: 0.1780105233, green: 0.2128186226, blue: 0.2122294903, alpha: 1)))
                    .cornerRadius(30)
                    .padding(16)
                    
                    Spacer().frame(minHeight: 60)
                }
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(50)
            }
        }
        .accentColor(.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}

struct CourseInfoRow: View {
    var color: Color
    var icon: String
    var title: String
    
    var body: some View {
        HStack { // Row
            HStack {
                Image(systemName: icon)
                    //.resizable()
                    .frame(width: 30, height: 22)
                    .foregroundColor(.white)
            }
            .frame(width: 70, height: 70)
            .background(color)
            .cornerRadius(35)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                
                HStack {
                    Text("250 min")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(color)
                    
                    Text("of interescting lectures")
                        .foregroundColor(Color.gray)
                }
                .padding(.top, 4)
            }
            .padding(.leading, 8)
            
            Spacer()
        }
    }
}

struct CourseSubtitleView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 24, weight: .medium))
            .padding(.leading, 16)
    }
}

struct CourseHaderView: View {
    var body: some View {
        HStack {
            BackgroundView(Color(#colorLiteral(red: 1, green: 0.3942664266, blue: 0.5196980834, alpha: 1)), width: 90, cornerRadius: 20) {
                Text("")
            }
            
            VStack(alignment: .leading) {
                Text("UX - UI Design")
                    .font(.system(size: 24, weight: .semibold))
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1284347475, blue: 0.3080869913, alpha: 1)))
                    
                    Text("4.9")
                        .font(.system(size: 18, weight: .semibold))
                        .offset(x: -6)
                }
            }
            .padding(.leading, 8)
            
            Spacer()
        }
        .padding(.leading, 16)
    }
}

struct CourseDetailsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            CourseSubtitleView(text: "The Course includes")
                .padding(.top, 32)
            
            HStack {
                VStack { // List
                    CourseInfoRow(color: Color(#colorLiteral(red: 0.4251609743, green: 0.3892422318, blue: 0.9996522069, alpha: 1)), icon: "video", title: "12 Video Tutorials")
                    
                    CourseInfoRow(color: Color(#colorLiteral(red: 0.2919472158, green: 0.7470027804, blue: 0.7331630588, alpha: 1)), icon: "bookmark", title: "7 Practical Tasks")
                        .padding(.top, 8)
                    
                    CourseInfoRow(color: Color(#colorLiteral(red: 1, green: 0.3942664266, blue: 0.5196980834, alpha: 1)), icon: "folder", title: "10 Templates for Design")
                        .padding(.top, 8)
                }
                .padding(16)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
            }
            .padding([.leading, .trailing], 16)
        }
    }
}

struct CourseTeacherView: View {
    var body: some View {
        VStack(alignment: .leading) {
            CourseSubtitleView(text: "Teacher")
                .padding(.top, 32)
            
            HStack {
                HStack {
                    Image("timcook")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70)
                    
                    VStack(alignment: .leading) {
                        Text("Gustavo Kenter")
                            .font(.system(size: 18, weight: .bold))
                        
                        Text("Designer")
                            .foregroundColor(Color.gray)
                            .padding(.top, 8)
                    }
                    .padding(.leading, 8)
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .resizable()
                        .aspectRatio(contentMode: .fit  )
                        .frame(width: 50, height: 20)
                        .padding(.trailing, 16)
                        .foregroundColor(Color(#colorLiteral(red: 0.4251609743, green: 0.3892422318, blue: 0.9996522069, alpha: 1)))
                }
                .padding(16)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
            }
            .padding([.leading, .trailing], 16)
        }
    }
}
