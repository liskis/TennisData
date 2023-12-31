import SwiftUI
struct HomeHeaderBar: View {
    var body: some View {
        Text("").frame(height:1)
        HStack {
            LogoImage()
            HStack(spacing:0) {
                UserNameBtn()
                LebelBtn()
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
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
                    .foregroundColor(Color.indigo)
                    .bold()
            }
        })
        .frame(width: 80, height:30)
        .background(.white)
    }
}
