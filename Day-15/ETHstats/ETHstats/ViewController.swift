//
//  ViewController.swift
//  ETHstats
//
//  Created by Nguyễn Minh on 24/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        viewModel.getAPI() {
            viewModel in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.workersCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.layer.cornerRadius = cell.frame.height / 2
        
        let name = "\(viewModel.workerModel[indexPath.row].name)"
        let current = "\(viewModel.workerModel[indexPath.row].currentHash) Mh/s"
        let report = "\(viewModel.workerModel[indexPath.row].reportHash) Mh/s"
        let average = "\(viewModel.workerModel[indexPath.row].averageHash) Mh/s"
        let valid = "\(viewModel.workerModel[indexPath.row].validShare)"
        
        cell.setText(name, current, report, average, valid)
        
        return cell
        
    }
    

}
