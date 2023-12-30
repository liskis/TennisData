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

#Preview {
    ContentView()
}
