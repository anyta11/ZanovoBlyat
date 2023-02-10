//
//  ViewController.swift
//  ZanovoBlyat
//
//  Created by круг on 07.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 15
    }


    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "show greeting" : "Hide greeting",
            for: .normal)
    }
}

