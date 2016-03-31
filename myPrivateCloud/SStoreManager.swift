//
//  File.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class StoreManager {
//    static func itemForKey(key:String) -> AnyObject {
//        return nil
//    }
    
    static func boolValueForKey(key:String?) -> Bool {
        if let avliableKey:String = key! {
            return NSUserDefaults.standardUserDefaults().boolForKey(avliableKey)
        }
        else{
            return false
        }
    }
    static func storeBoolValueForKey(key:String?,value:Bool)->Void
    {
        if let avliableKey:String = key! {
            NSUserDefaults.standardUserDefaults().setBool(value, forKey: avliableKey)
        }
    }
}
