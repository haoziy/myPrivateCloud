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
    var progressValue:float_t = 0.0
    
    var dataSource:NSMutableArray = ["1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7","1","2","3","4","5","6","7"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = NSString.global_globalString(GlobalLanguage.homeTitle, tableName: GlobalLanguage.homeLocalizeFileName)
        self.createView()
//        MRJProgressHUD.showProgressMessage("test")
//        MRJProgressHUD.showProgresssValue(0.09)
        MRJProgressHUD.showprogressValueAndmessage(0.0, message: "0%")
        
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        self.performSelector(#selector(HHomeMainViewController.test), withObject: nil, afterDelay: 0.1)
    }
    func createView() -> Void {
        homeTable.delegate = self;
        homeTable.dataSource = self;
        self.view.addSubview(homeTable)
        
        homeTable.backgroundColor = UIColor(hexString: MRJColor.hex_alertColorString)
        homeTable.mas_makeConstraints { (make:MASConstraintMaker!) in
//            maker.center.mas_equalTo()(self.view);
//            maker.size.mas_equalTo()(self.view)
            make.edges.equalTo()(self.view).with().insets()(UIEdgeInsetsMake(0, 0,0, 0));

        }
    }
    func test() -> Void {
        progressValue += 0.01;
        let str:String = ""+"\(progressValue*100)"+"%"
        SVProgressHUD.showProgress(progressValue, status: str)
        if (progressValue < 1) {
            self.performSelector(#selector(HHomeMainViewController.test), withObject: nil, afterDelay: 1)
        }else{
            self.performSelector(#selector(HHomeMainViewController.dismiss), withObject: nil, afterDelay: 1)
        }
    }
    func dismiss() -> Void {
        SVProgressHUD .dismiss()
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