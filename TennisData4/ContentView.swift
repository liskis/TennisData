//
//  ContentView.swift
//  TennisData
//
//  Created by 渡辺健輔 on 2023/12/27.
//

import SwiftUI

struct ContentView: View {
    init() {
        let appearance: UITabBarAppearance = UITabBarAppearance()
        appearance.backgroundColor = .black
        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    var body: some View {
            TabView {
                HomeView().tabItem {
                    Text("HOME")
                    Image(systemName: "house.fill")
                }
                MatchRecordView().tabItem {
                    Text("試合履歴")
                    Image(systemName: "list.bullet")
                }
                DataAnalysisView().tabItem {
                    Text("データ分析")
                    Image(systemName: "chart.pie.fill")
                }
            }
            .accentColor(.white)


    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text("").frame(height:1)
                HStack {
                    LogoImage()
                    HStack(spacing:0) {
                        UserNameBtn()
                        LebelBtn()
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Image("background")
                    .aspectRatio(CGSize(width: 1, height: 1), contentMode: .fit)
//                    .resizable()
                    .scaledToFill()
//                    .frame(maxWidth: .infinity,maxHeight:500)
//                    .clipShape(Rectangle())
            }
            
        }
    }
}

struct LogoImage: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFill()
            .frame(width: 120,height: 20, alignment: .leading)
    }
}

struct UserNameBtn: View {
    var body: some View {
        Image("angleG")
            .resizable()
            .scaledToFill()
            .frame(width: 15,height: 30)
        Button(action: {
             //タップ処理
        },label:  {
            Text("渡辺健輔さん")
                .font(.custom("", size: 10))
                
        })
        .frame(width: 100, height:30)
        .background(.gray)
    }
}
struct LebelBtn: View {
    var body: some View {
        Image("angleGW")
            .resizable()
            .scaledToFill()
            .frame(width: 15,height: 30)
        Button(action: {
             //タップ処理
        },label:  {
            VStack {
                Text("初心者")
                    .font(.custom("", size: 8))
                    .foregroundColor(Color.black)
                Text("ビギナーモード")
                    .font(.custom("", size: 8))
                    .foregroundColor(Color.orange)
            }
        })
        .frame(width: 80, height:30)
        .background(.white)
    }
}

struct MatchRecordView: View {
    var body: some View {
        ZStack {
           
           

        }
    }
}

struct DataAnalysisView: View {
    var body: some View {
        ZStack {
           

        }
    }
}

#Preview {
    ContentView()
}
