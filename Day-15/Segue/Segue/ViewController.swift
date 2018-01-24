//
//  ViewController.swift
//  Segue
//
//  Created by Nguyễn Minh on 24/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeBackground(_ sender: UIButton) {
        if sender.tag == 0 {
            self.view.backgroundColor = UIColor.red
        }
        if sender.tag == 1 {
            self.view.backgroundColor = UIColor.blue
        }
        
    }
    @IBAction func pressed(_ sender: Any) {
        performSegue(withIdentifier: "secondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = field.text!
            //create sencond view controller object
            secondVC.delegate = self
            
        }
    }
    
    func dataReceived(data: String) {
        //
        label.text = data
    }
    
}

