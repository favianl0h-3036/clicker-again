//
//  ViewController.swift
//  Return of the Clicker
//
//  Created by Favian LOH on 22/8/20.
//  Copyright © 2020 Favian LOH. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {
    // MARK: - Variables & Constants
    var counter = 0
    var timer: Timer!
    var currentTime: Float!
    
    // MARK: - IBOutlets
    @IBOutlet weak var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(addTime), userInfo: nil, repeats: true)
    }
    
    // MARK: - IBActions
    @IBAction func tapped() {
        counter += 1
        counterLabel.text = "\(counter)"
        if counter == 30 {
            print("Done!")
        }
    }
    
    // MARK: - Other Functions
    @objc func addTime() {
        currentTime += 0.1
    }
}

