//
//  ViewController.swift
//  animationTrain
//
//  Created by Andrey Minin on 17/04/2019.
//  Copyright © 2019 Andrey Minin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sendButton.isEnabled = false
        self.sendButton.backgroundColor = .gray
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    
    @IBAction func changeState(_ sender: Any) {
        sendButton.isEnabled = !(sendButton.isEnabled)
        UIView.animate(withDuration: 1, animations: {
            if self.sendButton.isEnabled {
                self.sendButton.backgroundColor = .green
            } else {
                self.sendButton.backgroundColor = .gray
            }
        })
        
        UIView.animate(withDuration: 1, animations: {
            if self.sendButton.isEnabled {
                self.nicknameLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                self.nicknameLabel.textColor = .green
            } else {
                self.nicknameLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.nicknameLabel.textColor = .black
            }
        })
        
        UIView.animate(withDuration: 0.25, delay: 0, options: [], animations: {
            self.sendButton.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)
        }, completion: nil)
        
        UIView.animate(withDuration: 0.25, delay: 0.25, options: [], animations: {
            self.sendButton.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)
    }
    
    @IBAction func sendButtonTapped(_ sender: Any) {
        
    }
}

