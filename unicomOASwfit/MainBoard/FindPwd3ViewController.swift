//
//  FindPwd3ViewController.swift
//  unicomOASwfit
//
//  Created by zr-mac on 16/5/7.
//  Copyright © 2016年 zr-mac. All rights reserved.
//

import UIKit

class FindPwd3ViewController: UIViewController {

    @IBOutlet weak var btn_Finish: UIBarButtonItem!
    
    override func viewDidLoad() {
      
    }
    //完成找回密码并返回
    @IBAction func FinishTask(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
