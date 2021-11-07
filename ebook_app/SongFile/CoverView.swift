//
//  CoverView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI

struct CoverView: View {
    let album:Album
    var body: some View {
        VStack{
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay(album.albumCoverimg
                        .resizable()
                        .scaledToFill()
            )
            .clipped()
            Text(album.albumName)
        }
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView(album: Album.sundance)
    }
}
