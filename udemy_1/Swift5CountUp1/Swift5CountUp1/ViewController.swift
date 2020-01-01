//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 細川和也 on 2019/12/22.
//  Copyright © 2019 Kazuya Hosokawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "0"
        
    }

    @IBAction func countUp(_ sender: Any) {
        count += 1
        
        countLabel.text = String(count)
        
        if (count >= 10) {
            changeTextColor(textColor: .yellow)
        }
    }
    
    @IBAction func countDown(_ sender: Any) {
        count -= 1
        
        countLabel.text = String(count)
        
        if(count <= 0) {
            changeTextColor(textColor: .white)
        }
        
    }
    
    func changeTextColor(textColor: UIColor) {
        countLabel.textColor = textColor
    }
}

