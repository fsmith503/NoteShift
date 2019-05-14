//
//  EntryViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
//        friendsLabel.font = UIFont.MapFriendsFonts.fontLargeTitle
//        friendsLabel.textColor = UIColor.white
//        backButton.titleLabel?.font = UIFont.MapFriendsFonts.fontHeadline
//        backButton.layer.cornerRadius = 5
//        backButton.layer.borderWidth = 1
//        backButton.layer.borderColor = UIColor.white.cgColor
//        addFriendsButton.titleLabel?.font = UIFont.MapFriendsFonts.fontHeadline
//        addFriendsButton.layer.cornerRadius = 5
//        addFriendsButton.layer.borderWidth = 1
//        addFriendsButton.layer.borderColor = UIColor.white.cgColor
   }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        sleep(3)
        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
