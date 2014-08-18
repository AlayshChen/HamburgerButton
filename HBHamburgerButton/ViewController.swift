//
//  ViewController.swift
//  HBHamburgerButton
//
//  Created by Alaysh on 8/17/14.
//  Copyright (c) 2014 Alaysh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var button: HamburgerButton! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 38.0 / 255, green: 151.0 / 255, blue: 68.0 / 255, alpha: 1)
        
        self.button = HamburgerButton(frame: CGRectMake(133, 133, 54, 54))
        self.button.addTarget(self, action: "toggle:", forControlEvents:.TouchUpInside)
        
        self.view.addSubview(button)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle  {
        return .LightContent
    }
    
    func toggle(sender: AnyObject!) {
        self.button.showsMenu = !self.button.showsMenu
    }
}

