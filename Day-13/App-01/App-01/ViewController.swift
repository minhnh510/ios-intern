//
//  ViewController.swift
//  App-01
//
//  Created by Nguyễn Minh on 18/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var petDesc: UILabel!
    @IBOutlet weak var petLegs: UILabel!
    @IBOutlet weak var petName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("Hello world")
        //print("Hello world")
        
        let viewModel = DogViewModel(name: "Alaska")
        petName.text = viewModel.dogName
        petLegs.text = viewModel.dogLeg
        petDesc.text = viewModel.dogNameAndLegs
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

