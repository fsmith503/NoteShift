//
//  JournalTableViewCell.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class JournalTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var editPic: UIImageView!
    @IBOutlet weak var writing: UILabel!
    
    override func awakeFromNib() {
        self.editPic.image = UIImage(named: "edit")
        //self.label.backgroundColor = UIColor.NoteshiftColors.AppBlue
        super.awakeFromNib()
    }

}



