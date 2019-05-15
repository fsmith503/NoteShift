//
//  TabBarViewController.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var JournalsVC: JournalsViewController?
    //var CalendarVC: CalendarViewController?
    var CheckoutVC: CheckoutViewController?
    var WriteVC: WriteViewController?
    var subviewControllers:[UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.NoteshiftColors.AppBlue

        // Do any additional setup after loading the view.
        
        
        
        
        JournalsVC = JournalsViewController()
        JournalsVC?.title = NSLocalizedString("Journals", comment: "TabNameForMenu")
        JournalsVC?.tabBarItem.title = NSLocalizedString("Journals", comment: "TabNameForMenu")
        JournalsVC?.tabBarItem.image = UIImage(named: "menu_dark")?.withRenderingMode(.alwaysOriginal)
        JournalsVC?.tabBarItem.selectedImage = UIImage(named: "menu_dark")?.withRenderingMode(.alwaysOriginal)
        //bpmenuViewController?.tabBarItem.image = UIImage(named: "menu_dark")?.withRenderingMode(.alwaysOriginal)
        //bpmenuViewController?.tabBarItem.selectedImage = UIImage(named: "menu_selected")?.withRenderingMode(.alwaysOriginal)
        //bpmenuViewController?.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.Bellagios.darkGray], for: .normal)
        

        WriteVC = WriteViewController()
        WriteVC?.title = NSLocalizedString("Write", comment: "TabNameForMenu")
        WriteVC?.tabBarItem.title = NSLocalizedString("Write", comment: "TabNameForMenu")
        WriteVC?.tabBarItem.selectedImage = UIImage(named: "edit")?.withRenderingMode(.alwaysOriginal)
        WriteVC?.tabBarItem.image = UIImage(named: "edit")?.withRenderingMode(.alwaysOriginal)
        
        CheckoutVC = CheckoutViewController()
        CheckoutVC?.title = NSLocalizedString("Checkout", comment: "TabNameForMenu")
        CheckoutVC?.tabBarItem.title = NSLocalizedString("Checkout", comment: "TabNameForMenu")
        CheckoutVC?.tabBarItem.selectedImage = UIImage(named: "credit_card")?.withRenderingMode(.alwaysOriginal)
        CheckoutVC?.tabBarItem.image = UIImage(named: "credit_card")?.withRenderingMode(.alwaysOriginal)
        
        
        
        let JournalNavigationController = JournalsVC
        //subviewControllers.append(JournalNavigationController!)
        //let CalendarNavigationController = CalendarVC
        let CheckoutNavigationController = CheckoutVC
        //subviewControllers.append(CalendarNavigationController!)
        let WriteNavigationController = WriteVC
        //subviewControllers.append(WriteNavigationController!)
        //self.viewControllers = subviewControllers
        subviewControllers.append(WriteNavigationController!)
        subviewControllers.append(JournalNavigationController!)
        subviewControllers.append(CheckoutNavigationController!)
        //subviewControllers.append(CalendarNavigationController!)
        self.viewControllers = subviewControllers
        
        
        
       
        
        
        
        
        
        
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
