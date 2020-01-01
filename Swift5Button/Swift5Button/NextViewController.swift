//
//  NextViewController.swift
//  Swift5Button
//
//  Created by 細川和也 on 2019/12/22.
//  Copyright © 2019 Kazuya Hosokawa. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    

    @IBAction func change(_ sender: Any) {
        changeLabel.text = "暗号が解除されました"
    }
    
    
}
