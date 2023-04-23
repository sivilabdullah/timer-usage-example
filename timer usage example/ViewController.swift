//
//  ViewController.swift
//  timer usage example
//
//  Created by abdullah's Ventura on 23.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var timeCounter: UILabel!
    var timer = Timer()
    var counter = 30
    override func viewDidLoad() {
        super.viewDidLoad()
      
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction(){
        if counter <= 30 && counter > 10  {
            counter -= 1
            timeCounter.text = "\(counter)"
            imageView.image = UIImage(named: "bomb")
            timeCounter.textColor = .black
        }else if counter <= 10 && counter > 0  {
            counter -= 1
            timeCounter.text = "\(counter)"
            timeCounter.textColor = .red
        }else{
            imageView.image = UIImage(named: "explosion")
        }
    }
    
    
}

