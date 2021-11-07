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
                    randomplay(Singerselect: 2)
                } label: {
                    Text("全部")
                        .font(.title)
                }
                Button {
                    randomplay(Singerselect: 1)
                } label: {
                    Text("ClariS")
                        .font(.title)
                }
                Button {
                    randomplay(Singerselect: 0)
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
func randomplay(Singerselect:Int){
    var tmp = Singerselect
    if Singerselect == 2 {
        tmp = Int.random(in: 0...1)
    }
    
    let songlist:[Song] = Song.allsongs[tmp]
    
    let item:Song = songlist[Int.random(in: 0...songlist.count-1)]
    
    let fileUrl = Bundle.main.url(forResource: item.fileName, withExtension: item.fileType)!
    let playerItem = AVPlayerItem(url: fileUrl)
    SongView.player.replaceCurrentItem(with: playerItem)
    SongView.player.play()
}
