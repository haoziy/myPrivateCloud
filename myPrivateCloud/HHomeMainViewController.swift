//
//  HHomeMainViewController.swift
//  myPrivateCloud
//
//  Created by ZEROLEE on 16/3/31.
//  Copyright © 2016年 laomi. All rights reserved.
//

import Foundation

class HHomeMainViewController: BaseShowTabbarViwController,UITableViewDelegate,UITableViewDataSource
{
    lazy var homeTable:UITableView = UITableView()
    var dataSource:NSMutableArray = ["1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = NSString.global_globalString(GlobalLanguage.homeTitle, tableName: GlobalLanguage.homeLocalizeFileName)
        self.createView()
//        self.navigationController?.navigationBar.hidden = true;z
//        UIApplication.sharedApplication().statusBarHidden = true;
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        
    }
    func createView() -> Void {
        homeTable.delegate = self;
        homeTable.dataSource = self;
        self.view.addSubview(homeTable)
        homeTable.backgroundColor = UIColor(hexString: MRJColor.hex_alertColorString)
        homeTable.mas_makeConstraints { (maker:MASConstraintMaker!) in
            maker.center.equalTo()(self.view)
//            maker.width.mas_lessThanOrEqualTo()(MRJSize.screenWith)
            maker.width.mas_equalTo()(MRJSize.screenWith)
            maker.height.mas_equalTo()(MRJSize.screenHeight)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dataSource.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("test");
        if let mycell = cell
        {
            mycell.textLabel?.text = dataSource[indexPath.row] as? String
        }else
        {
            cell = UITableViewCell.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
            cell?.textLabel?.text = dataSource[indexPath.row] as? String
        }
        
        return cell!;
    }
}