//
//  chatTableViewCell.swift
//  funchatapp
//
//  Created by GalvanizeChris on 2/8/17.
//  Copyright © 2017 galvanizechris. All rights reserved.
//

import UIKit

class chatTableViewCell: UITableViewCell {

    @IBOutlet var messageText: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        messageText.layer.cornerRadius = 10.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
