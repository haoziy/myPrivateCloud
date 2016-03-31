//
//  MRJColor.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class MRJColor: NSObject {
    /**
        导航栏上文字颜色一种,白色;
        导航栏/tabbar/主题颜色都是黄色;
        文本内容,如果只有单一级别文本,则用主文本色,如果出现两种级别,第二种颜色为次文本颜色,如果还有第三种颜色,则用notice色
        背景色
        分割线颜色
        .....
    **/
    //导航栏字体颜色;
    static let hex_navgationTextColorString:String = "#FFFFFF"
    //文字内容一级文本颜色
    static let hex_mainTextColorString:String = "#000000"
    //文本内容二级文本颜色
    static let hex_secondaryTextColorString:String = "#999999"
    //文本三级文本颜色
    static let hex_noticeTextColorString:String = "#FFFFFF"
    //主色调;//黄色,tabbar颜色,导航栏背景色
    static let hex_mainThemeColorString:String = "#f4a100"
    //主背景色;
    static let hex_mainBackgroundColorString:String = "#f1f1f1"
    //警告色;负面操作色,红色
    static let hex_alertColorString:String = "#ff3300"
    //扁平化控件颜色
    static let hex_plainColorString:String = "#03a9f4"
    //分割线颜色
    static let hex_separatrixColorString:String = "#dddddd"
    
    
    
}