//
//  LogoCell.swift
//  unicomOASwfit
//
//  Created by hnsi-03 on 16/6/2.
//  Copyright © 2016年 zr-mac. All rights reserved.
//

import UIKit

class LogoCell: UITableViewCell {

    @IBOutlet weak var logoimage: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var bgView: UIImageView!
    
    override func awakeFromNib() {
         super.awakeFromNib()
        
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
       self.addSubview(logoimage)
       self.addSubview(lbl_name)
       self.addSubview(bgView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
