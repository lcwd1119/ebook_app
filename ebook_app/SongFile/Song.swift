//
//  Song.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import Foundation

struct Song:Identifiable{
    let id=UUID()
    let songName:String
    let fileName:String
    let fileType:String
}

extension Song{
    
    static let one = Song(songName: "ONE", fileName: "ONE", fileType: "mp3")
    static let rokudensei = Song(songName: "六等星の夜", fileName: "六等星の夜", fileType: "mp3")
    static let anata = Song(songName: "あなたに出会わなければ〜夏雪冬花〜", fileName: "あなたに出会わなければ〜夏雪冬花〜", fileType: "mp3")
    static let koiwa = Song(songName: "コイワズライ", fileName: "コイワズライ", fileType: "mp3")
    static let hanabiratachi = Song(songName: "花びらたちのマーチ", fileName: "花びらたちのマーチ", fileType: "mp3")
    static let kataomoi = Song(songName: "カタオモイ", fileName: "カタオモイ", fileType: "mp3")
    
    static let naisho = Song(songName: "ナイショの話", fileName: "ナイショの話", fileType: "mp3")
    static let connect = Song(songName: "コネクト", fileName: "コネクト", fileType: "mp3")
    static let colorful = Song(songName: "カラフル", fileName: "カラフル", fileType: "mp3")
    static let cheers = Song(songName: "CheerS", fileName: "CheerS", fileType: "mp3")
    static let clearsky = Song(songName: "Clear Sky", fileName: "Clear Sky", fileType: "mp3")
    static let irony = Song(songName: "irony", fileName: "irony", fileType: "mp3")
    static let alisia = Song(songName: "アリシア", fileName: "アリシア", fileType: "mp3")
    static let Aimer_songs = [.one,Song.rokudensei,Song.anata,Song.koiwa,Song.hanabiratachi,Song.kataomoi]
    static let ClariS_songs = [Song.naisho,Song.connect,Song.colorful,Song.cheers,Song.clearsky,Song.irony,Song.alisia]
    static let allsongs = [Aimer_songs,ClariS_songs]
}
