//
//  SecondVC.swift
//  Swift_闭包Demo——
//
//  Created by Charlie on 15/7/16.
//  Copyright (c) 2015年 Swift. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBAction func Click(sender: UIButton) {
        var vc = ViewController()
        vc.setClickButtonEvent { (tag) -> Void in
            println("输出来了tag值 is \(tag)")
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        var button = UIButton (frame: CGRect (x: 100, y: 100, width: 100, height: 40))
        self.view.addSubview(button)
        button.setTitle("btn", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button .addTarget(self, action: "Click:", forControlEvents: UIControlEvents.TouchUpInside)
    }
}
