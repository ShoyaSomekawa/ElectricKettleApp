import UIKit


class Kettle1 {
    var product: String = "ケトル１"
    
    func check(water: Int) {
        if water > 0 {
            print("0を超過しました。")
            print("\(water)mlの水が入りました。")
            print("お湯が沸きました。")
        } else {
            print("0を超過していません。")
            print("お湯が沸きました。")
            print("空焚き防止機能が起動しました。")
        }
    }
}
let dp = Kettle1 ()
print("\(dp.product)\n")
// ケトルに水が入っているとき
dp.check(water: 300)
// ケトルに水が入っていないとき
dp.check(water: 0)

class Kettle2 {
    var japan: String?

    func waterCheck(storage: Int) {
        guard storage > 0 else {
            print("スイッチが押されました")
            print("空焚き防止機能が作動し、ストップされました")
            return
        }
        print("\(storage)mlの水を入れました")
        print("スイッチが押されました")
        print("お湯が沸きました")
    }
}

let kc = Kettle2()
print(kc.japan ?? "ケトル2")
// ケトルに水が入っていないとき
kc.waterCheck(storage: 0)
// ケトルに水が入っているとき
kc.waterCheck(storage: 900)

