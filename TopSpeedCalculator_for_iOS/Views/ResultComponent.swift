import SwiftUI

struct CustomResultTable: View {
    let gears = ["1速", "2速", "3速", "4速", "5速", "6速"]
    let rpmValues = ["-1000", "-500", "---?---", "+500", "+1000"]
    var resultNum: String

    var body: some View {
        Text("横にスクロールできます")
            .font(.headline)
        ScrollView(.horizontal) {
            VStack(alignment: .leading, spacing: 0) {
                // 1行目: 結果１
                HStack {
                    Text(resultNum)
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text("")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
//                .background(Color.gray.opacity(0.1))
                .background(Color.white)
                
                // 2行目: rpm/ギア
                HStack(spacing: 0) {
                    Text("rpm/ギア")
                        .bold()
                        .frame(width: 100, height: 40)
                        .border(Color.gray)
                    ForEach(gears, id: \.self) { gear in
                        Text(gear)
                            .frame(width: 100, height: 40)
//                            .background(Color.gray.opacity(0.2))
//                            .background(Color.white)
                            .border(Color.gray)
                    }
                }
                .background(Color.white)

                // 各RPMの行
                ForEach(rpmValues, id: \.self) { rpm in
                    HStack(spacing: 0) {
                        Text(rpm)
                            .frame(width: 100, height: 40)
//                            .background(Color.gray.opacity(0.2))
                            .border(Color.gray)

                        ForEach(1...6, id: \.self) { gear in
                            Text("100km/h")
                                .frame(width: 100, height: 40)
//                                .background(Color.white)
                                .border(Color.gray)
                        }
                    }
                    .background(Color.white)
                }
            }
            .border(AppColors.borderColor, width: 3)
        }
        .padding(.horizontal)
    }
}




struct ResultView_PreViews: PreviewProvider {
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
                CustomResultTable(resultNum: "結果1")
//                CustomResultTable(resultNum: "結果2")
            }
            
            
                        
        }
        .padding()
    }
}
