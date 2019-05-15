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
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    //texfield.secureTextEntry = true

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.activityIndicator.isHidden = true

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        passwordField.isSecureTextEntry = true
//        f
   }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //self.activityIndicator.isHidden = true
        //sleep(3)
//        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
//        self.present(vc, animated: true, completion: nil)
    }


    // MARK: - Button Actions
    
    @IBAction func buttonPressedSignup()
    {
        self.activityIndicator.isHidden = false
        self.activityIndicator.startAnimating()
        //self.activityIndicator.stopAnimating()
        sleep(3)
        self.activityIndicator.stopAnimating()
        self.activityIndicator.isHidden = true
        
        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func buttonPressedLogin()
    {
        self.activityIndicator.isHidden = false
        self.activityIndicator.startAnimating()
        sleep(3)
        self.activityIndicator.stopAnimating()
        self.activityIndicator.isHidden = true
        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
}
