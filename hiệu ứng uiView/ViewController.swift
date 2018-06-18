//
//  ViewController.swift
//  hiệu ứng uiView
//
//  Created by dohien on 6/16/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var right : Bool = false
    @IBOutlet weak var uiView: UIView!
    @IBAction func button(_ sender: UIButton) {
        if !right {
            right = true
            UIView.animateKeyframes(withDuration: 1.5, delay: 0.0,
                                    animations: {
                                        //add keyframes
                                        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25,
                                                           animations: {
                                                            self.uiView.center.x += 80.0
                                                            
                                        })
            })
} else {
            right = false
            UIView.animateKeyframes(withDuration: 1.5, delay: 0.0,
                                    animations: {
                                        //add keyframes
                                        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25,
                                                           animations: {
                                                            self.uiView.center.x -= 80.0
                                                            
                                        }
                                        )
            }
            )
        }
        
        // k có animation
        // if !gight {
        //        right = true
        //         uiview.center = CGPoint(x: self.view.center.x + 80, y: self.view.center.y)
        // } else {
        // right = false
        //    uiView.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

