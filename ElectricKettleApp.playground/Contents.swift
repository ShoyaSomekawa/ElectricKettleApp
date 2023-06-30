import UIKit
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


class Kettle1 {
    
    var timeSet = (min:0,sec:0)
    
    var timer: Timer!
    
    var limit: Int = 2
    
    var minute: Int
    var second: Int
    let water: Int
    
    init(minute: Int, second: Int, water: Int) {
        self.minute = minute
        self.second = second
        self.water = water
    }
    
    func printContent() {
        print("水の量: \(water)ml、温め時間\(minute)分\(second)秒")
    }
    
    func setTimer() {
        printContent()
        //電気ケトルの水の量は500mlが最大とする。
        guard water <= 500 else {
            print("水の量が超過しています。500ml以下にしてください。")
            return
        }
        
        guard water > 0 else {
            print("水が入っていません。")
            print("空焚き防止機能が起動しました。")
            return
        }
        
        print("温め開始！")
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countup), userInfo: nil, repeats: true)
    }
    
    @objc func countup() {
        second += 1
        if 60 == second && -1 != minute {
            minute += 1
            second = minute == 0 ? 60 : 0
        }
        print("カウントは\(minute)分\(second)秒です。")
        if limit <= minute {
            print("カチッ！終了です。")
            timer?.invalidate()
        }
    }
}

let timer1 = Kettle1(minute: 0, second: 0, water: 0)
timer1.setTimer()

