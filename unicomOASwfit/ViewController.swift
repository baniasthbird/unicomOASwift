//
//  ViewController.swift
//  unicomOASwfit
//
//  Created by zr-mac on 16/4/5.
//  Copyright © 2016年 zr-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var btn_pwd: UIButton!
    @IBOutlet weak var btn_server: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
        let background=UIImage.init(named: "LoginView.png")
        let bgImageView=UIImageView.init(image: background)
        bgImageView.frame=self.view.frame
        self.view .addSubview(bgImageView)
        self.view.sendSubviewToBack(bgImageView)
        
        btn_login.layer.borderColor=UIColor.whiteColor().CGColor
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Login(sender: AnyObject) {
        let story:UIStoryboard=UIStoryboard.init(name: "Main", bundle: NSBundle.mainBundle())
        let view:UIViewController=story.instantiateViewControllerWithIdentifier("tabMain")
        //无naviagtionController
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    @IBAction func backToMain(segue:UIStoryboardSegue) {
    
    }

}

