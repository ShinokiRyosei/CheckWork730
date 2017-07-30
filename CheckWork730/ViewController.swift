//
//  ViewController.swift
//  CheckWork730
//
//  Created by ShinokiRyosei on 2017/07/30.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var slideImageView: UIImageView!

    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!

    var index: Int = 0
    var imageArray: [UIImage?] = [UIImage(named: "CheckWork730_001"), UIImage(named: "CheckWork730_002"), UIImage(named: "CheckWork730_003")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        slideImageView.image = imageArray[index]
        backButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func next() {

        index = index + 1

        slideImageView.image = imageArray[index]

        if index >= 2 {

            nextButton.isEnabled = false

        }else {

            nextButton.isEnabled = true

        }
        backButton.isEnabled = true
    }

    @IBAction func back() {

        index = index - 1

        slideImageView.image = imageArray[index]

        if index <= 0 {

            backButton.isEnabled = false

        }else {

            backButton.isEnabled = true

        }
        nextButton.isEnabled = true 
    }
}

