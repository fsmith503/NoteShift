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
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    //texfield.secureTextEntry = true

    override func viewDidLoad() {
        super.viewDidLoad()
        //IQKeyboardManager.shared().isEnabled = true
        //self.activityIndicator.isHidden = true
        loginButton.backgroundColor = UIColor.NoteshiftColors.AppBlue
        passwordField.backgroundColor = UIColor.NoteshiftColors.AppBlue
        passwordField.textColor = UIColor.white
        emailField.textColor = UIColor.white
        signupButton.backgroundColor = UIColor.NoteshiftColors.AppBlue
        emailField.backgroundColor = UIColor.NoteshiftColors.AppBlue
        signupButton.layer.cornerRadius = 5
        signupButton.layer.borderWidth = 1
        signupButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.white.cgColor
        emailField.layer.cornerRadius = 5
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.white.cgColor
        passwordField.layer.cornerRadius = 5
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.white.cgColor


        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        passwordField.isSecureTextEntry = true
//        f
   }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.activityIndicator.isHidden = true
        //sleep(3)
//        let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
//        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        // do aditional stuff
    }
    
 


    // MARK: - Button Actions
    
    @IBAction func buttonPressedSignup()
    {
        if emailField.text == "" || passwordField.text == "" {
            let alert = UIAlertController(title: "Username and Password field must have a value.", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        let delay = max(0.0, 2.0)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
            let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonPressedLogin()
    {
        if emailField.text == "" || passwordField.text == "" {
            let alert = UIAlertController(title: "Username and Password field must have a value.", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        let delay = max(0.0, 2.0)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
            let vc = TabBarViewController(nibName: "TabBarViewController", bundle: nil)
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}

extension UIViewController {
    func hideKeyboard1(_ selector: Selector) {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: selector)
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
