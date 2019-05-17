//
//  ViewController.swift
//  BasicAnimation
//
//  Created by Reynard Vincent Nata on 17/05/19.
//  Copyright © 2019 Reynard Vincent Nata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var play = true
    var angle = CGFloat(90*Double.pi/180)
    
    @IBOutlet weak var ViewAnimate: UIView!
    @IBOutlet weak var BackgroundView: UIView!
    
    @IBAction func PlayButton(_ sender: Any) {
        if play {
            UIView.animate(withDuration: 5) {
                self.ViewAnimate.frame.origin.x = 150
                self.ViewAnimate.frame.origin.y = 200
                self.ViewAnimate.backgroundColor =  #colorLiteral(red: 1, green: 0.08448538929, blue: 0, alpha: 1)
                self.ViewAnimate.transform = CGAffineTransform(scaleX: 2, y: 2)
                print(self.ViewAnimate.frame)
                UIView.animate(withDuration: 4, delay: 5, options: UIView.AnimationOptions.init(), animations: {
                    self.ViewAnimate.transform = CGAffineTransform(rotationAngle: self.angle)
                    UIView.animate(withDuration: 4, delay: 9, options: UIView.AnimationOptions.init(), animations: {
                        self.ViewAnimate.center = self.BackgroundView.center
                    }, completion: nil)
                }, completion: nil)
            }
            play = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ViewAnimate.frame)
    }


}

