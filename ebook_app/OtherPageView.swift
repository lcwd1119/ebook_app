//
//  OtherPageView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/7.
//

import SwiftUI

struct OtherPageView: View {
    
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 50) {
                        ForEach(promotion.promotionlist) {
                            item in
                            Link(destination: URL(string: item.link)!) {
                                item.img
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 200)
                                    .clipped()
                            }
                            
                        }
                    }
                }
                Section{
                    ForEach(Video.allVideo) {
                        item in
                        NavigationLink {
                            VideoPlayView(video: item)
                        } label: {
                            Text(item.videoName)
                        }
                    }
                }header: {
                    Text("LIVE").font(.title)
                }
                Section {
                    
                    Link(destination: URL(string: "https://www.youtube.com/user/aimerSMEJ/featured")!) {
                        Text("Aimer")
                    }
                    Link(destination: URL(string: "https://www.youtube.com/c/clarismusic/featured")!) {
                        Text("ClariS")
                    }
                } header: {
                    Text("Youtube").font(.title)
                }
                
                
                Section {
                    Link(destination: URL(string: "https://www.aimer-web.jp/")!) {
                        Text("Aimer")
                    }
                    
                    Link(destination: URL(string: "https://www.clarismusic.jp/")!)   {
                        Text("ClariS")
                    }
                } header: {
                    Text("官方網站").font(.title).fontWeight(.heavy)
                }
                
                
            }.navigationTitle("其他")
        }
        
        
    }
    
    struct OtherPageView_Previews: PreviewProvider {
        static var previews: some View {
            OtherPageView()
        }
    }
    
}

struct promotion:Identifiable{
    let id = UUID()
    let img:Image
    let link:String
}

extension promotion{
    static let promotionlist = [promotion1,promotion2,promotion3]
    static let promotion1 = promotion(img: Image("Other_img_Aimer"), link: "https://aimer.lnk.to/hoshinokietayoruni_cd")
    static let promotion2 = promotion(img: Image("Other_img_ClariS"), link: "https://www.clarismusic.jp/10th/")
    static let promotion3 = promotion(img: Image("Other _img_ClariS2"), link: "https://claris-room.com/")
}
