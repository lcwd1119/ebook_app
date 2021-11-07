//
//  HomePageView.swift
//  ebook_app
//
//  Created by 廖晨維 on 2021/11/6.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var rotate = 0.0
    let singersList = [
        Singer.Aimer,
        Singer.ClariS
    ]
    
    var body: some View {
        NavigationView{
            TabView{
                ForEach(singersList){
                    singer in
                    ZStack{
                        NavigationLink{
                            SingerInfoView(singer: singer)
                        }label: {
                            singer.mainImage
                                .mainimgStyle()
                        }
                        NavigationLink{
                            SingerInfoView(singer: singer)
                        }label: {
                            Text(singer.name)
                                .font(.largeTitle)
                        }
                    }
                }
                VStack{
                    Singer.ClariS.mainImage.mainimgStyle()
                        .animation(.default, value: rotate)
                        .rotationEffect(.degrees(rotate))
                    Text("轉吧！！！")
                        .font(.largeTitle)
                        .onTapGesture {
                            withAnimation{
                                rotate = Double.random(in: -360.0...720.0)
                            }
                        }
                    
                }
                Text("2ㄏ2ㄏ")
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
                
                Text("原來")+Text("我").font(.title).foregroundColor(.pink).underline()+Text("比較喜歡")+Text("ClariS")
                    .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.orange).italic()
                
                Text("明明是想作Aimer的")
                    .font(.custom("Nagurigaki-Crayon",size: 30))
                
                VStack {
                    Singer.ClariS.mainImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                    
                    Divider()
                    
                    Singer.Aimer.mainImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                    
                }
                
                ZStack{
                    Singer.ClariS.background
                        .mainimgStyle()
                        .offset(x: 0, y: 150)
                    
                    Text("沒了")
                        .padding()
                        .font(.title)
                        .background(.ultraThinMaterial)
                }
                
            }.tabViewStyle(.page(indexDisplayMode: .never))
                .transition(.opacity.animation(.easeIn(duration: 1)))
                .navigationTitle("歌手")
        }
    }
}

extension Image{
    func mainimgStyle() -> some View {
        self
        .resizable()
        .scaledToFill()
        .frame(width: 250, height: 250)
        .clipShape(Circle())
        .shadow(radius: 10)
        .offset(x: 0, y: -150)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomePageView()
                .preferredColorScheme(.dark)
            HomePageView()
        }
    }
}
