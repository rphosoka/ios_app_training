//
//  ViewController.swift
//  Swift5Timer1
//
//  Created by 細川和也 on 2019/12/23.
//  Copyright © 2019 Kazuya Hosokawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var timer = Timer()
    
    var  count = Int()
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // stopButtonを押せなくする
        stopButton.isEnabled = false
        startButton.isEnabled = true
        
        for i in 0..<5 {
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
        }
        
        imageView.image = UIImage(named: "0")
        
    }
    
    @IBAction func start(_ sender: Any) {
        
        // stopButtonを押せるようにする
        stopButton.isEnabled = true
        // startButtonを押せないようにする
        startButton.isEnabled = false
        // timerを開始する
        startTimer()
    }
    
    @IBAction func stop(_ sender: Any) {
       
        // startButtonを押せるようにする
        startButton.isEnabled = true
        // stopButtonを押せないようにする
        stopButton.isEnabled = false
        // timerを止める
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    @objc func timerUpdate() {
        count += 1
        
        if count > 4 {
            count = 0
        }
        
        imageView.image = imageArray[count]
    }
    
    
}

