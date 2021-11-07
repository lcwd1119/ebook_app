//
//  Video.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import Foundation
struct Video:Identifiable{
    let id = UUID()
    let videoName:String
    let fileName:String
    let fileType:String
}

extension Video{
    static let connect_live = Video(videoName: "ClariS『コネクト』 by 1st武道館コンサート〜2つの仮面と失われた太陽〜", fileName: "connect_live", fileType: "mp4")
    static let hitorigoto_live = Video(videoName: "ClariS ヒトリゴト Live in Sacra Music Fes.2019", fileName: "hitorigoto_live", fileType: "mp4")
    static let step_live = Video(videoName: "ClariS『Step』 by 1st武道館コンサート〜2つの仮面と失われた太陽〜", fileName: "step_live", fileType: "mp4")
    static let kanashimi_live = Video(videoName: "Aimer 「悲しみの向こう側」Studio Live for the 9th Anniversary", fileName: "kanashimi_live", fileType: "mp4")
    static let kataomoi_live = Video(videoName: "Aimer「カタオモイ」LIVE（Aimer Live in 武道館 \"blanc et noir\" ）", fileName: "kataomoi_live", fileType: "mp4")
    
    static let allVideo = [Video.connect_live,Video.hitorigoto_live,Video.step_live,Video.kataomoi_live,Video.kanashimi_live]
}
