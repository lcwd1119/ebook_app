//
//  SongView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI
import AVFoundation

struct SongView: View {
    let album:Album
    static let player = AVPlayer()
    var body: some View {
        List{
            ForEach(album.songList) {
                item in
                Button {
                    let fileUrl = Bundle.main.url(forResource: item.fileName, withExtension: item.fileType)!
                    let playerItem = AVPlayerItem(url: fileUrl)
                    SongView.player.replaceCurrentItem(with: playerItem)
                    SongView.player.play()
                } label: {
                    SongRowView(album: album, songName: item.songName)
                    
                }
            }
        }.navigationTitle(Text(album.albumName))
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(album: Album.one)
    }
}


