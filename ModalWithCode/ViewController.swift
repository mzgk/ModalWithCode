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

    @IBOutlet weak var closedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


// MARK: - ModalViewを表示する
    @IBAction func tapModalButton(_ sender: UIButton) {
        let modal = self.storyboard?.instantiateViewController(withIdentifier: "ModalSB") as! ModalViewController
        modal.modalTransitionStyle = .coverVertical
        modal.modalPresentationStyle = .pageSheet
        modal.delegate = self

        // データを渡す（UIはまだ生成されていないので、直接UIにセットはできない）
        modal.inheritData = "Show"

        // Modalで表示する
        self.present(modal, animated: true, completion: nil)
    }

    
// MARK: - ModalViewを閉じる
    // ModalViewControllerDelegate
    func modalViewController(sender: ModalViewController, inheritText: String) {
        // 表示したModalを閉じる
        self.dismiss(animated: true, completion: nil)

        // Modal側から渡されたデータをUIにセットする
        closedLabel.text = inheritText
    }
}

