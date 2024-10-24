import SwiftUI

/*
 * PCのウィンドー風の背景のコンポーネント
 * このうえに数値の入力部分などを配置する
 */

struct CustomRectangleComponent: View {
    var body: some View {
        VStack(spacing: 0) {
            // 上部ボーダー
            ZStack {
                Rectangle()
                    .fill(AppColors.borderColor)
                    .frame(height: 35)
                    // 上だけ丸く
                    .clipShape(.rect(
                        topLeadingRadius: 20,
                        topTrailingRadius: 20
                    ))
                
                // スプロケット(画像)
                HStack {
                    HStack {
                        Sprockets(sprocket: "sprocket_red")
                        Sprockets(sprocket: "sprocket_blue")
                        Sprockets(sprocket: "sprocket_orange")
                    }
                    
                    Spacer()
                    
                    Sprockets(sprocket: "sprocket_red")
                }
                .padding(.horizontal, 8)
            }
            
            // 背景
            Rectangle()
                .fill(AppColors.backgroundColor2)
                .clipShape(.rect(
                    bottomLeadingRadius: 20,
                    bottomTrailingRadius: 20
                ))

        }
        // 全体の外枠
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(AppColors.borderColor, lineWidth: 5)
        )
    }
}

// スプロケット画像の設定
struct Sprockets: View {
    var sprocket: String
    
    var body: some View {
        Image(sprocket)
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
    }
}


#Preview {
    CustomRectangleComponent()
        .padding()
}
