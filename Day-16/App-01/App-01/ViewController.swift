//
//  ViewController.swift
//  App-01
//
//  Created by Nguyễn Minh on 25/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let API_URL = "https://min-api.cryptocompare.com/data/price"
    
    let coinLists = ["BTC","ETH","XRP","BCH","ADA","XLM","LTC","NEO","EOS","XEM"]
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var priceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self
        pickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinLists.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let param: [String: String] = ["fsym": coinLists[row],
                                       "tsyms": "USD"]
        Alamofire.request(API_URL, method: .get, parameters: param).responseJSON() {
            response in
            if response.result.isSuccess {
                let json = JSON(response.result.value!)
                self.updateUI(json)
                pickerView.reloadAllComponents()
            }
            else {
                self.priceLabel.text = "Price unavailable"
            }
        }
    }
        
    func updateUI(_ json: JSON) {
        self.priceLabel.text = "$\(json["USD"])"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinLists[row]
    }

}

