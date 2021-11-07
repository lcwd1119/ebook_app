//
//  Singer.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/6.
//

import Foundation
import SwiftUI

extension String:Identifiable{
    public var id : String{self}
}

struct Singer:Identifiable{
    let id = UUID()
    let name:String
    let mainImage:Image
    let background:Image
    let Info:[String]
}

extension Singer{
    static let demoSinger = Aimer
    static let Aimer = Singer(name: "Aimer", mainImage: Image("HomePage_img_Aimer"), background: Image("Info_img_Aimer"),Info: ["藝名Aimer取自法語，意為“喜歡”，日文讀作エメ，有時以aimerrhythm名義作詞。個人詳情沒有被公開。","Aimer受樂隊貝斯手出身的父親的影響而在音樂不離身的環境中成長，從小學開始學習鋼琴，中學時因仰慕艾薇兒·拉維尼而以吉他手的身份開始音樂活動。另一方面，因為曾有過海外生活的經驗，而對英語歌詞的作詞也投入了相當大的精力。","15歲時，因為演唱過度而導致聲帶疼痛，為了治療而選擇使用了沉默療法，大概有半年的時間不能發聲，聲帶恢復後變為了現在的聲線並確立了現在的演唱方法。這個時候的聲帶的傷即使在出道後也沒有完全治癒，使用現在的聲線和唱法也有一部分是因為主治醫生的忠告，並將該聲線一直維持到現在。日本音響研究所所長鈴木松美稱Aimer是“能夠使振幅起伏和周波數搖動同時發生，非常罕見的聲音的主人。","6月6日，以DefSTAR Records作為品牌正式宣布出道，並在9月7日發布單曲《六等星の夜/悲しみはオーロラに/TWINKLE TWINKLE LITTLE STAR》其中《六等星の夜》作為富士電視台noitaminA檔《未來都市NO.6》的片尾曲登場，並獲得了RecoChoku音樂銷量榜最高第9位的成績。第二張單曲《Re:pray/寂しくて眠れない夜は》在2011年12月14日發售，在Mora音樂下載網站最高排位第1位，《Re:pray》作為《死神》的第29首ED登場。"])
    
    static let ClariS = Singer(name: "ClariS", mainImage: Image("HomePage_img_ClariS"), background: Image("Info_img_ClariS"),Info: ["ClariS最初是一個由來自北海道的兩個女中學生Clara和Aris（非本名）組成的偶像組合。","ClariS是由兩人的名字組合而成，而單字「claris」在拉丁語中也有著「開朗、清潔、閃耀」等意義（原形為「clārus）。此外也和兩人喜歡的《魯邦三世卡里奧斯特羅之城》作品中的女性角色同名。","Clara從幼稚園時期便想成為一名歌手，後來上音樂學校時認識Aris。由於以學業優先為理由，在各種媒體中也未曾公開本人照片，僅以織田廣之及蒼樹梅等插畫家繪製的插圖示人。","2014年5月26日，Aris宣布因學業原因，在第三張專輯《PARTY TIME》發行後離開該組合。後來加入的成員Karen是Clara上音樂學校時認識的同學。Clara注意到Karen的個性與她自己截然不同，並親自提名Karen接替Aris成為ClariS的第二位成員。","成員都有著代表色以及代表物：Clara是粉紅色，代表是月亮；Aris是藍色，代表是太陽；新加入的成員Karen則是淺綠色，代表是星星。"])
}
