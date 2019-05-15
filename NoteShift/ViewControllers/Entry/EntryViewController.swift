//
//  EntryViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signupButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
//        f
   }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //sleep(3)
//        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
//        self.present(vc, animated: true, completion: nil)
    }


    // MARK: - Button Actions
    
    @IBAction func buttonPressedSignup()
    {
        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func buttonPressedLogin()
    {
        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
}
