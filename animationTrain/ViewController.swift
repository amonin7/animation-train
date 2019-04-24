//
//  ViewController.swift
//  animationTrain
//
//  Created by Andrey Minin on 17/04/2019.
//  Copyright © 2019 Andrey Minin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var img1 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img2 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img3 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img4 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    
    var img5 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img6 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img7 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img8 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    
    var img9 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img10 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img11 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img12 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    
    var img13 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img14 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img15 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    var img16 = UIImageView(image: #imageLiteral(resourceName: "Untitled"))
    
    func setAnImage(img: UIImageView) {
        img.center.x = self.view.center.x
        img.center.y = self.view.center.y
        img.transform = CGAffineTransform(scaleX: 0.075, y: 0.075)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        sendButton.isEnabled = false
        self.sendButton.backgroundColor = .gray
        
        setAnImage(img: img1)
        setAnImage(img: img2)
        setAnImage(img: img3)
        setAnImage(img: img4)
        
        setAnImage(img: img5)
        setAnImage(img: img6)
        setAnImage(img: img7)
        setAnImage(img: img8)
        
        setAnImage(img: img9)
        setAnImage(img: img10)
        setAnImage(img: img11)
        setAnImage(img: img12)
        
        setAnImage(img: img13)
        setAnImage(img: img14)
        setAnImage(img: img15)
        setAnImage(img: img16)
    }
    
    func animateImageMoveLeft(img: UIImageView, delay: Double, location: CGPoint) {
        img.center = location
        
        UIView.animate(withDuration: 1, delay: delay, options: [.repeat], animations: {
            self.view.addSubview(img)
            img.center.x -= self.view.bounds.width
        }, completion: nil)
    }
    
    func animateImageMoveRight(img: UIImageView, delay: Double, location: CGPoint) {
        img.center = location
        
        UIView.animate(withDuration: 1, delay: delay, options: [.repeat], animations: {
            self.view.addSubview(img)
            img.center.x += self.view.bounds.width
        }, completion: nil)
    }
    
    func animateImageMoveTop(img: UIImageView, delay: Double, location: CGPoint) {
        img.center = location
        
        UIView.animate(withDuration: 1, delay: delay, options: [.repeat], animations: {
            self.view.addSubview(img)
            img.center.y += self.view.bounds.height
        }, completion: nil)
    }
    
    func animateImageMoveBottom(img: UIImageView, delay: Double, location: CGPoint) {
        img.center = location
        
        UIView.animate(withDuration: 1, delay: delay, options: [.repeat], animations: {
            self.view.addSubview(img)
            img.center.y -= self.view.bounds.height
        }, completion: nil)
    }
    
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches.first
        
        location = touch.location(in: self.view)
        
        animateImageMoveLeft(img: img1, delay: 0, location: location)
        animateImageMoveLeft(img: img2, delay: 0.25, location: location)
        animateImageMoveLeft(img: img3, delay: 0.5, location: location)
        animateImageMoveLeft(img: img4, delay: 0.75, location: location)
        
        animateImageMoveRight(img: img5, delay: 0, location: location)
        animateImageMoveRight(img: img6, delay: 0.25, location: location)
        animateImageMoveRight(img: img7, delay: 0.5, location: location)
        animateImageMoveRight(img: img8, delay: 0.75, location: location)
        
        animateImageMoveTop(img: img9, delay: 0, location: location)
        animateImageMoveTop(img: img10, delay: 0.25, location: location)
        animateImageMoveTop(img: img11, delay: 0.5, location: location)
        animateImageMoveTop(img: img12, delay: 0.75, location: location)
        
        animateImageMoveBottom(img: img13, delay: 0, location: location)
        animateImageMoveBottom(img: img14, delay: 0.25, location: location)
        animateImageMoveBottom(img: img15, delay: 0.5, location: location)
        animateImageMoveBottom(img: img16, delay: 0.75, location: location)

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.img1.removeFromSuperview()
        self.img2.removeFromSuperview()
        self.img3.removeFromSuperview()
        self.img4.removeFromSuperview()
        
        self.img5.removeFromSuperview()
        self.img6.removeFromSuperview()
        self.img7.removeFromSuperview()
        self.img8.removeFromSuperview()
        
        self.img9.removeFromSuperview()
        self.img10.removeFromSuperview()
        self.img11.removeFromSuperview()
        self.img12.removeFromSuperview()
        
        self.img13.removeFromSuperview()
        self.img14.removeFromSuperview()
        self.img15.removeFromSuperview()
        self.img16.removeFromSuperview()

        
    }
    
    @IBAction func changeState(_ sender: Any) {
        sendButton.isEnabled = !(sendButton.isEnabled)
        UIView.animate(withDuration: 1, animations: {
            if self.sendButton.isEnabled {
                self.sendButton.backgroundColor = .green
            } else {
                self.sendButton.backgroundColor = .gray
            }
        })
        
        /*UIView.animate(withDuration: 1, delay: 0, options: [.repeat], animations: {
            self.img1.center.x -= self.view.bounds.width
        }, completion: nil)*/
        
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

