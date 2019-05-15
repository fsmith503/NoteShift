//
//  CheckoutViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    @IBOutlet public weak var tableView: UITableView!
    var selectionImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        self.tableView.layoutMargins = UIEdgeInsets.zero;

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

extension CheckoutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // set up cell
        var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
        if cell == nil {
            cell = DeisgnTableViewCell()
            var image: UIImage = UIImage(named: "design1")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.designImage = imageView//UIImage(named: "design1")
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        }
        if indexPath == [0,0]{
            var cell: CheckoutTextTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? CheckoutTextTableViewCell
            if cell == nil {
                cell = CheckoutTextTableViewCell()
            }
            cell?.textLabel?.text = "Select A design"
            cell!.label?.text = "Select A design"
        }
        if indexPath[1] == 1{
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            
            var image: UIImage = UIImage(named: "design1")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.designImage = imageView//UIImage(named: "design1")
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
           
        }
        if indexPath[1] == 2{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design2")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 3{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design3")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 4{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design4")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 5{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design5")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 6{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design6")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 7{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design7")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 8{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design8")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        if indexPath[1] == 9{
            //cell?.textLabel?.text = "Journal Entry 5/13/19 5:00PM"
            var cell: DeisgnTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellId") as? DeisgnTableViewCell
            if cell == nil {
                cell = DeisgnTableViewCell()
            }
            var image: UIImage = UIImage(named: "design9")! // Name of the image that we copied. You don't have to write extension of the image.
            var imageView = UIImageView(image: image)
            cell?.selectionStyle = UITableViewCell.SelectionStyle.none
            //return cell!
        }
        return cell!
        //print("Breaking at the end")
        //cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        //print(indexPath)
        //return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11 //return count of journal entries
    }
}
