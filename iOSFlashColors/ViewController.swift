//
//  ViewController.swift
//  iOSFlashColors
//
//  Created by Shaik, Imam Hussain on 10/18/15.
//  Copyright © 2015 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let NUMBER_OF_COLORS = 4
    //To control looping the colors for each click
    var i=0

    @IBAction func buttonClick(_: AnyObject) {
        //color change will be handled and each click will be counted
        changeColor(++i % NUMBER_OF_COLORS)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func changeColor(iteration: Int){
        switch iteration {
            case 1:
                UIView.animateWithDuration(1.5, animations: {
                    self.view.backgroundColor = UIColor.purpleColor()
                })
            case 2:
                UIView.animateWithDuration(1.5, animations: {
                    self.view.backgroundColor = UIColor.orangeColor()
                })
            case 3:
                UIView.animateWithDuration(1.5, animations: {
                    self.view.backgroundColor = UIColor.grayColor()
                })
            default:
                UIView.animateWithDuration(1.5, animations: {
                    self.view.backgroundColor = UIColor.whiteColor()
                })
        }
        startBlockAnimation(iteration)
    }
    
    func startBlockAnimation(animSpeed: Int) {
        
        let block = UIView()
        block.frame = CGRect(x:50, y:50, width: 20, height: 20)
        block.backgroundColor = UIColor.redColor()
        self.view.addSubview(block)
        
            
        // randomly create a value between 0.0 and 150.0
        let randomYOffset = CGFloat( arc4random_uniform(150))
            
        // for every y-value on the bezier curve
        // add our random y offset so that each individual animation
        // will appear at a different y-position
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16,y: 239 + randomYOffset))
        path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            
        // create the animation
        let anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.CGPath
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = Double (animSpeed+2) % 8
            
        // add the animation
        block.layer.addAnimation(anim, forKey: "animate position along path")
    }
}

