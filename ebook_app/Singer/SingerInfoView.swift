//
//  SingerInfoView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/6.
//

import SwiftUI

struct SingerInfoView: View {
    let singer:Singer
    var body: some View {
        
        
        ScrollView(.vertical){
            
            ForEach(singer.Info){
                info in
                Text(info)
                    .multilineTextAlignment(.leading)
                    .padding()
                
            }
        }.background(singer.background
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .opacity(0.45)
                        .blur(radius: 1)
                        )
            .navigationTitle("歌手介紹")
    }
}


struct SingerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SingerInfoView(singer: Singer.demoSinger)
        }
    }
}
