//
//  TableViewCell.swift
//  ETHstats
//
//  Created by Nguyễn Minh on 24/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var worker: UILabel!
    @IBOutlet weak var currentHash: UILabel!
    @IBOutlet weak var reportHash: UILabel!
    @IBOutlet weak var averageHash: UILabel!
    @IBOutlet weak var validShare: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setText(_ worker: String, _ current: String, _ report: String, _ averageHash: String, _ validShare: String) {
        self.worker.text = worker
        self.currentHash.text = current
        self.reportHash.text = report
        self.averageHash.text = averageHash
        self.validShare.text = validShare
        
        self.reportHash.textColor = UIColor.green
        self.averageHash.textColor = UIColor.orange
        
    }

}
