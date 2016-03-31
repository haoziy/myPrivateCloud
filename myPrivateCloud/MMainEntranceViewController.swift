//
//  LLoginOrRegistViewController.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation
import UIKit

class MMainEntranceViewController: BaseShowTabbarViwController {
    var myCloude_ipTextField:UITextField = UITextField()//输入ip的地方
    var myCloude_portTextField:UITextField = UITextField()//输入端口号的地方
    var myCloude_domainTextField:UITextField = UITextField()//输入域名的地方
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.addSubview(myCloude_domainTextField)
        self.view.addSubview(myCloude_portTextField)
        self.view.addSubview(myCloude_domainTextField)
        
//        myCloude_ipTextField.masMake
    }
    
    
}




class LLoginOrRegistMainViewController: BaseShowTabbarViwController {
    var login_loginBtn = UIButton()
    var login_accountTextField = UITextField()
    var login_passTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(login_accountTextField)
        
    }
}

