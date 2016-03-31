//
//  MRJFont.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class MRJFont: NSObject {
    //字体 ,如果遇到国际化字符长短变化太大,可能会采取压缩字体适应控件大小;
    static let navigationFont:UIFont = UIFont.systemFontOfSize(MRJSize.navigationFontSize)
    
    static let mainTextFont:UIFont = UIFont.systemFontOfSize(MRJSize.mainTextFontSize)
    static let middleTextFont:UIFont = UIFont.systemFontOfSize(MRJSize.middleTextFontSize)
    static let smallTextFont:UIFont = UIFont.systemFontOfSize(MRJSize.smallFontSize)
    
}



class MRJSize: NSObject {
    static let navigationFontSize:CGFloat = 20.0//导航栏字体20号
    static let mainTextFontSize:CGFloat = 17.0//大号文本字体17
    static let middleTextFontSize:CGFloat = 15.0//中号文本字体15
    static let smallFontSize:CGFloat = 11.0//小号问问吧字体11
    
    class var screenSize:CGSize//屏幕尺寸
    {
        return UIScreen.mainScreen().bounds.size
    }
    class var screenWith:CGFloat//屏宽;//设备发生转屏横屏时候,可能会有变化
    {
        return UIScreen.mainScreen().bounds.size.width
    }
    class var screenHeight:CGFloat//屏高;//设备发生转屏横屏时候,可能会有变化
    {
        return UIScreen.mainScreen().bounds.size.height
    }
    class var screenRateScale:CGFloat//屏幕比;//retina系数
    {
        return UIScreen.mainScreen().scale
    }
}
