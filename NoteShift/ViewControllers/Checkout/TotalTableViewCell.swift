//
//  TotalTableViewCell.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/18/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class TotalTableViewCell: UITableViewCell {
    @IBOutlet var payButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        payButton.layer.cornerRadius = 5
        payButton.layer.borderWidth = 1
        payButton.layer.borderColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
