//
//  WriteViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {
    
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var titleField: UITextField!
    @IBOutlet var textField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM.dd.yyyy HH:mm:ss"
        let result = formatter.string(from: date)
        dateLabel.text = result
        saveButton.layer.cornerRadius = 5
        saveButton.layer.borderWidth = 1
        saveButton.layer.borderColor = UIColor.white.cgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = "Begin Journal Entry Here:)"
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        if(self.textField.text == "" || self.textField.text == "Begin Journal Entry Here:)" || self.titleField.text == "" || self.titleField.text == "Journal Title"){
            let alert = UIAlertController(title: "Please enter words into your title or journal before saving.", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
            let alert = UIAlertController(title: "Your Journal Entry '" + titleField.text! + "' Has Been Saved :)", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        self.textField.text = ""
        self.titleField.text = ""
        }
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
        // do aditional stuff
    }

}
