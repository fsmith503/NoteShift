//
//  JournalsViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class JournalsViewController: UIViewController {
    
    @IBOutlet public weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        //table view
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.NoteshiftColors.AppBlue
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        self.tableView.layoutMargins = UIEdgeInsets.zero;
        tableView.register(UINib(nibName: "JournalTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCellOne")

        // Do any additional setup after loading the view.
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

extension JournalsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // set up cell
        var cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellOne", for: indexPath) as! JournalTableViewCell
        if cell == nil {
            cell = JournalTableViewCell()
        }
        cell.contentView.backgroundColor = UIColor.NoteshiftColors.AppBlue
        //cell.textLabel?.textColor = UIColor.white
        cell.editPic.image = UIImage(named: "edit")
        
        //cell.textLabel?.text = "Journal Entry"
        cell.writing.textColor = UIColor.white
        
        //cell?.textLabel?.text = "Journal Entry"//user1Array[indexPath.row].name
        if indexPath == [0,0]{
            //cell.textLabel?.text = "'My day was fun' 5/15/19 3:00PM"
            cell.writing.text = "'My day was fun' 5/15/19 3:00PM"
        }
        
        if indexPath == [0,1]{
            //cell.textLabel?.text = "'I need a vacation' 5/12/19 4:00PM"
            cell.writing.text = "'I need a vacation' 5/12/19 4:00PM"
            
        }
        if indexPath == [0,2]{
            //cell.textLabel?.text = "'I Miss my family' 5/13/19 5:00PM"
            cell.writing.text = "'I Miss my family' 5/13/19 5:00PM"
        }
        if indexPath == [0,3]{
            //cell.textLabel?.text = "'Today I made a new friend' 5/05/19 1:00PM"
            cell.writing.text = "'Today I made a new friend' 5/05/19 1:00PM"
        }
        if indexPath == [0,4]{
           //cell.textLabel?.text = "'I have so much homework :/' 5/15/19 3:00AM"
            cell.writing.text = "'I have so much homework :/' 5/15/19 3:00AM"
        }
        if indexPath == [0,5]{
            //cell.textLabel?.text = "'I had a great Dinner' 5/19/19 3:30PM"
            cell.writing?.text = "'I had a great Dinner' 5/19/19 3:30PM"
        }
        if indexPath == [0,6]{
            //cell.textLabel?.text = "'I went to a concert' 5/15/19 12:00PM"
            cell.writing?.text = "'I went to a concert' 5/15/19 12:00PM"
        }
        if indexPath == [0,7]{
            //cell.textLabel?.text = "'I studied so much today' 5/15/19 12:00PM"
            cell.writing?.text = "'I studied so much today' 5/15/19 12:00PM"
        }
        if indexPath == [0,8]{
            //cell.textLabel?.text = "'Today I was really happy' 5/15/19 12:00PM"
            cell.writing?.text = "'Today I was really happy' 5/15/19 12:00PM"
        }
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        //print(indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9 //return count of journal entries
    }
}
