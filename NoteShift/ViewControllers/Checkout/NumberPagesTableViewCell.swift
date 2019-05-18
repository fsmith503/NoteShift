//
//  NumberPagesTableViewCell.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/18/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class NumberPagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func stepper(_ sender: UIStepper){
        numberLabel!.text = String(sender.value)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
