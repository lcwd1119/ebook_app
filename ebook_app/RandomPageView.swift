//
//  RandomPageView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI
import AVFoundation

struct RandomPageView: View {
    static let player = AVPlayer()
    var body: some View {
        NavigationView{
            List{
                Button {
                    randomplay(Songselect: Song.allsongs.randomElement()!.randomElement()!)
                } label: {
                    Text("全部")
                        .font(.title)
                }
                Button {
                    randomplay(Songselect: Song.ClariS_songs.randomElement()!)
                } label: {
                    Text("ClariS")
                        .font(.title)
                }
                Button {
                    randomplay(Songselect: Song.Aimer_songs.randomElement()!)
                } label: {
                    Text("Aimer")
                        .font(.title)
                }
            }.navigationTitle("隨機播放")
        }
    }
    struct RandomPageView_Previews: PreviewProvider {
        static var previews: some View {
            RandomPageView()
        }
    }
}
func randomplay(Songselect:Song){
    
    let fileUrl = Bundle.main.url(forResource: Songselect.fileName, withExtension: Songselect.fileType)!
    let playerItem = AVPlayerItem(url: fileUrl)
    SongView.player.replaceCurrentItem(with: playerItem)
    SongView.player.play()
}
