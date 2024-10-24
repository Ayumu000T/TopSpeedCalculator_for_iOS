import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        AppColors.backgroundColor1 //背景色
            .ignoresSafeArea()
            ScrollView {
                ZStack {
                    CustomRectangleComponent()
                    VStack {
                        // 計算機の入力部分
                        CalculateView()
                            .padding()
                        ButtonView()
                        ResultComponent(resultNum: "結果1")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
