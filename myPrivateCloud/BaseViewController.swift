//
//  BaseViewController.swift
//  Cloud
//
//  Created by ZEROLEE on 16/3/30.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

///基类一般什么也不用干,除非特殊需要个别界面(比如个别页面支持/不支持转屏)跟别的不一致时候才来修改实现差异化
///只有统一调度,比如友盟统计页面停留,事件等才会在基类里添加代码

///普通Controller
class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hexString: MRJColor.hex_mainBackgroundColorString)
    }
}

//push型
class BaseShowTabbarViwController:BaseViewController {

}
class BaseHiddenTabbarViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hidesBottomBarWhenPushed = true
    }
}
//Present型
class BaseModalViewController:BaseViewController
{
    //modal型ViewController
}
///容器型 tabbar

class BaseTabbarViewController: UITabBarController {
    
}
class RootTabbarViewController: BaseTabbarViewController {
    var homeItem: UITabBarItem! = UITabBarItem.init(title: NSString.global_globalString(GlobalLanguage.homeTitle, tableName: GlobalLanguage.homeLocalizeFileName), image: UIImage.init(named: ImageNameMap.homeTabbarNormal)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage.init(named: ImageNameMap.homeTabbarSelected)?.imageWithRenderingMode(.AlwaysOriginal))
    var discoveryItem: UITabBarItem! = UITabBarItem.init(title: NSString.global_globalString(GlobalLanguage.discoveryTitle, tableName: GlobalLanguage.discoveryLocalizeFileName), image: UIImage.init(named: ImageNameMap.discoveryTabbarNormal)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage.init(named: ImageNameMap.discoveryTabbarSelected)?.imageWithRenderingMode(.AlwaysOriginal))
    var reportItem: UITabBarItem! = UITabBarItem.init(title: NSString.global_globalString(GlobalLanguage.reportFormTitle, tableName: GlobalLanguage.reportFormLocalizeFileName), image: UIImage.init(named: ImageNameMap.reportTabbarNormal)?.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage.init(named: ImageNameMap.reportTabbarSelected)?.imageWithRenderingMode(.AlwaysOriginal))
    var aboutItem: UITabBarItem! = UITabBarItem.init(title: NSString.global_globalString(GlobalLanguage.aboutTitle, tableName: GlobalLanguage.aboutLocalizeFileName), image: UIImage.init(named: ImageNameMap.aboutTabbarNormal)!.imageWithRenderingMode(.AlwaysOriginal), selectedImage: UIImage.init(named: ImageNameMap.aboutTabbarSelected)?.imageWithRenderingMode(.AlwaysOriginal))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeNav:HHomeNavigationViewController = HHomeNavigationViewController()
        let discoverNav:DDiscoveryNavigationViewController = DDiscoveryNavigationViewController()
        let reporFormNav:RRepotFormsNavigationViewController  = RRepotFormsNavigationViewController()
        let aboutNav:AAboutNavigationViewController = AAboutNavigationViewController()
        homeNav.tabBarItem = homeItem;
        discoverNav.tabBarItem = discoveryItem;
        reporFormNav.tabBarItem = reportItem
        aboutNav.tabBarItem = aboutItem

        let viewControllers:Array<BaseNavigationViewController> = [homeNav,discoverNav,reporFormNav,aboutNav]
        self.viewControllers = viewControllers

        self.tabBar.tintColor = UIColor(hexString: MRJColor.hex_mainThemeColorString)
        self.tabBarItem .setTitleTextAttributes([NSForegroundColorAttributeName:MRJColor.hex_secondaryTextColorString,NSFontAttributeName:MRJFont.smallTextFont], forState:.Normal)
    }
}
///容器型 navigation
class BaseNavigationViewController:UINavigationController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = UIColor(hexString: MRJColor.hex_mainThemeColorString)
        self.navigationBar.tintColor = UIColor(hexString: MRJColor.hex_navgationTextColorString)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor(hexString:MRJColor.hex_navgationTextColorString),NSFontAttributeName:MRJFont.navigationFont]
    }
}
//四个主要功能模块的Navigation
class HHomeNavigationViewController: BaseNavigationViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [HHomeMainViewController()]
    }
}
class DDiscoveryNavigationViewController: BaseNavigationViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [DDiscoverMainViewController()]
    }
}
class RRepotFormsNavigationViewController: BaseNavigationViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [RRoprtFomsMainViewController()]
    }
}
class AAboutNavigationViewController: BaseNavigationViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [AAboutMainViewController()]
    }
}

