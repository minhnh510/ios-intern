//
//  SecondViewController.swift
//  Segue
//
//  Created by Nguyễn Minh on 24/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    var data = ""
    var delegate: CanReceive?
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textLabel.text = data
    }

    @IBAction func pressReturn(_ sender: Any) {
        delegate?.dataReceived(data: field.text!) //pass data to first vc
        dismiss(animated: true, completion: nil)
    }
    
}
