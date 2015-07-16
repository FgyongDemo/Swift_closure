//
//  ViewController.swift
//  Swift_闭包Demo——
//
//  Created by Charlie on 15/7/16.
//  Copyright (c) 2015年 Swift. All rights reserved.
//

import UIKit

typealias sendClosure = (sender:Int)-> Void


class ViewController: UIViewController {

    var closure :sendClosure?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        var button = UIButton (frame: CGRect (x: 100, y: 100, width: 100, height: 40))
        self.view.addSubview(button)
        button.setTitle("button", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button .addTarget(self, action: "ClickButton:", forControlEvents: UIControlEvents.TouchUpInside)
    }
   
    func setClickButtonEvent(sender:(tag:Int)->Void){
        self.closure = sender
    }
    @IBAction func ClickButton(sender: UIButton) {
        if (closure != nil) {
            closure!(sender: sender.tag)
        }
    }
}

