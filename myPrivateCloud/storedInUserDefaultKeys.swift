//
//  File.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation


///为了管理存储在UserDefault里keys 统一定义一个keys列表来管理;
class StoreUserDefaultKeys {
        static  let intorduce_prefix:String = "introduce_" //是否是首次安装前缀,首次安装软件需要各种introduce
        class  var introduce_isFirstInstallKey:String  {
        return intorduce_prefix + "isFirtInstall"
    }
}
