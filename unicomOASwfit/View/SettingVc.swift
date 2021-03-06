//
//  SettingVc.swift
//  unicomOASwfit
//
//  Created by hnsi-03 on 16/6/2.
//  Copyright © 2016年 zr-mac. All rights reserved.
//

import UIKit

class SettingVc: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.registerNib(UINib(nibName:"LogoCell",bundle: nil), forCellReuseIdentifier: "LogoCell")
        tableview.registerClass(LogoCell.self, forCellReuseIdentifier: "Logocell")
        tableview.registerNib(UINib(nibName: "QuitCell",bundle: nil), forCellReuseIdentifier: "QuitCell")
        tableview.registerClass(QuitCell.self, forCellReuseIdentifier: "QuitCell")
        tableview.delegate=self
        tableview.dataSource=self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section==0) {
            return 1
        }
        else if (section==1) {
            return 2
        }
        else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath.section==0) {
            return 150
        }
        else  {
            return 44
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section != 0) {
            return 10
        }
        else {
            return 0
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier="cellID"
        var cell = tableview.dequeueReusableCellWithIdentifier(identifier)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)
        }
        
        if (indexPath.section == 0) {
            let logocell:LogoCell=tableView.dequeueReusableCellWithIdentifier("LogoCell", forIndexPath: indexPath) as! LogoCell
            //logocell.bgView.image=UIImage.init(named: "logoimage.png")
            logocell.backgroundView=UIImageView.init(image: UIImage.init(named: "logoimage.png"))
            logocell.lbl_name.text="张三"
            logocell.logoView.image=UIImage.init(named: "headLogo.png")
            return logocell
        }
        else if (indexPath.section==1) {
            if (indexPath.row==0) {
                cell?.textLabel?.text="修改密码"
            }
            else {
                cell?.textLabel?.text="清除缓存"
            }
            return cell!
        }
        else {
            let quitCell:QuitCell=tableView.dequeueReusableCellWithIdentifier("QuitCell", forIndexPath: indexPath) as! QuitCell
            return quitCell
        }
        
        
    }
}
