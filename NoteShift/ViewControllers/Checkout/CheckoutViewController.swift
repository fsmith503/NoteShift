//
//  CheckoutViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit


class CheckoutViewController: UIViewController {


    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "DeisgnTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cellId")
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.tableView.layoutMargins = UIEdgeInsets.zero;
        //self.tableView.contentInset = UIEdgeInsets(top: -20, left: 0, bottom: -20, right: 0);
        self.view.addSubview(self.tableView)
        tableView.separatorColor = UIColor.clear
    }

// MARK: - Helpers for UITableViewDataSource

}


extension CheckoutViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
        //cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        if cell == nil {
            cell = DeisgnTableViewCell()
        }
        if indexPath[1] == 0 {
            var cell: CheckoutTextTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? CheckoutTextTableViewCell
            cell?.label.text = "Select A Design For Your Journal"
            cell?.textLabel!.text = "Select A Design For Your Journal"
            //cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            if cell == nil {
                cell = CheckoutTextTableViewCell()
            }
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell!

        }
        if indexPath[1] == 1 {
        cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
        cell?.designImage?.image = UIImage(named: "design1")
            cell?.checkmarkImage?.isHidden = true
        }
        if indexPath[1] == 2 {
            cell?.designImage?.image = UIImage(named: "design2")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = false
            
        }
        if indexPath[1] == 3 {
            cell?.designImage?.image = UIImage(named: "design3")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 4 {
            cell?.designImage?.image = UIImage(named: "design4")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 5 {
            cell?.designImage?.image = UIImage(named: "design5")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 6 {
            cell?.designImage?.image = UIImage(named: "design6")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 7 {
            cell?.designImage?.image = UIImage(named: "design7")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 8 {
            cell?.designImage?.image = UIImage(named: "design8")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 9 {
            cell?.designImage?.image = UIImage(named: "design9")
            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell?.checkmarkImage?.isHidden = true
            
        }
        cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell!
}



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath[1] == 0 {
           return 50
        }
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("section: \(indexPath.section)")
        //print("row: \(indexPath.row)")
        //let cell:DeisgnTableViewCell = tableView.cellForRow(at: indexPath) as! DeisgnTableViewCell
        //if indexPath[1] == 2{
            //cell.checkmarkImage.isHidden = false
        //}
    }
    


}

