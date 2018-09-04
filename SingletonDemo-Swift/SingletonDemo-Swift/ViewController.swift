//
//  ViewController.swift
//  SingletonDemo-Swift
//
//  Created by yf on 2018/9/4.
//  Copyright © 2018 jailbreaklife. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LocationManager.shared.requestForLocation()
        
//        let manager = LocationManager()
        
    }

}

