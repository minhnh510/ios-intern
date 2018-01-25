//
//  ViewModel.swift
//  ETHstats
//
//  Created by Nguyễn Minh on 24/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
import UIKit



class ViewModel {
    
    let API_URL = "https://api.ethermine.org"
    let ADDRESS = "0x1cff966457527683aba0c3148c5caadee8ea9c52"
    
    var workerModel = [Worker]()
    
    var workersCount: Int?
    
    init(){
        //
    }
    
    func getAPI(completion: @escaping (ViewModel?) -> Void) {
        var data: JSON = ""
        let WORKERS_STATS = API_URL + "/miner/" + ADDRESS + "/workers"
        Alamofire.request(WORKERS_STATS, method: .get).responseJSON() {
            response in
            if response.result.isSuccess {
                data = JSON(response.result.value!)["data"]
                self.getJSON(data)
                self.workersCount = self.workerModel.count
                completion(ViewModel.init())
            }
            else {
                print("Can't load API")
            }
        }
    }
    
    func getJSON(_ data: JSON) {
        for worker in data.array! {
            let name = "\(worker["worker"])"
            let currentHash = "\(String(format: "%0.1f", worker["currentHashrate"].double! / 1000000))"
            let reportHash = "\(String(format: "%0.1f", worker["reportedHashrate"].double! / 1000000))"
            let averageHash = "\(String(format: "%0.1f", worker["averageHashrate"].double! / 1000000))"
            let validShare = "\(worker["validShares"])"
            
            let workerTmp = Worker(name: name, currentHash: currentHash, reportHash: reportHash, averageHash: averageHash, validShare: validShare)
            self.workerModel.append(workerTmp)
            //print("init add worker \(name)")
        }
    }
    
    
}
