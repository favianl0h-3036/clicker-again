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
    var time: Double = 0
    
    // MARK: - IBOutlets
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet var tapGestureRecogniser: UITapGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(addTime), userInfo: nil, repeats: true)
    }
    
    // MARK: - IBActions
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        counterLabel.text = String(counter)
        if counter == 30 {
            print("Maximum reached in \(time) seconds!")
            performSegue(withIdentifier: "exitClicker", sender: self)
        }
    }
    
    // MARK: - Other Functions
    @objc func addTime() {
        time += 0.1
    }
}
