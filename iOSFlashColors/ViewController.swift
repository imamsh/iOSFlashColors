//
//  ViewController.swift
//  iOSFlashColors
//
//  Created by Shaik, Imam Hussain on 10/18/15.
//  Copyright © 2015 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //To control looping the colors for each click
    var i=0

    @IBOutlet weak var clickBtn: UIButton!
    @IBAction func buttonClick(_: AnyObject) {
        //color change will be handled and each click will be counted
        changeColor(++i)
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
                    self.clickBtn.backgroundColor = UIColor.whiteColor()
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
                i=0
        }
    }

}

