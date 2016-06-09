//
//  LogoCell.swift
//  unicomOASwfit
//
//  Created by zr-mac on 16/6/9.
//  Copyright © 2016年 zr-mac. All rights reserved.
//

import UIKit

class LogoCell: UITableViewCell {

    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundView=UIImageView.init(image: UIImage.init(named: "logoimage.png"))
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
