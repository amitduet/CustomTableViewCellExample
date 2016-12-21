//
//  UserCustomTableCellTableViewCell.swift
//  DatingAppsTemplate
//
//  Created by Amit Chowdhury on 12/12/16.
//  Copyright © 2016 Amit Chowdhury. All rights reserved.
//

import UIKit

class UserCustomTableCell: UITableViewCell {
    
    @IBOutlet weak var userImageView:UIImageView!
    @IBOutlet weak var userNameLabel:UILabel!
    @IBOutlet weak var userDescriptionTextView:UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.layer.cornerRadius = userImageView.frame.width/2
        userImageView.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
