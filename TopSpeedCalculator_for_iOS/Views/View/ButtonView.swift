import SwiftUI

//　こんな感じで後でそれぞれのボタンの処理を実行するクラス？を作る
func buttonAction1() {
    print("処理が設定されていません")
}


struct ButtonView: View {
    var body: some View {
        VStack {
            
            CustomButton(
               title: "計算する!",
               backgroundColor: AppColors.backgroundColor1,
               action: buttonAction1
           )
            CustomButton(
               title: "数値を保存",
               backgroundColor: AppColors.saveOrange,
               action: buttonAction1
           )
            CustomButton(
               title: "リセット!",
               backgroundColor: AppColors.deleteRed,
               action: buttonAction1
           )
            

        }

    }
}

struct LoadButtonView: View {
    var body: some View {
        HStack {
            CustomButton(
               title: "読み込む",
               backgroundColor: AppColors.saveOrange,
               action: buttonAction1,
               maxWidth: 120,
               height: 40
           )
            CustomButton(
               title: "削除",
               backgroundColor: AppColors.deleteRed,
               action: buttonAction1,
               maxWidth: 120,
               height: 40
           )
        }
        .padding(.top, 0)
    }
}



struct CustomButton_PreViews: PreviewProvider {
    static var previews: some View {
        ZStack {
            //　外枠
            Rectangle()
                .fill(AppColors.backgroundColor2)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(AppColors.borderColor, lineWidth: 5)
                )
            
            VStack {
                ButtonView()
                LoadButtonView()
            }
            
                        
        }
        .padding()
    }
}
