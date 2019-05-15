//
//  ObjectHelpers.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import Foundation

public extension NSObject
{
    
    // MARK: - public
    
    public func className() -> String
    {
        return type(of: self).className()
    }
    
    // MARK: - class
    
    public class func className() -> String
    {
        var name = NSStringFromClass(self)
        if name.contains(".")
        {
            let components = name.components(separatedBy: ".")
            if let last = components.last
            {
                name = last
            }
        }
        return name
    }
    
}
