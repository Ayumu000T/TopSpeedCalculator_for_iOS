import SwiftUI

struct CalculateView: View {
    @StateObject private var viewModel = DataInputViewModel() //入力数値
    
    var body: some View {
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
            VStack {
                ZStack {
                    //　内枠
                    Rectangle()
                        .fill(.white)
        //                .frame(width: .infinity, height: 1850)
                        .border(AppColors.borderColor, width: 3)
                        .padding(12)
        //            Image("fukidashi_3_sp")
        //                .resizable()
        //                .scaledToFit()
                    
                    VStack {
                        
                        // 保存済みデータのリスト
                        SavedDataView()
                        
                        
                        CustomTextField(inputTitle: "車名", placeholder: "例: WR250R", text: $viewModel.motoName)
                        CustomTextField(inputTitle: "最高出力回転数(rpm)", placeholder: "例: 10000", text: $viewModel.rpm)
                        CustomTextField(inputTitle: "一次減速比", placeholder: "例: 3.120", text: $viewModel.primaryReductionRatio)
                        CustomTextField(inputTitle: "二次減速比", placeholder: "例: 3.307", text: $viewModel.secondaryReductionRatio)
                        
                        Text("スプロケットの丁数(純正のままの場合は不要)")
                        CustomTextField(inputTitle: "フロント", placeholder: "例: 13", text: $viewModel.sprocketF)
                        CustomTextField(inputTitle: "リア", placeholder: "例: 43", text: $viewModel.sprocketR)
                        
                        
                        CustomTextField(inputTitle: "リアタイヤの幅(mm)", placeholder: "例: 120", text: $viewModel.tireWidth)
                        CustomTextField(inputTitle: "扁平率(%)", placeholder: "例: 80", text: $viewModel.tireAspectRatio)
                        CustomTextField(inputTitle: "ホイール径(inch)", placeholder: "例: 18", text: $viewModel.wheelInch)
                        
                        Text("各ギアの変速比")
                        CustomTextField(inputTitle: "1速", placeholder: "例: 2.641", text: $viewModel.ratio1)
                        CustomTextField(inputTitle: "2速", placeholder: "例: 1.812", text: $viewModel.ratio2)
                        CustomTextField(inputTitle: "3速", placeholder: "例: 1.317", text: $viewModel.ratio3)
                        CustomTextField(inputTitle: "4速", placeholder: "例: 1.039", text: $viewModel.ratio4)
                        CustomTextField(inputTitle: "5速", placeholder: "例: 0.888", text: $viewModel.ratio5)
                        CustomTextField(inputTitle: "6速", placeholder: "例: 0.785", text: $viewModel.ratio6)
                        
                    }
                    .padding(20) //TextFieldを枠に収める
                }
                calcButton()
//                CustomResultTable()
                CustomResultTable(resultNum: "結果1")
            }
            
        }
    }
}


struct CustomTextField: View {
    let inputTitle: String
    let placeholder: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(inputTitle)
                .font(.headline)
            
            TextField(placeholder, text: $text)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
                .keyboardType(.decimalPad)
                .padding(.bottom, 10)
        }
    }
}


struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            AppColors.backgroundColor1
                .ignoresSafeArea()
            ScrollView {
                CalculateView()
                    .previewLayout(.sizeThatFits)
                    .padding()
            }
        }
    }
}
