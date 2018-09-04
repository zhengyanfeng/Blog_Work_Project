//
//  LocationManager.swift
//  SingletonDemo-Swift
//
//  Created by yf on 2018/9/4.
//  Copyright © 2018 jailbreaklife. All rights reserved.
//

import UIKit

class LocationManager: NSObject {
    
    static let shared = LocationManager()
    
    var hasLocation: Bool?
    
    private override init() {
        
    }
    
    func requestForLocation(){

        hasLocation = true
        print("Location granted")
    }

}
