//
//  CustomCollectionViewCell.swift
//  App-02 MVVM
//
//  Created by Nguyễn Minh on 18/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initContent(_ image: String, _ name: String, _ price: Double) {
        productImage.image = UIImage(named: image)
        productImage.layer.borderWidth = 1
        
        productName.text = name
        productPrice.text = "$\(price)"
    }

}
