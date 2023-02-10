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
       // greetingButton.layer.cornerRadius = 15
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }


    @IBAction func greetingButtonTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show greeting" : "Hide greeting"
        )
    }
    private func setupButton (with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.9722618461, green: 0.560998261, blue: 1, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return buttonConfiguration
    }
}

