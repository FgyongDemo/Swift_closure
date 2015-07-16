//
//  ViewController.swift
//  Swift_闭包Demo——
//
//  Created by Charlie on 15/7/16.
//  Copyright (c) 2015年 Swift. All rights reserved.
//

import UIKit
//相当于 oc typedef
typealias sendClosure = (sender:Int)-> Void


class ViewController: UIViewController {

    var closure :sendClosure?//函数指针  相当于 oc中的block  和oc中block部一样的地方就是 block飞copy 可以copy很多份block都可以同时执行，但是swift中的函数指针指向的函数是唯一的，就是只有一份地址，只会执行一次。
    
    
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
        self.closure = sender //给函数指针函数地址
    }
    @IBAction func ClickButton(sender: UIButton) {
        if (closure != nil) {
            closure!(sender: sender.tag)//执行函数指针指向的函数
        }
    }
}

