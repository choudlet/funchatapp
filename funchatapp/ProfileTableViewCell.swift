//
//  ProfileTableViewCell.swift
//  funchatapp
//
//  Created by GalvanizeChris on 2/11/17.
//  Copyright © 2017 galvanizechris. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    @IBOutlet var cellName: UILabel!
    @IBOutlet var cellImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
