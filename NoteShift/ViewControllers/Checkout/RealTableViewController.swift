//
//  RealTableViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/18/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//
//
//  CheckoutViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//
import UIKit


class RealTableViewController: UIViewController {
    
@IBOutlet private weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "DeisgnTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cellId")
        self.tableView.layoutMargins = UIEdgeInsets.zero;
        tableView.backgroundColor = UIColor.NoteshiftColors.AppBlue
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.separatorColor = UIColor.clear
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(UINib(nibName: "CheckoutTextTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellOne")
        tableView.register(UINib(nibName: "DesignTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellTwo")
        tableView.register(UINib(nibName: "NumberPagesTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellThree")
        tableView.register(UINib(nibName: "VisaTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellFour")
        tableView.register(UINib(nibName: "TotalTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellFive")
        tableView.register(UINib(nibName: "AddressTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellSix")
        
    }
    
    // MARK: - Helpers for UITableViewDataSource
}


extension RealTableViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
        //cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        if cell == nil {
            cell = DeisgnTableViewCell()
        }
        cell?.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
                if indexPath[1] == 0 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellOne", for: indexPath) as! CheckoutTextTableViewCell
                    cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
                    return cell
                }
        if indexPath[1] == 1 {
            //var cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellOne", for: indexPath) as! CheckoutTextTableViewCell
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellThree", for: indexPath) as! NumberPagesTableViewCell
            cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
            //cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            cell.imageView?.image = nil //UIImage(named: "")
            //cell?.designImage?.image = UIImage(named: "design4")
            //cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            //cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellFour", for: indexPath) as! VisaTableViewCell
            cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
            //cell?.designImage?.image = UIImage(named: "design5")
            //cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            //cell?.checkmarkImage?.isHidden = true
            
        }
        if indexPath[1] == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellSix", for: indexPath) as! AddressTableViewCell
            cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
            //cell?.designImage?.image = UIImage(named: "design6")
            //cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            //cell?.checkmarkImage?.isHidden = true
        }
        if indexPath[1] == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellFive", for: indexPath) as! TotalTableViewCell
            cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
            //cell?.designImage?.image = UIImage(named: "design6")
            //cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
            //cell?.checkmarkImage?.isHidden = true
            
        }
        //if indexPath[1] == 7 {
        //            cell?.designImage?.image = UIImage(named: "design7")
        //            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
        //            cell?.checkmarkImage?.isHidden = true
        //var cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellThree", for: indexPath) as! NumberPagesTableViewCell
        //cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
        
        //}
        //        if indexPath[1] == 8 {
        //            cell?.designImage?.image = UIImage(named: "design8")
        //            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
        //            cell?.checkmarkImage?.isHidden = true
        //
        //        }
        //        if indexPath[1] == 9 {
        //            cell?.designImage?.image = UIImage(named: "design9")
        //            cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
        //            cell?.checkmarkImage?.isHidden = true
        //
        //        }
        //        if indexPath[1] == 10 {
        //            var cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellThree", for: indexPath) as! NumberPagesTableViewCell
        //            //cell?.designImage?.image = UIImage(named: "design9")
        //            //cell?.checkmarkImage?.image = UIImage(named: "checkmark_green")
        //            //cell?.checkmarkImage?.isHidden = true
        //
        //        }
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
        return 8
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
