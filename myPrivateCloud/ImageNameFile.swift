//
//  ImageNameFile.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class ImageNameMap {
    //首页图片名称
    static let home_prefix = "home_"
    class var homeTabbarNormal:String{
        return home_prefix + "tabbar_normal"
    }
    class var homeTabbarSelected:String{
        return home_prefix + "tabbar_selected"
    }
    
    //发现图片名称
    static let discovery_prefix = "discovery_"
    class var discoveryTabbarNormal:String{
        return discovery_prefix + "tabbar_normal"
    }
    class var discoveryTabbarSelected:String{
        return discovery_prefix + "tabbar_selected"
    }
    
    //报表图片名称
    static let report_prefix = "report_"
    class var reportTabbarNormal:String{
        return report_prefix + "tabbar_normal"
    }
    class var reportTabbarSelected:String{
        return report_prefix + "tabbar_selected"
    }
    //报表图片名称
    static let about_prefix = "about_"
    class var aboutTabbarNormal:String{
        return about_prefix + "tabbar_normal"
    }
    class var aboutTabbarSelected:String{
        return about_prefix + "tabbar_selected"
    }
}