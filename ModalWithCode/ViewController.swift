//
//  ViewController.swift
//  ModalWithCode
//
//  Created by 水垣岳志 on 2016/11/21.
//  Copyright © 2016年 mzgk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapModalButton(_ sender: UIButton) {
        let modal = self.storyboard?.instantiateViewController(withIdentifier: "ModalSB") as! ModalViewController
        modal.modalTransitionStyle = .coverVertical
        modal.modalPresentationStyle = .pageSheet

        self.present(modal, animated: true, completion: nil)
    }

}

