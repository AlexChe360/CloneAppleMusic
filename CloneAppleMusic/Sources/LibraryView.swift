//
//  LibraryView.swift
//  CloneAppleMusic
//
//  Created by  Alexey on 18.06.2024.
//

import SwiftUI

struct LibraryView: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemGray6
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(UIColor.systemGray6)
                .edgesIgnoringSafeArea(.all)
            TabView {
                MediaView()
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Медиатика")
                    }
                Text("Radio")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(UIColor.systemGray4))
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 2)
                        Image(systemName: "music.note")
                            .foregroundStyle(Color.gray)
                    }
                    Text("Не исполняется")
                        .font(.system(size: 16, weight: .light))
                        .foregroundStyle(.black)
                        .padding(.leading, 10)
                    Spacer()
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "forward.fill")
                        .resizable()
                        .foregroundStyle(.gray)
                        .frame(width: 30, height: 20)
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, 10)
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                
            }
            .padding(.bottom, 50)
        }
        

    }
}

#Preview {
    LibraryView()
}
