//
//  MusicPageView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI

struct MusicPageView: View {
    var body: some View {
        NavigationView{
            AlbumView()
        }
    }
}

struct MusicPageView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPageView()
    }
}
