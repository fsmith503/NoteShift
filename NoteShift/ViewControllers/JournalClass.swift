//
//  JournalClass.swift
//  NoteShift
//
//  Created by  Franklin Smith on 5/14/19.
//  Copyright © 2019  Franklin Smith. All rights reserved.
//

import Foundation

import Foundation
final class JournalClass: NSObject {
    // MARK: - Class Variables
    var title: String
    var time: String
    var entry: String
    
    
    // MARK: - Class Initializer
    init(title: String, time: String, entry: String) {
        self.title = title
        self.time = time
        self.entry = entry
        super.init()
    }
}
