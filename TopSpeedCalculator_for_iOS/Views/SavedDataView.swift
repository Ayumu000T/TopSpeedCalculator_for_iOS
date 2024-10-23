import SwiftUI

struct SavedDataView: View {
    let motoDataArray = ["ヤマハ | YAMAHA　WR250R", "CRF1100LAfricaTwinAdventure", "バイク3", "バイク4"]
    @State private var selectedMoto: String = ""
    
    var body: some View {
        List {
            Section(header: Text("保存済み数値")
                .font(.headline)
                .foregroundColor(Color.black)
            ) {
                Picker("",selection: $selectedMoto) {
                    ForEach(motoDataArray, id: \.self) { moto in
                        Text(moto)
                            .lineLimit(1)
                            .truncationMode(.tail) // 尾部で省略表示
                    }
                }
                .listRowBackground(Color.gray.opacity(0.2))
            }
        }
//        .listStyle(PlainListStyle())
        .scrollContentBackground(.hidden) // Listの背景色を無効化
        .background(Color.clear)
        .frame(height: 100)
    }
}

struct SavedDataView_Previews: PreviewProvider {
    static var previews: some View {
        
        SavedDataView()
    }
}
