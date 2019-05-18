//
//  CheckoutTextTableViewCell.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit
import Foundation

class CheckoutTextTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        self.label.text = "Select A Design For Your Journal"
        self.label.backgroundColor = UIColor.NoteshiftColors.AppBlue
        super.awakeFromNib()
    }
    
}
