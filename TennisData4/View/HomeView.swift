import SwiftUI
struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing:0) {
                HomeHeaderBar()
                ZStack {
                    VStack{
                        Image("background")
                            .resizable()
                            .scaledToFit()
                        Spacer()
                    }
                    VStack{
                        Text("").frame(height: 10)
                        StatsData()
                        HomeGraphView()
                        Spacer()
                    }
                }
                Spacer()
            }
        }
    }
}
struct StatsData: View {
    var body: some View {
        HStack(alignment: .bottom){
            Spacer()
            WinningRate()
            Spacer()
            FirstServeRate()
            Spacer()
            SecondServeRate()
            Spacer()
        }
    }
}
struct WinningRate: View {
    var body: some View {
        VStack{
            HStack(alignment: .bottom,spacing:0){
                Text("46.7")
                    .font(.custom("Verdana",size:35))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                Text("%")
                    .font(.custom("Verdana",size:16))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
            }
            Text("(5/17)")
                .font(.custom("Verdana",size:16))
                .bold()
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
            Text("勝率")
                .font(.custom("Verdana",size:16))
                .bold()
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
        }
    }
}
struct FirstServeRate: View {
    var body: some View {
        VStack{
            HStack(alignment: .bottom,spacing:0){
                Text("42.2")
                    .font(.custom("Verdana",size:30))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                Text("%")
                    .font(.custom("Verdana",size:14))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
            }
            Text("(76/180)")
                .font(.custom("Verdana",size:14))
                .bold()
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
            Text("1stサーブin")
                .font(.custom("Verdana",size:14))
                .bold()
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
        }
    }
}
struct SecondServeRate: View {
    var body: some View {
        VStack{
            HStack(alignment: .bottom,spacing:0){
                Text("42.2")
                    .font(.custom("Verdana",size:30))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                Text("%")
                    .font(.custom("Verdana",size:14))
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
            }
            Text("(76/180)")
                .font(.custom("Verdana",size:14))
                .bold()
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
            Text("2ndサーブin")
                .font(.custom("Verdana",size:14))
                .bold()
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
        }
    }
}
#Preview {
    ContentView()
}


