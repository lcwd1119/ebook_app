//
//  ContentView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomePageView()
                .tabItem {
                    Label("Home",systemImage: "house.fill")
                }
            
            MusicPageView()
                .tabItem {
                    Label("音樂",systemImage: "music.note.list")
                }
            
            OtherPageView()
                .tabItem{
                    Label("其他",systemImage: "list.bullet")
                }
            
            RandomPageView()
                .tabItem {
                    Label("隨機播放",systemImage: "shuffle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
