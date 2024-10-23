import SwiftUI

struct AppColors {
    static let backgroundColor1 = Color(red: 0.313, green: 0.639, blue: 0.671) // 背景色1(ターコイズブルー)
    static let backgroundColor2 = Color(red: 0.98, green: 0.86, blue: 0.76) //　背景色2(クリーム)
    static let borderColor = Color(red: 29/255, green: 49/255, blue: 60/255) // 文字色とボーダー
}


struct ContentView: View {
    var body: some View {
        ZStack {
            AppColors.backgroundColor1 //背景色
                .ignoresSafeArea()
            
            ScrollView {
                // 計算機の入力部分
                CalculateView()
            }
        }
    }
}

#Preview {
    ContentView()
}