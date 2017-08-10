//
//  CustomizedCell.swift
//  RuqiiSociety
//
//  Created by abdllah aljohar on 25/07/2017.
//  Copyright © 2017 abdllah aljohar. All rights reserved.
//

import UIKit

class CustomizedCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var DetailsIcon: UIImageView!
    @IBOutlet weak var ChoiceTitle: UILabel!
    @IBOutlet weak var ChoiceIcon: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
