//
//  ViewController.swift
//  ModalWithCode
//
//  Created by 水垣岳志 on 2016/11/21.
//  Copyright © 2016年 mzgk. All rights reserved.
//

import UIKit

// 表示したModalViewを閉じる責務があるので、ModalViewControllerDelegateを宣言
class ViewController: UIViewController, ModalViewControllerDelegate {

    @IBOutlet weak var inoutTextField: UITextField!


// MARK: - ライフサイクル
    override func loadView() {
        super.loadView()
        print("FirstVC :", #function)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("FirstVC :", #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("FirstVC :", #function)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("FirstVC :", #function)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("FirstVC :", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // キーボード表示
        inoutTextField.becomeFirstResponder()
        print("FirstVC :", #function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("FirstVC :", #function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("FirstVC :", #function)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



// MARK: - ModalViewを表示する
    @IBAction func tapModalButton(_ sender: UIButton) {
        print("FirstVC :", #function)

        // キーボードを閉じる
        inoutTextField.resignFirstResponder()

        // ModalViewControllerのインスタンスを生成する
        let modal = self.storyboard?.instantiateViewController(withIdentifier: "ModalSB") as! ModalViewController
        modal.modalTransitionStyle = .coverVertical
        modal.modalPresentationStyle = .pageSheet

        // ModalViewControllerのdelegateに自身を設定する
        modal.delegate = self

        // データを渡す（UIはまだ生成されていないので、直接UIにセットはできない）
        modal.inheritData = inoutTextField.text!

        // Modalで表示する
        self.present(modal, animated: true, completion: nil)
    }



// MARK: - ModalViewを閉じる
    // ModalViewControllerDelegate
    func modalViewController(sender: ModalViewController, inheritText: String) {
        print("FirstVC :", #function)

        // 表示したModalを閉じる
        self.dismiss(animated: true, completion: nil)

        // Modal側から渡されたデータをUIにセットする
        inoutTextField.text = inheritText
    }
}

