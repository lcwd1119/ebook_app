//
//  Album.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import Foundation
import SwiftUI

struct Album:Identifiable{
    let id = UUID()
    let albumName:String
    let singerName:String
    let albumCoverimg:Image
    let songList:[Song]
}

extension Album{
    static let one = Album(albumName: "ONE",singerName: "Aimer", albumCoverimg: Image("Cover_1"), songList: [Song.one,Song.rokudensei])
   
    static let blanc = Album(albumName: "blanc",singerName: "Aimer", albumCoverimg: Image("Cover_2"), songList: [Song.anata,Song.kataomoi])
    static let sundance = Album(albumName: "Sun Dance",singerName: "Aimer", albumCoverimg: Image("Cover_3"), songList: [Song.koiwa,Song.hanabiratachi])
    
    static let fairy = Album(albumName: "Fairy Castle",singerName: "ClariS", albumCoverimg: Image("Cover_4"), songList: [Song.connect,Song.colorful])
    static let claersky = Album(albumName: "Clear sky",singerName: "ClariS", albumCoverimg: Image("Cover_5"), songList: [Song.clearsky])
    static let irony = Album(albumName: "irony",singerName: "ClariS", albumCoverimg: Image("Cover_6"), songList: [Song.irony,Song.naisho])
    static let cheers = Album(albumName: "CheerS",singerName: "ClariS", albumCoverimg: Image("Cover_7"), songList: [Song.cheers])
    static let alisia = Album(albumName: "アリシア",singerName: "ClariS", albumCoverimg: Image("Cover_8"), songList: [Song.alisia])
    
    static let allAlbum = [Album.one,Album.blanc,Album.sundance,Album.fairy,Album.claersky,Album.irony,Album.cheers,Album.alisia]
}
