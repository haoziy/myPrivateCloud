//
//  DDiscoveryMainViewController.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class DDiscoverMainViewController: BaseShowTabbarViwController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = NSString.global_globalString(GlobalLanguage.discoveryTitle, tableName: GlobalLanguage.discoveryLocalizeFileName)
    }
}