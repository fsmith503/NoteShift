//
//  ColorHelper.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

//
//  ColorHelper.swift
//  Friend Maps
//
//  Created by  Franklin Smith on 10/11/18.
//  Copyright © 2018  Franklin Smith. All rights reserved.
//


import UIKit

fileprivate let colorMax: CGFloat = 255

public extension UIColor
{
    
    public convenience init(red: Int, green: Int, blue: Int)
    {
        let redFloat = CGFloat(red) / colorMax
        let greenFloat = CGFloat(green) / colorMax
        let blueFloat = CGFloat(blue) / colorMax
        self.init(red: redFloat, green: greenFloat, blue: blueFloat, alpha: 1)
    }
    
    public convenience init(hex: String)
    {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#"))
        {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6)
        {
            self.init()
            return
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
}

