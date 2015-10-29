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
    }
}

