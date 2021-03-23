//
//  ViewController.swift
//  svetofor
//
//  Created by Admin1 on 23.03.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButtonOutlet: UIButton!

    @IBOutlet weak var greenSignalView: UIView!
    @IBOutlet weak var yellowSignalView: UIView!
    @IBOutlet weak var redSignalView: UIView!
    override func viewWillLayoutSubviews() {
        redSignalView.layer.cornerRadius = 60
        yellowSignalView.layer.cornerRadius = 60
        greenSignalView.layer.cornerRadius = 60
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        yellowSignalView.alpha = 0.3
        greenSignalView.alpha = 0.3
        redSignalView.alpha = 0.3
        startButtonOutlet.layer.cornerRadius = 10
    }

    @IBAction func startButton(_ sender: UIButton) {
        startButtonOutlet.setTitle("NEXT", for: .normal)
        if redSignalView.alpha == 1 {
            redSignalView.alpha = 0.3
            yellowSignalView.alpha = 1
        }else if yellowSignalView.alpha == 1 {
            yellowSignalView.alpha = 0.3
            greenSignalView.alpha = 1
        }else if greenSignalView.alpha == 1 {
            greenSignalView.alpha = 0.3
            redSignalView.alpha = 1
        }else {
            redSignalView.alpha = 1
        }
       
    }

}

