//
//  ProfileViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/15/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var logoutButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        logoutButton.titleLabel?.textColor = UIColor.white
        

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressedLogout()
    {
        let vc = EntryViewController(nibName: "EntryViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }

}
