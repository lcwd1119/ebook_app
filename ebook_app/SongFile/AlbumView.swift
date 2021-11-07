//
//  AlbumView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI

struct AlbumView: View {
    let album:[Album] = Album.allAlbum
    var body: some View {
        ScrollView(.vertical)
        {
            let col = Array(repeating: GridItem(), count: 2)
            LazyVGrid(columns: col) {
                ForEach(album) {
                    item in
                    NavigationLink{
                        SongView(album: item)
                    }label: {
                        CoverView(album: item)
                    }
                }
            }
        }.navigationTitle("專輯/單曲")
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
