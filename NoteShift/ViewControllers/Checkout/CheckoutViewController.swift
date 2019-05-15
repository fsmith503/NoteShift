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
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        self.tableView.layoutMargins = UIEdgeInsets.zero;
        tableView.dataSource = self
        tableView.delegate = self
        // register cell class
        let nib = UINib(nibName: "DeisgnTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cellId")
        
        //CheckoutTextTableViewCell.registerWith(tableView: tableView)
        //DeisgnTableViewCell.registerWith(tableView: tableView)
        // Do any additional setup after loading the view.
    }

// MARK: - Helpers for UITableViewDataSource

}


extension CheckoutViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // set up cell
        print(indexPath)
        var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
        if cell == nil {
            cell = DeisgnTableViewCell()
        }
        //print(indexPath)
        if indexPath[1] == 0 {
        cell?.imageView?.image = UIImage(named: "design1")
        }
        if indexPath[1] == 1 {
            cell?.imageView?.image = UIImage(named: "design2")
        }
        if indexPath[1] == 2 {
            cell?.imageView?.image = UIImage(named: "design3")
        }
        if indexPath[1] == 3 {
            cell?.imageView?.image = UIImage(named: "design4")
        }
        if indexPath[1] == 4 {
            cell?.imageView?.image = UIImage(named: "design5")
        }
        if indexPath[1] == 5 {
            cell?.imageView?.image = UIImage(named: "design6")
        }
        if indexPath[1] == 6 {
            cell?.imageView?.image = UIImage(named: "design7")
        }
        if indexPath[1] == 7 {
            cell?.imageView?.image = UIImage(named: "design8")
        }
        if indexPath[1] == 8 {
            cell?.imageView?.image = UIImage(named: "design9")
        }
        cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell!
}



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    


}

