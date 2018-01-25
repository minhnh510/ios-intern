//
//  File.swift
//  ETHstats
//
//  Created by Nguyễn Minh on 24/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import Foundation
class Worker {
    var name: String
    var currentHash: String
    var reportHash: String
    var averageHash: String
    var validShare: String
    
    init(name: String, currentHash: String, reportHash: String, averageHash: String, validShare: String) {
        self.name = name
        self.currentHash = currentHash
        self.reportHash = reportHash
        self.averageHash = averageHash
        self.validShare = validShare
    }
}
