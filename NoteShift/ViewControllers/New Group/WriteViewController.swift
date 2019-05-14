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
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM.dd.yyyy HH:mm:ss"
       //let dateFormatter : DateFormatter = DateFormatter()
        //dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        //let date = Date()
        //let dateString = dateFormatter.string(from: date)
        
        
        let result = formatter.string(from: date)
        dateLabel.text = result

        // Do any additional setup after loading the view.
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        if(self.textField.text == ""){
            let alert = UIAlertController(title: "Please enter words into your journal before saving.", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        let alert = UIAlertController(title: "Your Journal Entry Has Been Saved :)", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        self.textField.text = ""
        
        
    }

}
