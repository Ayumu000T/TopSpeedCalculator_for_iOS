import Foundation

class DataInputViewModel: ObservableObject {
    @Published var motoName: String = ""                    // 車名
    @Published var rpm: String = ""                         // 最高出力回転数
    @Published var primaryReductionRatio: String = ""       // 一次減速比
    @Published var secondaryReductionRatio: String = ""     // 二次減速比
    @Published var sprocketF: String = ""                   // フロントスプロケット
    @Published var sprocketR: String = ""                   // リアスプロケット
    @Published var tireWidth: String = ""                   // タイヤ幅
    @Published var tireAspectRatio: String = ""             // 扁平率
    @Published var wheelInch: String = ""                   // ホイール径
    @Published var ratio1: String = ""                      // ギア比 1速。以下6速まで続く
    @Published var ratio2: String = ""
    @Published var ratio3: String = ""
    @Published var ratio4: String = ""
    @Published var ratio5: String = ""
    @Published var ratio6: String = ""
    
    
    // 後で数値の型をキャストする関数を作る
}

