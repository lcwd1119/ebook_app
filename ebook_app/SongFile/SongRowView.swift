//
//  SongRowView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI

struct SongRowView: View {
    let album:Album
    let songName:String
    var body: some View {
        HStack{
            album.albumCoverimg
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text(songName)
                Text(album.singerName)
            }
        }
    }
}

struct SongRowView_Previews: PreviewProvider {
    static var previews: some View {
        SongRowView(album: Album.one, songName: Album.one.songList[0].songName)
    }
}
