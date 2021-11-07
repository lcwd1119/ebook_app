//
//  VideoPlayView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI
import AVKit

struct VideoPlayView: View {
    let video:Video
    var body: some View {
        let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: video.fileName, withExtension: video.fileType)!)
        VideoPlayer(player: avPlayer)
            .navigationTitle(video.videoName)
    }
    
}

struct VideoPlayView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayView(video: Video.step_live)
    }
}
