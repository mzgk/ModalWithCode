//
//  ModalViewController.swift
//  ModalWithCode
//
//  Created by 水垣岳志 on 2016/11/21.
//  Copyright © 2016年 mzgk. All rights reserved.
//

import UIKit

// 自身を閉じるためのDelegateプロトコル
protocol ModalViewControllerDelegate {
    // inheritText : Delegate先に引き継ぐ値
    func modalViewController(sender: ModalViewController, inheritText: String)
}


class ModalViewController: UIViewController {

    // delegate先を格納する変数
    var delegate: ModalViewControllerDelegate?
    // 遷移元からの引き継ぎデータ
    var inheritData = ""
    @IBOutlet weak var modalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // ここでUIにセットする
        modalLabel.text = inheritData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

// MARK: - ボタンタップ時にdelegate（ViewController）に実装したDelegateメソッドを実行する
    @IBAction func tapCloseButton(_ sender: UIButton) {
        self.delegate?.modalViewController(sender: self, inheritText: "Closed")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
