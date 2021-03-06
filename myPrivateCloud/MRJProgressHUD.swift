//
//  MRJProgressHUD.swift
//  Cloud
//
//  Created by ZEROLEE on 16/3/30.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class MRJProgressHUD
{
    static func showprogressValueAndmessage(value:float_t,message:String)->Void
    {
        SVProgressHUD.showProgress(value, status: message)
    }
    
    static func showProgresssValue(value:float_t)->Void
    {
        SVProgressHUD.showProgress(value)
    }
    
    static func showProgressMessage(message:String)->Void
    {
        SVProgressHUD.showWithStatus(message)
    }
    static func showErrorMessage(message:String)->Void
    {
        SVProgressHUD .showErrorWithStatus(message)
    }
    static func showSuccessMessage(message:String)->Void
    {
        SVProgressHUD .showSuccessWithStatus(message)
    }
    static func showWarnMessage(message:String)->Void
    {
        SVProgressHUD.showInfoWithStatus(message)
    }
    
//    static func show
}