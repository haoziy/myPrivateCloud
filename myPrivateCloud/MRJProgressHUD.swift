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
//    static func show (message:String)->Void
//    {
//        SVProgressHUD .showProgress(<#T##progress: Float##Float#>, status: <#T##String!#>)
//    }
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