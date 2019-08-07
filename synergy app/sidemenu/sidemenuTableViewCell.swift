//
//  sidemenuTableViewCell.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/26/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class sidemenuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
