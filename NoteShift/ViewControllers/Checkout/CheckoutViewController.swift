//
//  CheckoutViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit


//fileprivate enum RowsInNoteShift: Int
//{
//
//    case textTitle
//    case photo1
//    case photo2
//    case photo3
//    case photo4
//    case photo5
//    case photo6
//    case photo7
//    case photo8
//    case photo9
//    case _COUNT
//
//    func height() -> CGFloat
//    {
//        switch self
//        {
//        case .textTitle:  return 44.0
//        case .photo1: return 150.0
//        case .photo2: return 150.0
//        case .photo3: return 150.0
//        case .photo4: return 150.0
//        case .photo5: return 150.0
//        case .photo6: return 150.0
//        case .photo7: return 150.0
//        case .photo8: return 150.0
//        case .photo9: return 150.0
//        case ._COUNT: return 0.0
//        default: return 44.0
//        }
//    }
//
//    func title() -> String?
//    {
//        switch self{
//        case .textTitle: return "Choose a Design"
//        case .photo1: return ""
//        case .photo2: return ""
//        case .photo3: return ""
//        case .photo4: return ""
//        case .photo5: return ""
//        case .photo6: return ""
//        case .photo7: return ""
//        case .photo8: return ""
//        case .photo9: return ""
//        case ._COUNT: return nil
//        }
//    }
//
//    func icon() -> UIImage?
//    {
//        switch self
//        {
//        case .textTitle: return nil
//        case .photo1: return UIImage(named: "design1")
//        case .photo2: return UIImage(named: "design2")
//        case .photo3: return UIImage(named: "design3")
//        case .photo4: return UIImage(named: "design4")
//        case .photo5: return UIImage(named: "design5")
//        case .photo6: return UIImage(named: "design6")
//        case .photo7: return UIImage(named: "design7")
//        case .photo8: return UIImage(named: "design8")
//        case .photo9: return UIImage(named: "design9")
//        case ._COUNT: return nil
//        }
//    }
//}

class CheckoutViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        self.tableView.layoutMargins = UIEdgeInsets.zero;
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
        var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
        if cell == nil {
            cell = DeisgnTableViewCell()
        }
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
        return cell!
}



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    


}

