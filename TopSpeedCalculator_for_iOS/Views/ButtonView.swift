import SwiftUI

//　こんな感じで後でそれぞれのボタンの処理を実行するクラス？を作る
func buttonAction1() {
    print("処理が設定されていません")
}


struct calcButton: View {
    var body: some View {
        VStack {
            CustomButton(title: "計算する!", backgroundColor: AppColors.backgroundColor1, textColor: .white, action: buttonAction1)
            CustomButton(title: "数値を保存", backgroundColor: AppColors.saveOrange, textColor: .white, action: buttonAction1)
            CustomButton(title: "リセット", backgroundColor: AppColors.deleteRed, textColor: .white, action: buttonAction1)

        }
    }
}



struct CustomButton_PreViews: PreviewProvider {
    static var previews: some View {
        ZStack {
            //　外枠
            Rectangle()
                .fill(AppColors.backgroundColor2)
//                .frame(width: .infinity, height: 1900)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(AppColors.borderColor, lineWidth: 5)
                )
            

            calcButton()
                        
        }
        .padding()
    }
}
