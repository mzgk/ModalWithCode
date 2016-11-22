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
    @IBOutlet weak var inoutTextField: UITextField!


// MARK: - ライフサイクル
    override func loadView() {
        super.loadView()
        print("ModalVC :", #function)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ModalVC :", #function)

        // ここでUIにセットする
        inoutTextField.text = inheritData
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ModalVC :", #function)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ModalVC :", #function)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ModalVC :", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // キーボード表示
        inoutTextField.becomeFirstResponder()
        print("ModalVC :", #function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ModalVC :", #function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ModalVC :", #function)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

// MARK: - ボタンタップ時にdelegate（ViewController）に実装したDelegateメソッドを実行する
    @IBAction func tapCloseButton(_ sender: UIButton) {
        print("ModalVC :", #function)
        // キーボードを閉じる
        inoutTextField.resignFirstResponder()
        // Delegate先のメソッドを呼び出す
        self.delegate?.modalViewController(sender: self, inheritText: inoutTextField.text!)
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
