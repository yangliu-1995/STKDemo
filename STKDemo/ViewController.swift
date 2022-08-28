//
//  ViewController.swift
//  STKDemo
//
//  Created by Xueyuan Xiao on 2022/8/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dV = DemoView.fromNib()
        view.addSubview(dV)
        dV.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
    }

    @IBAction func b1Act(_ sender: Any) {
        let vc = TestViewController.fromNib()
        present(vc, animated: true)
    }
    
}

