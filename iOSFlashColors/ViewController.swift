//
//  ViewController.swift
//  iOSFlashColors
//
//  Created by Shaik, Imam Hussain on 10/18/15.
//  Copyright © 2015 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i=0
    @IBOutlet var myView: UIView!
    @IBAction func buttonClick(sender: AnyObject) {
        changeColor(++i)
    }

    //hello world. testing 123.
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeColor(iteration: Int){
        //there is another way to change the color of the view, which is self.view.backgroundColor = UIColor.yellowColor(). Here I created a outlet for the view. Want to know which apporach is good !!
        
        switch iteration {
            case 1:
                myView.backgroundColor = UIColor.yellowColor()
            case 2:
                myView.backgroundColor = UIColor.redColor()
            case 3:
                myView.backgroundColor = UIColor.purpleColor()
            default:
                i=0
                myView.backgroundColor = UIColor.whiteColor()
        }
    }

}

