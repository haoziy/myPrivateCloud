//
//  languageFile.swift
//  Cloud
//
//  Created by ZEROLEE on 16/3/30.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation
 /// 为了全文可维护性,国际化等,全代码不能出现硬字符,所有的字面量都经过此文件映射 字符变量->本文件->国际化文件key->UI界面上字符

class GlobalLanguage {
    //登录注册
    static let login_fileName = "login&registLocalizeFile"
    static let login_prefix = "login_regist_"//前缀用来拼接字符变量,防止重复
    class var loginMenu:String {
        return login_prefix + "login"
    }
    class var registMenu:String{
        return login_prefix+"regist"
    }
    
    //主页
    static let homeLocalizeFileName = "HomeLocalizeFile"
    static let home_prefix = "home_"
    class var homeTitle:String{
        return home_prefix + "title"
    }
    
    //发现
    static let discoveryLocalizeFileName = "DiscoveryLocalizeFile"
    static let discovery_prefix = "discovery_"
    class var discoveryTitle:String{
        return discovery_prefix + "title"
    }
    
    //报表
    static let reportFormLocalizeFileName = "ReportFormsLocalizeFile"
    static let report_form_prefix = "report_"
    class var reportFormTitle:String{
        return report_form_prefix + "title"
    }
    
    //关于
    static let aboutLocalizeFileName = "AboutMeLocalizeFile"
    static let about_prefix = "about_"
    class var aboutTitle:String{
        return about_prefix + "title"
    }
}